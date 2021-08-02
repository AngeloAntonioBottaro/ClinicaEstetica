unit UntRelatorioContasPagarEntrePeriodo;

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
  Vcl.ComCtrls,

  UntBase,
  UntComponentesGerais,
  UntDataModule,
  UntReportModule,
  UntBibliotecaFuncoes,
  UntConsultaFornecedor;

type
  TFrmRelatorioContasPagarEntrePeriodo = class(TFrmBase)
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
    Label13: TLabel;
    EditCodigoFornecedor: TEdit;
    ButtonConsultaFornecedor: TButton;
    LabelNomeFornecedor: TLabel;
    procedure EditCodigoFornecedorExit(Sender: TObject);
    procedure ButtonConsultaFornecedorClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ButtonGerarRelatorioClick(Sender: TObject);
  private
    procedure Variaveis;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioContasPagarEntrePeriodo: TFrmRelatorioContasPagarEntrePeriodo;

implementation

{$R *.dfm}

procedure TFrmRelatorioContasPagarEntrePeriodo.ButtonConsultaFornecedorClick(
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

procedure TFrmRelatorioContasPagarEntrePeriodo.ButtonGerarRelatorioClick(
  Sender: TObject);
begin
  inherited;
  try
    try
      DMRelatorios.FDQContasPagarEntrePeriodo.Close;
      DMRelatorios.FDQContasPagarEntrePeriodo.SQL.Text := 'SELECT A.*, B.NOMEFANTASIA FROM CONTAPAGAR AS A JOIN FORNECEDOR AS B ON A.FORNECEDOR = B.CODIGO WHERE ';

      // Se tiver o cliente
      if not (EditCodigoFornecedor.Text = EmptyStr)then
      begin
        DMRelatorios.FDQContasPagarEntrePeriodo.SQL.Text := DMRelatorios.FDQContasPagarEntrePeriodo.SQL.Text  + ' A.FORNECEDOR = :FORNECEDOR AND ';
        DMRelatorios.FDQContasPagarEntrePeriodo.Params.ParamByName('FORNECEDOR').AsString := EditCodigoFornecedor.Text;
      end;

      // Pesquisa pelo que estiver marcado e pela data informada
      if RadioButtonEmissao.Checked then
        DMRelatorios.FDQContasPagarEntrePeriodo.SQL.Text := DMRelatorios.FDQContasPagarEntrePeriodo.SQL.Text + 'A.EMISSAO BETWEEN :DATAINICIAL AND :DATAFINAL '
      else
        DMRelatorios.FDQContasPagarEntrePeriodo.SQL.Text := DMRelatorios.FDQContasPagarEntrePeriodo.SQL.Text + 'A.VENCIMENTO BETWEEN :DATAINICIAL AND :DATAFINAL ';

      DMRelatorios.FDQContasPagarEntrePeriodo.Params.ParamByName('DATAINICIAL').AsDate := DateTimePickerInicial.Date;
      DMRelatorios.FDQContasPagarEntrePeriodo.Params.ParamByName('DATAFINAL').AsDate := DateTimePickerfinal.Date;

      // Faz a ordenaçao
      DMRelatorios.FDQContasPagarEntrePeriodo.SQL.Text := DMRelatorios.FDQContasPagarEntrePeriodo.SQL.Text + ' ORDER BY B.NOMEFANTASIA';
      if RadioButtonEmissao.Checked then
        DMRelatorios.FDQContasPagarEntrePeriodo.SQL.Text := DMRelatorios.FDQContasPagarEntrePeriodo.SQL.Text + ', EMISSAO, DOCUMENTO '
      else
        DMRelatorios.FDQContasPagarEntrePeriodo.SQL.Text := DMRelatorios.FDQContasPagarEntrePeriodo.SQL.Text + ', VENCIMENTO, DOCUMENTO';


      DMRelatorios.FDQContasPagarEntrePeriodo.Open;

      if DMRelatorios.FDQContasPagarEntrePeriodo.Eof then
      begin
        Mensagem(1,'Nenhum registro para o periodo informado');
      end
      else
      begin
        // Arruma as variaveis
        Variaveis;

        GerarRelatorio(DMRelatorios.ReportContasPagarEntrePeriodo);
        // Exporta o relatorio em PDF
        ExportarRelatorioPDF(DMRelatorios.ReportContasPagarEntrePeriodo, DMRelatorios.PDFExport);
      end;
    finally
      DMRelatorios.FDQContasPagarEntrePeriodo.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRelatorioContasPagarEntrePeriodo.EditCodigoFornecedorExit(
  Sender: TObject);
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

procedure TFrmRelatorioContasPagarEntrePeriodo.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeFornecedor.Caption := '';
      DateTimePickerInicial.Date := Date;
      DateTimePickerfinal.Date := Date;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRelatorioContasPagarEntrePeriodo.Variaveis;
begin
  try
    try
      // Data
      DMRelatorios.ReportContasPagarEntrePeriodo.Variables['DataInicial'] := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerInicial.Date));
      DMRelatorios.ReportContasPagarEntrePeriodo.Variables['DataFinal'] := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerFinal.Date));

      // Tipo de filtro
      if RadioButtonEmissao.Checked then
        DMRelatorios.ReportContasPagarEntrePeriodo.Variables['TipoPesquisa'] := QuotedStr('EMISSAO')
      else
        DMRelatorios.ReportContasPagarEntrePeriodo.Variables['TipoPesquisa'] := QuotedStr('VENCIMENTO')
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
