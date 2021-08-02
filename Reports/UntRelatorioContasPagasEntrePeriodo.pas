unit UntRelatorioContasPagasEntrePeriodo;

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
  UntBibliotecaFuncoes,
  UntComponentesGerais,
  UntReportModule,
  UntConsultaFornecedor,
  UntDataModule;

type
  TFrmContasPagasEntrePeriodo = class(TFrmBase)
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
    GroupBox2: TGroupBox;
    ButtonGerarRelatorio: TButton;
    Label13: TLabel;
    EditCodigoFornecedor: TEdit;
    ButtonConsultaFornecedor: TButton;
    LabelNomeFornecedor: TLabel;
    procedure EditCodigoFornecedorExit(Sender: TObject);
    procedure ButtonConsultaFornecedorClick(Sender: TObject);
    procedure ButtonGerarRelatorioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure Variaveis;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmContasPagasEntrePeriodo: TFrmContasPagasEntrePeriodo;

implementation

{$R *.dfm}

procedure TFrmContasPagasEntrePeriodo.ButtonConsultaFornecedorClick(
  Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeFornecedor.Caption := '';
      FrmConsultaFornecedor.ShowModal;
    finally
      if not (DM.FDQFornecedor.Eof) then
      begin
        EditCodigoFornecedor.Text := DM.FDQFornecedor.FieldByName('CODIGO').AsString;
        LabelNomeFornecedor.Caption := DM.FDQFornecedor.FieldByName('NOMEFANTASIA').AsString;
      end;

      DM.FDQFornecedor.Close;
      EditCodigoFornecedor.SetFocus;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmContasPagasEntrePeriodo.ButtonGerarRelatorioClick(
  Sender: TObject);
begin
  inherited;
  try
    try
      DMRelatorios.FDQContasPagasEntrePeriodo.Close;
      DMRelatorios.FDQContasPagasEntrePeriodo.SQL.Text := 'SELECT A.*, B.NOMEFANTASIA FROM CONTAPAGA AS A JOIN FORNECEDOR AS B ON A.FORNECEDOR = B.CODIGO WHERE ';

      // Se tiver o clinete consulta pelo cliente
      if EditCodigoFornecedor.Text <> EmptyStr then
      begin
        DMRelatorios.FDQContasPagasEntrePeriodo.SQL.Text := DMRelatorios.FDQContasPagasEntrePeriodo.SQL.Text  + ' A.FORNECEDOR = :FORNECEDOR AND ';
        DMRelatorios.FDQContasPagasEntrePeriodo.Params.ParamByName('FORNECEDOR').AsString := EditCodigoFornecedor.Text;
      end;

      // Consulta pelo que esta marcado
      if RadioButtonEmissao.Checked then
        DMRelatorios.FDQContasPagasEntrePeriodo.SQL.Text := DMRelatorios.FDQContasPagasEntrePeriodo.SQL.Text + 'A.EMISSAO BETWEEN :DATAINICIAL AND :DATAFINAL '
      else if RadioButtonVencimento.Checked then
        DMRelatorios.FDQContasPagasEntrePeriodo.SQL.Text := DMRelatorios.FDQContasPagasEntrePeriodo.SQL.Text + 'A.VENCIMENTO BETWEEN :DATAINICIAL AND :DATAFINAL '
      else if RadioButtonPagamento.Checked then
        DMRelatorios.FDQContasPagasEntrePeriodo.SQL.Text := DMRelatorios.FDQContasPagasEntrePeriodo.SQL.Text + 'A.DATAPAGAMENTO BETWEEN :DATAINICIAL AND :DATAFINAL ';

      DMRelatorios.FDQContasPagasEntrePeriodo.Params.ParamByName('DATAINICIAL').AsDate := DateTimePickerInicial.Date;
      DMRelatorios.FDQContasPagasEntrePeriodo.Params.ParamByName('DATAFINAL').AsDate := DateTimePickerfinal.Date;

      // Faz a ordenaçao
      DMRelatorios.FDQContasPagasEntrePeriodo.SQL.Text := DMRelatorios.FDQContasPagasEntrePeriodo.SQL.Text + ' ORDER BY B.NOMEFANTASIA';
      if RadioButtonEmissao.Checked then
        DMRelatorios.FDQContasPagasEntrePeriodo.SQL.Text := DMRelatorios.FDQContasPagasEntrePeriodo.SQL.Text + ', EMISSAO, DOCUMENTO '
      else if RadioButtonVencimento.Checked then
        DMRelatorios.FDQContasPagasEntrePeriodo.SQL.Text := DMRelatorios.FDQContasPagasEntrePeriodo.SQL.Text + ', VENCIMENTO, DOCUMENTO'
      else if RadioButtonPagamento.Checked then
        DMRelatorios.FDQContasPagasEntrePeriodo.SQL.Text := DMRelatorios.FDQContasPagasEntrePeriodo.SQL.Text + ', DATAPAGAMENTO, DOCUMENTO';

      DMRelatorios.FDQContasPagasEntrePeriodo.Open;

      if DMRelatorios.FDQContasPagasEntrePeriodo.Eof then
      begin
        Mensagem(1,'Nenhum registro para o periodo informado');
      end
      else
      begin
        // Arruma as variaveis
        Variaveis;

        GerarRelatorio(DMRelatorios.ReportContasPagasEntrePeriodo);
        // Exporta o relatorio em PDF
        ExportarRelatorioPDF(DMRelatorios.ReportContasPagasEntrePeriodo, DMRelatorios.PDFExport);
      end;
    finally
      DMRelatorios.FDQContasPagasEntrePeriodo.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmContasPagasEntrePeriodo.EditCodigoFornecedorExit(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeFornecedor.Caption := '';

      if not (EditCodigoFornecedor.Text = EmptyStr) then
      begin
        DM.FDQFornecedor.Close;
        DM.FDQFornecedor.SQL.Text := 'SELECT * FROM FORNECEDOR WHERE CODIGO = :CODIGO ';
        DM.FDQFornecedor.Params.ParamByName('CODIGO').AsString := EditCodigoFornecedor.Text;
        DM.FDQFornecedor.Open;

        if DM.FDQFornecedor.Eof then
        begin
          Mensagem(2,'Fornecedor Não Encontrado');
          EditCodigoFornecedor.Clear;
          ButtonConsultaFornecedor.SetFocus;
          DM.FDMTCabeEntrada.FieldByName('FORNECEDOR').AsString := EmptyStr;
          Exit;
        end
        else
        begin
          EditCodigoFornecedor.Text := DM.FDQFornecedor.FieldByName('CODIGO').AsString;
          LabelNomeFornecedor.Caption := DM.FDQFornecedor.FieldByName('NOMEFANTASIA').AsString;
        end;

        DM.FDQFornecedor.Close;
      end
      else
        ButtonConsultaFornecedor.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmContasPagasEntrePeriodo.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      DMRelatorios.FDQContasPagasEntrePeriodo.Close;
      DateTimePickerInicial.Date := Date;
      DateTimePickerfinal.Date := Date;
      EditCodigoFornecedor.Clear;
      LabelNomeFornecedor.Caption := '';
      EditCodigoFornecedor.SetFocus;    
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString); 
  end;
end;

procedure TFrmContasPagasEntrePeriodo.Variaveis;
begin
  try
    try
      // Data
      DMRelatorios.ReportContasPagasEntrePeriodo.Variables['DataInicial'] := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerInicial.Date));
      DMRelatorios.ReportContasPagasEntrePeriodo.Variables['DataFinal'] := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerFinal.Date));

      // Tipo de filtro
      if RadioButtonEmissao.Checked then
        DMRelatorios.ReportContasPagasEntrePeriodo.Variables['TipoPesquisa'] := QuotedStr('EMISSAO')
      else if RadioButtonVencimento.Checked then
        DMRelatorios.ReportContasPagasEntrePeriodo.Variables['TipoPesquisa'] := QuotedStr('VENCIMENTO')
      else
        DMRelatorios.ReportContasPagasEntrePeriodo.Variables['TipoPesquisa'] := QuotedStr('PAGAMENTO')
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
