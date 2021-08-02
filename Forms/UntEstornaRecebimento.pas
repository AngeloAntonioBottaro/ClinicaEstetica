unit UntEstornaRecebimento;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.ComCtrls,

  Data.DB,

  FireDAC.Stan.Param,

  UntBase,
  UntBibliotecaFuncoes,
  UntCadastroCliente,
  UntComponentesGerais,
  UntDataModule,
  UntConsultaCliente;

type
  TFrmEstornaRecebimento = class(TFrmBase)
    GroupBoxBotton: TGroupBox;
    ButtonEstornar: TButton;
    GroupBoxClient: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    EditCodigoCliente: TEdit;
    ButtonConsultar: TButton;
    DateTimePickerInicial: TDateTimePicker;
    DateTimePickerFinal: TDateTimePicker;
    ButtonConsultaCliente: TButton;
    RadioButtonVencimento: TRadioButton;
    RadioButtonEmissao: TRadioButton;
    RadioButtonPagamento: TRadioButton;
    DBGridContaRecebida: TDBGrid;
    LabelNomeCliente: TLabel;
    procedure ButtonEstornarClick(Sender: TObject);
    procedure ButtonConsultaClienteClick(Sender: TObject);
    procedure ButtonConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditCodigoClienteExit(Sender: TObject);
  private
    procedure LimparCampos;
    procedure FecharQuerys;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEstornaRecebimento: TFrmEstornaRecebimento;

implementation

{$R *.dfm}

procedure TFrmEstornaRecebimento.ButtonConsultaClienteClick(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeCliente.Caption := '';
      FrmConsultaCliente.ShowModal;
    finally
      if not DM.FDQCliente.Eof then
      begin
        LabelNomeCliente.Caption := DM.FDQCliente.FieldByName('NOME').AsString;
        EditCodigoCliente.Text := DM.FDQCliente.FieldByName('CODIGO').AsString;
      end;

      EditCodigoCliente.SetFocus;
      DM.FDQCliente.Close;
    end;
  Except on E:Exception do

  end;
end;

procedure TFrmEstornaRecebimento.ButtonConsultarClick(Sender: TObject);
begin
  inherited;
  try
    try
      ButtonEstornar.Enabled := False;

      DM.FDQContaRecebida.close;
      DM.FDQContaRecebida.SQL.Text := 'SELECT * FROM CONTARECEBIDA WHERE ';

      if not (EditCodigoCliente.Text = EmptyStr) then
      begin
        DM.FDQContaRecebida.SQL.Text := DM.FDQContaRecebida.SQL.Text + ' CLIENTE = :CLIENTE AND';
        DM.FDQContaRecebida.Params.ParamByName('CLIENTE').AsString := EditCodigoCliente.Text;
      end;

      if RadioButtonEmissao.Checked then
      begin
        DM.FDQContaRecebida.SQL.Text := DM.FDQContaRecebida.SQL.Text + ' EMISSAO BETWEEN :DATAINICIAL AND :DATAFINAL ORDER BY EMISSAO, DOCUMENTO ';
      end
      else if RadioButtonVencimento.Checked then
      begin
        DM.FDQContaRecebida.SQL.Text := DM.FDQContaRecebida.SQL.Text + ' VENCIMENTO BETWEEN :DATAINICIAL AND :DATAFINAL ORDER BY VENCIMENTO, DOCUMENTO ';
      end
      else if RadioButtonPagamento.Checked then
      begin
        DM.FDQContaRecebida.SQL.Text := DM.FDQContaRecebida.SQL.Text + ' DATAPAGAMENTO BETWEEN :DATAINICIAL AND :DATAFINAL ORDER BY DATAPAGAMENTO, DOCUMENTO ';
      end;

      DM.FDQContaRecebida.Params.ParamByName('DATAINICIAL').AsDate :=  StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerInicial.Date));
      DM.FDQContaRecebida.Params.ParamByName('DATAFINAL').AsDate :=  StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerFinal.Date));

      DM.FDQContaRecebida.Open;

      DBGridContaRecebida.Refresh;
      DBGridContaRecebida.SetFocus;

      ButtonEstornar.Enabled := True;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmEstornaRecebimento.ButtonEstornarClick(Sender: TObject);
var
  I, Codigo, IdCaixa : Integer;
  NomeCampo : string;
begin
  inherited;
  try
    try
      ButtonEstornar.Enabled := False;

      if DM.FDQContaRecebida.Eof then
      begin
        Mensagem(2,'Deve-se consultar uma conta para realizar o estorno');
        EditCodigoCliente.SetFocus;
        Exit;
      end;

      if Mensagem(4,'O estorno das contas recebidas irá alterar o seu caixa diario dos dias respectivos ao recebimento das contas' + sLineBreak + 'Deseja realmente estornar a conta selecionada?') then
      begin
        // Caso for Sim

        // Retirar do contarecebida e colocar no contareceber
        DM.FDQContaReceber.Close;
        DM.FDQContaReceber.SQL.Text := 'SELECT * FROM CONTARECEBER';
        DM.FDQContaReceber.Open;

        // pega os contadores
        DM.FDQContadores.Close;
        DM.FDQContadores.Open;

        // pega o valor do id contareceber
        DM.FDQContadores.Locate('TABELA', 'CONTARECEBER',[]);
        Codigo := DM.FDQContadores.FieldByName('VALOR').AsInteger +1;

        DM.FDQContaReceber.Insert;
        DM.FDQContaReceber.FieldByName('CODIGO').AsInteger := Codigo;
        for I := 0 to (DM.FDQContaRecebida.FieldCount - 1) do
        begin
          NomeCampo := DM.FDQContaRecebida.Fields[I].FieldName;
          if (DM.FDQContaReceber.FindField(NomeCampo) <> nil) then
            DM.FDQContaReceber.FieldByName(NomeCampo).Value := DM.FDQContaRecebida.FieldByName(NomeCampo).Value;
        end;

        // Verifica os valores para colocar
        DM.FDQContaReceber.FieldByName('VALOR').AsFloat := DM.FDQContaRecebida.FieldByName('VALORRECEBIDO').AsFloat;

        DM.FDQContaReceber.Post;

        // Atualiza o contador do ContaReceber
        DM.FDQContadores.Edit;
        DM.FDQContadores.FieldByName('VALOR').AsInteger := Codigo;
        DM.FDQContadores.Post;

        // Pega o registro do caixa antes de excluir
        IdCaixa := DM.FDQContaRecebida.FieldByName('CAIXA').AsInteger;

        DM.FDQContaRecebida.Delete;

        // Retira do caixa
        DM.FDQCaixa.Close;
        DM.FDQCaixa.SQL.Text := 'SELECT * FROM CAIXA WHERE CODIGO = :CODIGO';
        DM.FDQCaixa.Params.ParamByName('CODIGO').AsInteger := IdCaixa;
        DM.FDQCaixa.Open;

        // Se nao encontrou o registro
        if DM.FDQCaixa.Eof then
        begin
          Mensagem(2,'Registro não encontrado no caixa');
        end
        else
        begin
          DM.FDQCaixa.Delete;
          DM.FDQCaixa.Close;
        end;

        Mensagem(1,'Estorno realizado com sucesso');

        ButtonEstornar.Enabled := True;
      end
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmEstornaRecebimento.EditCodigoClienteExit(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeCliente.Caption := '';

      // Se tiver colocado algum codigo ele pesquisa o cliente
      if not (EditCodigoCliente.Text = EmptyStr) then
      begin
        DM.FDQCliente.Close;
        DM.FDQCliente.SQL.Text := 'SELECT * FROM CLIENTE WHERE CODIGO = :CODIGO';
        DM.FDQCliente.Params.ParamByName('CODIGO').AsString := EditCodigoCliente.Text;
        DM.FDQCliente.Open;

        if DM.FDQCliente.Eof then
        begin
          Mensagem(1,'Cliente Não Encontrado');
          EditCodigoCliente.Clear;
          ButtonConsultaCliente.SetFocus;
          Exit;
        end
        else
          LabelNomeCliente.Caption := DM.FDQCliente.FieldByName('NOME').AsString;

        ButtonConsultar.SetFocus;
      end;
    finally
      DM.FDQCliente.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmEstornaRecebimento.FecharQuerys;
begin
  try
    try
      DM.FDQCaixa.Close;
      DM.FDQContaReceber.Close;
      DM.FDQContaRecebida.Close;
      DM.FDQContadores.Close;
      DM.FDQCliente.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmEstornaRecebimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  try
    try
      FecharQuerys;
      LimparCampos;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmEstornaRecebimento.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      FecharQuerys;
      LimparCampos;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmEstornaRecebimento.LimparCampos;
begin
  try
    try
      DateTimePickerInicial.Date := Date;
      DateTimePickerFinal.Date := Date;

      EditCodigoCliente.Clear;

      LabelNomeCliente.Caption := '';

      RadioButtonPagamento.Checked := True;

      EditCodigoCliente.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
