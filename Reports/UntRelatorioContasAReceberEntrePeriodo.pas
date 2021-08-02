unit UntRelatorioContasAReceberEntrePeriodo;

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
  UntComponentesGerais,
  UntBibliotecaFuncoes;

type
  TFrmRelatorioContasAReceberEntrePeriodo = class(TFrmBase)
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePickerInicial: TDateTimePicker;
    DateTimePickerfinal: TDateTimePicker;
    GroupBox4: TGroupBox;
    RadioButtonEmissao: TRadioButton;
    RadioButtonVencimento: TRadioButton;
    GroupBox2: TGroupBox;
    ButtonGerarRelatorio: TButton;
    Label3: TLabel;
    LabelNomeCliente: TLabel;
    EditCodigoCliente: TEdit;
    ButtonConsultaCliente: TButton;
    procedure EditCodigoClienteExit(Sender: TObject);
    procedure ButtonConsultaClienteClick(Sender: TObject);
    procedure ButtonGerarRelatorioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure Variaveis;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioContasAReceberEntrePeriodo: TFrmRelatorioContasAReceberEntrePeriodo;

implementation

{$R *.dfm}

procedure TFrmRelatorioContasAReceberEntrePeriodo.ButtonConsultaClienteClick(
  Sender: TObject);
begin
  inherited;
  try
    try
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

procedure TFrmRelatorioContasAReceberEntrePeriodo.ButtonGerarRelatorioClick(
  Sender: TObject);
begin
  inherited;
  try
    try
      DMRelatorios.FDQContaReceberEntrePeriodo.Close;
      DMRelatorios.FDQContaReceberEntrePeriodo.SQL.Text := 'SELECT A.*, B.NOME FROM CONTARECEBER AS A JOIN CLIENTE AS B ON A.CLIENTE = B.CODIGO WHERE ';

      // Se tiver o cliente
      if not (EditCodigoCliente.Text = EmptyStr)then
      begin
        DMRelatorios.FDQContaReceberEntrePeriodo.SQL.Text := DMRelatorios.FDQContaReceberEntrePeriodo.SQL.Text  + ' A.CLIENTE = :CLIENTE AND ';
        DMRelatorios.FDQContaReceberEntrePeriodo.Params.ParamByName('CLIENTE').AsString := EditCodigoCliente.Text;
      end;

      // Pesquisa pelo que estiver marcado e pela data informada
      if RadioButtonEmissao.Checked then
        DMRelatorios.FDQContaReceberEntrePeriodo.SQL.Text := DMRelatorios.FDQContaReceberEntrePeriodo.SQL.Text + 'A.EMISSAO BETWEEN :DATAINICIAL AND :DATAFINAL '
      else
        DMRelatorios.FDQContaReceberEntrePeriodo.SQL.Text := DMRelatorios.FDQContaReceberEntrePeriodo.SQL.Text + 'A.VENCIMENTO BETWEEN :DATAINICIAL AND :DATAFINAL ';

      DMRelatorios.FDQContaReceberEntrePeriodo.Params.ParamByName('DATAINICIAL').AsDate := DateTimePickerInicial.Date;
      DMRelatorios.FDQContaReceberEntrePeriodo.Params.ParamByName('DATAFINAL').AsDate := DateTimePickerfinal.Date;

      // Faz a ordenaçao
      DMRelatorios.FDQContaReceberEntrePeriodo.SQL.Text := DMRelatorios.FDQContaReceberEntrePeriodo.SQL.Text + ' ORDER BY B.NOME';
      if RadioButtonEmissao.Checked then
        DMRelatorios.FDQContaReceberEntrePeriodo.SQL.Text := DMRelatorios.FDQContaReceberEntrePeriodo.SQL.Text + ', EMISSAO, DOCUMENTO '
      else
        DMRelatorios.FDQContaReceberEntrePeriodo.SQL.Text := DMRelatorios.FDQContaReceberEntrePeriodo.SQL.Text + ', VENCIMENTO, DOCUMENTO';


      DMRelatorios.FDQContaReceberEntrePeriodo.Open;

      if DMRelatorios.FDQContaReceberEntrePeriodo.Eof then
      begin
        Mensagem(1,'Nenhum registro para o periodo informado');
      end
      else
      begin
        // Arruma as variaveis
        Variaveis;

        GerarRelatorio(DMRelatorios.ReportContasAReceberEntrePeriodo);
        // Exporta o relatorio em PDF
        ExportarRelatorioPDF(DMRelatorios.ReportContasAReceberEntrePeriodo, DMRelatorios.PDFExport);
      end;
    finally
      DMRelatorios.FDQContaReceberEntrePeriodo.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRelatorioContasAReceberEntrePeriodo.EditCodigoClienteExit(
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

procedure TFrmRelatorioContasAReceberEntrePeriodo.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      DMRelatorios.FDQContaReceberEntrePeriodo.Close;
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

procedure TFrmRelatorioContasAReceberEntrePeriodo.Variaveis;
begin
  try
    try
      // Data
      DMRelatorios.ReportContasAReceberEntrePeriodo.Variables['DataInicial'] := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerInicial.Date));
      DMRelatorios.ReportContasAReceberEntrePeriodo.Variables['DataFinal'] := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerFinal.Date));

      // Tipo de filtro
      if RadioButtonEmissao.Checked then
        DMRelatorios.ReportContasAReceberEntrePeriodo.Variables['TipoPesquisa'] := QuotedStr('EMISSAO')
      else
        DMRelatorios.ReportContasAReceberEntrePeriodo.Variables['TipoPesquisa'] := QuotedStr('VENCIMENTO')
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
