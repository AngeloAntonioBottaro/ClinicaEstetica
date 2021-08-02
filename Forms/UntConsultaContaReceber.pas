unit UntConsultaContaReceber;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,

  FireDAC.Stan.Param,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.ComCtrls,

  UntBase,
  UntConsultaCliente,
  UntDataModule,
  UntBibliotecaFuncoes,

  Data.DB;

type
  TFrmConsultaContaReceber = class(TFrmBase)
    GroupBoxHeader: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EditCodigoCliente: TEdit;
    ButtonConsultar: TButton;
    DateTimePickerInicial: TDateTimePicker;
    DateTimePickerFinal: TDateTimePicker;
    ButtonConsultaCliente: TButton;
    GroupBoxGrid: TGroupBox;
    DBGridContaReceber: TDBGrid;
    GroupBoxFooter: TGroupBox;
    ButtonFechar: TButton;
    RadioButtonEmissao: TRadioButton;
    RadioButtonVencimento: TRadioButton;
    ButtonExcluirConta: TButton;
    LabelNomeCliente: TLabel;
    procedure FormShow(Sender: TObject);
    procedure ButtonConsultaClienteClick(Sender: TObject);
    procedure ButtonConsultarClick(Sender: TObject);
    procedure ButtonExcluirContaClick(Sender: TObject);
    procedure ButtonFecharClick(Sender: TObject);
    procedure EditCodigoClienteExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaContaReceber: TFrmConsultaContaReceber;

implementation

{$R *.dfm}

procedure TFrmConsultaContaReceber.ButtonConsultaClienteClick(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeCliente.Caption := '';
      FrmConsultaCliente.ShowModal;
    finally
      if not (DM.FDQCliente.State in [dsInactive]) then
      begin
        EditCodigoCliente.Text := DM.FDQCliente.FieldByName('CODIGO').AsString;
        LabelNomeCliente.Caption := DM.FDQCliente.FieldByName('NOME').AsString;
      end;
      // Volta o foco para o campo
      EditCodigoCliente.SetFocus;
      DM.FDQCliente.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaContaReceber.ButtonConsultarClick(Sender: TObject);
begin
  inherited;
  try
    try
      DM.FDQContaReceber.close;
      DM.FDQContaReceber.SQL.Text := 'SELECT * FROM CONTARECEBER WHERE ';

      // Se tiver o cliente ele pesquisa
      if not (EditCodigoCliente.Text = EmptyStr) then
      begin
        DM.FDQContaReceber.SQL.Text := DM.FDQContaReceber.SQL.Text + 'CLIENTE = :CLIENTE AND ';
        DM.FDQContaReceber.Params.ParamByName('CLIENTE').AsString := EditCodigoCliente.Text;
      end;

      // Pesquisa pelo que estiver marcado
      if RadioButtonEmissao.Checked then
      begin
        DM.FDQContaReceber.SQL.Text := DM.FDQContaReceber.SQL.Text + ' EMISSAO BETWEEN :DATAINICIAL AND :DATAFINAL ORDER BY EMISSAO';
      end
      else if RadioButtonVencimento.Checked then
      begin
        DM.FDQContaReceber.SQL.Text := DM.FDQContaReceber.SQL.Text + ' VENCIMENTO BETWEEN :DATAINICIAL AND :DATAFINAL ORDER BY VENCIMENTO';
      end;

      DM.FDQContaReceber.Params.ParamByName('DATAINICIAL').AsDate :=  StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerInicial.Date));
      DM.FDQContaReceber.Params.ParamByName('DATAFINAL').AsDate :=  StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerFinal.Date));

      DM.FDQContaReceber.Open;

      DBGridContaReceber.Refresh;
      DBGridContaReceber.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaContaReceber.ButtonExcluirContaClick(Sender: TObject);
var
  I, Codigo : Integer;
  NomeCampo : string;
begin
  inherited;
  try
    try
      // Verifica Se consultou algum registro
      if DM.FDQContaReceber.Eof then
      begin
        Mensagem(2,'Deve-se consultar uma conta');
        Exit;
      end;

      if Mensagem(4,'Deseja excluir o registro selecionado?') then
      begin
        // Comandos para Sim

        // Verifica se foi selecionado alguma conta
        if not DM.FDQContaReceber.Eof then
        begin
          // Salva os Dados das Contas Excluidas
          DM.FDQContaExcluida.Close;
          DM.FDQContaExcluida.SQL.Text := 'SELECT * FROM CONTAEXCLUIDA';
          DM.FDQContaExcluida.Open;

          DM.FDQContaExcluida.Insert;

          // pega os contadores
          DM.FDQContadores.Close;
          DM.FDQContadores.Open;

          // pega o valor do id contarecebida
          DM.FDQContadores.Locate('TABELA', 'CONTAEXCLUIDA',[]);
          Codigo := DM.FDQContadores.FieldByName('VALOR').AsInteger +1;

          for I := 0 to (DM.FDQContaReceber.FieldCount - 1) do
          begin
            NomeCampo := DM.FDQContaReceber.Fields[I].FieldName;

            if (DM.FDQContaExcluida.FindField(NomeCampo) <> nil) then
              DM.FDQContaExcluida.FieldByName(NomeCampo).Value := DM.FDQContaReceber.FieldByName(NomeCampo).Value;
          end;

          DM.FDQContaExcluida.FieldByName('CODIGO').AsInteger := Codigo;

          // Atualiza o contador do ContaExcluida
          DM.FDQContadores.Edit;
          DM.FDQContadores.FieldByName('VALOR').AsInteger := Codigo;
          DM.FDQContadores.Post;
          DM.FDQContadores.Close;

          DM.FDQContaExcluida.FieldByName('DATAEXCLUSAO').AsDateTime := Now;

          DM.FDQContaExcluida.Post;

          // Deleta o registro do contas a receber
          DM.FDQContaReceber.Delete;

          DM.FDQContaExcluida.Close;

          ButtonConsultarClick(Sender);

          Mensagem(1,'Conta excluida com sucesso');
        end
        else
        begin
          Mensagem(1,'Nenhuma conta selecionada');
        end;
      end
      else
      begin
        // Comandos para Nao
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaContaReceber.ButtonFecharClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmConsultaContaReceber.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaContaReceber.EditCodigoClienteExit(Sender: TObject);
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
        end
        else
        begin
          LabelNomeCliente.Caption := DM.FDQCliente.FieldByName('NOME').AsString;
        end;
      end;
    finally
      DM.FDQCliente.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaContaReceber.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeCliente.Caption := '';
      // Seta as datas para dia atual
      DateTimePickerInicial.Date := Date;
      DateTimePickerFinal.Date := Date;

      DM.FDQContaReceber.Close;
      DM.FDQCliente.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
