unit UntRelatorioContasRecebidasEntrePeriodo;

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
  Vcl.StdCtrls,
  Vcl.ComCtrls,

  FireDAC.Stan.Param,

  UntBase,
  UntDataModule,
  UntReportModule,
  UntConsultaCliente,
  UntBibliotecaFuncoes,
  UntComponentesGerais;

type
  TFrmRelatorioContasRecebidasEntrePeriodo = class(TFrmBase)
    GroupBox2: TGroupBox;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePickerInicial: TDateTimePicker;
    DateTimePickerfinal: TDateTimePicker;
    GroupBox4: TGroupBox;
    RadioButtonEmissao: TRadioButton;
    RadioButtonVencimento: TRadioButton;
    RadioButtonPagamento: TRadioButton;
    Label3: TLabel;
    LabelNomeCliente: TLabel;
    EditCodigoCliente: TEdit;
    ButtonConsultaCliente: TButton;
    ButtonGerarRelatorio: TButton;
    procedure ButtonConsultaClienteClick(Sender: TObject);
    procedure EditCodigoClienteExit(Sender: TObject);
    procedure ButtonGerarRelatorioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure Variaveis;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioContasRecebidasEntrePeriodo: TFrmRelatorioContasRecebidasEntrePeriodo;

implementation

{$R *.dfm}

procedure TFrmRelatorioContasRecebidasEntrePeriodo.ButtonConsultaClienteClick(
  Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeCliente.Caption := '';
      // Abre a consulta de cliente
      FrmConsultaCliente.ShowModal;
    finally
      // Se tiver pesquisado algum cliente
      if not (DM.FDQCliente.Eof) then
      begin
        EditCodigoCliente.Text := DM.FDQCliente.FieldByName('CODIGO').AsString;
        LabelNomeCliente.Caption := DM.FDQCliente.FieldByName('NOME').AsString;
        ButtonGerarRelatorio.SetFocus;
      end;

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRelatorioContasRecebidasEntrePeriodo.ButtonGerarRelatorioClick(
  Sender: TObject);
begin
  inherited;
  try
    try
      DMRelatorios.FDQContaRecebidaEntrePeriodo.Close;
      DMRelatorios.FDQContaRecebidaEntrePeriodo.SQL.Text := 'SELECT A.*, B.NOME FROM CONTARECEBIDA AS A JOIN CLIENTE AS B ON A.CLIENTE = B.CODIGO WHERE ';

      // Se tiver o clinete consulta pelo cliente
      if EditCodigoCliente.Text <> EmptyStr then
      begin
        DMRelatorios.FDQContaRecebidaEntrePeriodo.SQL.Text := DMRelatorios.FDQContaRecebidaEntrePeriodo.SQL.Text  + ' A.CLIENTE = :CLIENTE AND ';
        DMRelatorios.FDQContaRecebidaEntrePeriodo.Params.ParamByName('CLIENTE').AsString := EditCodigoCliente.Text;
      end;

      // Consulta pelo que esta marcado
      if RadioButtonEmissao.Checked then
        DMRelatorios.FDQContaRecebidaEntrePeriodo.SQL.Text := DMRelatorios.FDQContaRecebidaEntrePeriodo.SQL.Text + 'A.EMISSAO BETWEEN :DATAINICIAL AND :DATAFINAL '
      else if RadioButtonVencimento.Checked then
        DMRelatorios.FDQContaRecebidaEntrePeriodo.SQL.Text := DMRelatorios.FDQContaRecebidaEntrePeriodo.SQL.Text + 'A.VENCIMENTO BETWEEN :DATAINICIAL AND :DATAFINAL '
      else if RadioButtonPagamento.Checked then
        DMRelatorios.FDQContaRecebidaEntrePeriodo.SQL.Text := DMRelatorios.FDQContaRecebidaEntrePeriodo.SQL.Text + 'A.DATAPAGAMENTO BETWEEN :DATAINICIAL AND :DATAFINAL ';

      DMRelatorios.FDQContaRecebidaEntrePeriodo.Params.ParamByName('DATAINICIAL').AsDate := DateTimePickerInicial.Date;
      DMRelatorios.FDQContaRecebidaEntrePeriodo.Params.ParamByName('DATAFINAL').AsDate := DateTimePickerfinal.Date;

      // Faz a ordenaçao
      DMRelatorios.FDQContaRecebidaEntrePeriodo.SQL.Text := DMRelatorios.FDQContaRecebidaEntrePeriodo.SQL.Text + ' ORDER BY B.NOME';
      if RadioButtonEmissao.Checked then
        DMRelatorios.FDQContaRecebidaEntrePeriodo.SQL.Text := DMRelatorios.FDQContaRecebidaEntrePeriodo.SQL.Text + ', EMISSAO, DOCUMENTO '
      else if RadioButtonVencimento.Checked then
        DMRelatorios.FDQContaRecebidaEntrePeriodo.SQL.Text := DMRelatorios.FDQContaRecebidaEntrePeriodo.SQL.Text + ', VENCIMENTO, DOCUMENTO'
      else if RadioButtonPagamento.Checked then
        DMRelatorios.FDQContaRecebidaEntrePeriodo.SQL.Text := DMRelatorios.FDQContaRecebidaEntrePeriodo.SQL.Text + ', DATAPAGAMENTO, DOCUMENTO';

      DMRelatorios.FDQContaRecebidaEntrePeriodo.Open;

      if DMRelatorios.FDQContaRecebidaEntrePeriodo.Eof then
      begin
        Mensagem(1,'Nenhum registro para o periodo informado');
      end
      else
      begin
        // Arruma as variaveis
        Variaveis;

        GerarRelatorio(DMRelatorios.ReportContasRecebidasEntrePeriodo);
        // Exporta o relatorio em PDF
        ExportarRelatorioPDF(DMRelatorios.ReportContasRecebidasEntrePeriodo, DMRelatorios.PDFExport);
      end;
    finally
      DMRelatorios.FDQContaRecebidaEntrePeriodo.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRelatorioContasRecebidasEntrePeriodo.EditCodigoClienteExit(
  Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeCliente.Caption := '';
      // Se nao tiver informado o cliente ele foca o botao de consulta  senao foca a consulta de produto
      if not (EditCodigoCliente.Text = EmptyStr) then
      begin
          DM.FDQCliente.Close;
          DM.FDQCliente.SQL.Text := 'SELECT * FROM CLIENTE WHERE CODIGO = :CODIGO';
          DM.FDQCliente.Params.ParamByName('CODIGO').AsString := EditCodigoCliente.Text;
          DM.FDQCliente.Open;

          // Se nao encontrou o cliente
          if DM.FDQCliente.Eof then
          begin
            Mensagem(2,'Cliente não encontrado');
            EditCodigoCliente.Clear;
            EditCodigoCliente.SetFocus;
          end
          else
          begin
            // Se tiver algum cliente inclui o nome dele
            LabelNomeCliente.Caption := DM.FDQCliente.FieldByName('NOME').AsString;
          end;
          ButtonGerarRelatorio.SetFocus;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRelatorioContasRecebidasEntrePeriodo.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      DMRelatorios.FDQContaRecebidaEntrePeriodo.Close;
      DateTimePickerInicial.Date := Date;
      DateTimePickerfinal.Date := Date;
      EditCodigoCliente.Clear;
      LabelNomeCliente.Caption := '';
      EditCodigoCliente.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRelatorioContasRecebidasEntrePeriodo.Variaveis;
begin
  try
    try
      // Data
      DMRelatorios.ReportContasRecebidasEntrePeriodo.Variables['DataInicial'] := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerInicial.Date));
      DMRelatorios.ReportContasRecebidasEntrePeriodo.Variables['DataFinal'] := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerFinal.Date));

      // Tipo de filtro
      if RadioButtonEmissao.Checked then
        DMRelatorios.ReportContasRecebidasEntrePeriodo.Variables['TipoPesquisa'] := QuotedStr('EMISSAO')
      else if RadioButtonVencimento.Checked then
        DMRelatorios.ReportContasRecebidasEntrePeriodo.Variables['TipoPesquisa'] := QuotedStr('VENCIMENTO')
      else
        DMRelatorios.ReportContasRecebidasEntrePeriodo.Variables['TipoPesquisa'] := QuotedStr('PAGAMENTO')
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
