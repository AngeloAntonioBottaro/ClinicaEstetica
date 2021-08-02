unit UntEstornaPagamento;

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
  Vcl.ComCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,

  Data.DB,

  FireDAC.Stan.Param,

  UntBase,
  UntBibliotecaFuncoes,
  UntCadastroCliente,
  UntComponentesGerais,
  UntDataModule,
  UntConsultaFornecedor;

type
  TFrmEstornaPagamento = class(TFrmBase)
    GroupBoxBotton: TGroupBox;
    ButtonEstornar: TButton;
    GroupBoxClient: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    LabelNomeFornecedor: TLabel;
    EditCodigoFornecedor: TEdit;
    ButtonConsultar: TButton;
    DateTimePickerInicial: TDateTimePicker;
    DateTimePickerFinal: TDateTimePicker;
    ButtonConsultaFornecedor: TButton;
    RadioButtonVencimento: TRadioButton;
    RadioButtonEmissao: TRadioButton;
    RadioButtonPagamento: TRadioButton;
    DBGridContaPaga: TDBGrid;
    procedure ButtonConsultaFornecedorClick(Sender: TObject);
    procedure ButtonConsultarClick(Sender: TObject);
    procedure ButtonEstornarClick(Sender: TObject);
    procedure EditCodigoFornecedorExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    procedure LimparCampos;
    procedure FecharQuerys;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEstornaPagamento: TFrmEstornaPagamento;

implementation

{$R *.dfm}

{ TFrmEstornaPagamento }

procedure TFrmEstornaPagamento.ButtonConsultaFornecedorClick(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeFornecedor.Caption := '';
      FrmConsultaFornecedor.ShowModal;
    finally
      if not DM.FDQFornecedor.Eof then
      begin
        LabelNomeFornecedor.Caption := DM.FDQFornecedor.FieldByName('NOMEFANTASIA').AsString;
        EditCodigoFornecedor.Text := DM.FDQFornecedor.FieldByName('CODIGO').AsString;
      end;

      EditCodigoFornecedor.SetFocus;
      DM.FDQFornecedor.Close;
    end;
  Except on E:Exception do

  end;
end;

procedure TFrmEstornaPagamento.ButtonConsultarClick(Sender: TObject);
begin
  inherited;
  try
    try
      ButtonEstornar.Enabled := False;

      DM.FDQContaPaga.close;
      DM.FDQContaPaga.SQL.Text := 'SELECT * FROM CONTAPAGA WHERE ';

      if not (EditCodigoFornecedor.Text = EmptyStr) then
      begin
        DM.FDQContaPaga.SQL.Text := DM.FDQContaPaga.SQL.Text + ' FORNECEDOR = :FORNECEDOR AND';
        DM.FDQContaPaga.Params.ParamByName('FORNECEDOR').AsString := EditCodigoFornecedor.Text;
      end;

      if RadioButtonEmissao.Checked then
      begin
        DM.FDQContaPaga.SQL.Text := DM.FDQContaPaga.SQL.Text + ' EMISSAO BETWEEN :DATAINICIAL AND :DATAFINAL ORDER BY EMISSAO, DOCUMENTO ';
      end
      else if RadioButtonVencimento.Checked then
      begin
        DM.FDQContaPaga.SQL.Text := DM.FDQContaPaga.SQL.Text + ' VENCIMENTO BETWEEN :DATAINICIAL AND :DATAFINAL ORDER BY VENCIMENTO, DOCUMENTO ';
      end
      else if RadioButtonPagamento.Checked then
      begin
        DM.FDQContaPaga.SQL.Text := DM.FDQContaPaga.SQL.Text + ' DATAPAGAMENTO BETWEEN :DATAINICIAL AND :DATAFINAL ORDER BY DATAPAGAMENTO, DOCUMENTO ';
      end;

      DM.FDQContaPaga.Params.ParamByName('DATAINICIAL').AsDate :=  StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerInicial.Date));
      DM.FDQContaPaga.Params.ParamByName('DATAFINAL').AsDate :=  StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerFinal.Date));

      DM.FDQContaPaga.Open;

      DBGridContaPaga.Refresh;
      DBGridContaPaga.SetFocus;

      ButtonEstornar.Enabled := True;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmEstornaPagamento.ButtonEstornarClick(Sender: TObject);
var
  I, Codigo, IdCaixa : Integer;
  NomeCampo : string;
begin
  inherited;
  try
    try
      ButtonEstornar.Enabled := False;

      if DM.FDQContaPaga.Eof then
      begin
        Mensagem(2,'Deve-se consultar uma conta para realizar o estorno');
        EditCodigoFornecedor.SetFocus;
        Exit;
      end;

      if Mensagem(4,'O estorno das contas pagas irá alterar o seu caixa diario dos dias respectivos ao pagamento das contas' + sLineBreak + 'Deseja realmente estornar a conta selecionada?') then
      begin
        // Caso for Sim

        // Retirar do contapaga e colocar no contapagar
        DM.FDQContaPagar.Close;
        DM.FDQContaPagar.SQL.Text := 'SELECT * FROM CONTAPAGAR';
        DM.FDQContaPagar.Open;

        // pega os contadores
        DM.FDQContadores.Close;
        DM.FDQContadores.Open;

        // pega o valor do id contapagar
        DM.FDQContadores.Locate('TABELA', 'CONTAPAGAR',[]);
        Codigo := DM.FDQContadores.FieldByName('VALOR').AsInteger +1;

        DM.FDQContaPagar.Insert;

        for I := 0 to (DM.FDQContaPaga.FieldCount - 1) do
        begin
          NomeCampo := DM.FDQContaPaga.Fields[I].FieldName;
          if (DM.FDQContaPagar.FindField(NomeCampo) <> nil) then
            DM.FDQContaPagar.FieldByName(NomeCampo).Value := DM.FDQContaPaga.FieldByName(NomeCampo).Value;
        end;

        DM.FDQContaPagar.FieldByName('CODIGO').AsInteger := Codigo;
        // Verifica os valores para colocar
        DM.FDQContaPagar.FieldByName('VALOR').AsFloat := DM.FDQContaPaga.FieldByName('VALORPAGO').AsFloat;

        DM.FDQContaPagar.Post;

        // Atualiza o contador do contapagar
        DM.FDQContadores.Edit;
        DM.FDQContadores.FieldByName('VALOR').AsInteger := Codigo;
        DM.FDQContadores.Post;

        // Pega o registro do caixa antes de excluir
        IdCaixa := DM.FDQContaPaga.FieldByName('CAIXA').AsInteger;

        DM.FDQContaPaga.Delete;

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

procedure TFrmEstornaPagamento.EditCodigoFornecedorExit(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeFornecedor.Caption := '';

      // Se tiver colocado algum codigo ele pesquisa o cliente
      if not (EditCodigoFornecedor.Text = EmptyStr) then
      begin
        DM.FDQFornecedor.Close;
        DM.FDQFornecedor.SQL.Text := 'SELECT * FROM FORNECEDOR WHERE CODIGO = :CODIGO';
        DM.FDQFornecedor.Params.ParamByName('CODIGO').AsString := EditCodigoFornecedor.Text;
        DM.FDQFornecedor.Open;

        if DM.FDQFornecedor.Eof then
        begin
          Mensagem(1,'Fornecedor Não Encontrado');
          EditCodigoFornecedor.Clear;
          ButtonConsultaFornecedor.SetFocus;
          Exit;
        end
        else
          LabelNomeFornecedor.Caption := DM.FDQFornecedor.FieldByName('NOMEFANTASIA').AsString;

        ButtonConsultar.SetFocus;
      end;
    finally
      DM.FDQFornecedor.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmEstornaPagamento.FecharQuerys;
begin
  try
    try
      DM.FDQCaixa.Close;
      DM.FDQContaPagar.Close;
      DM.FDQContaPaga.Close;
      DM.FDQContadores.Close;
      DM.FDQFornecedor.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmEstornaPagamento.FormClose(Sender: TObject;
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

procedure TFrmEstornaPagamento.FormShow(Sender: TObject);
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

procedure TFrmEstornaPagamento.LimparCampos;
begin
  try
    try
      DateTimePickerInicial.Date := Date;
      DateTimePickerFinal.Date := Date;

      EditCodigoFornecedor.Clear;

      LabelNomeFornecedor.Caption := '';

      RadioButtonPagamento.Checked := True;

      EditCodigoFornecedor.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
