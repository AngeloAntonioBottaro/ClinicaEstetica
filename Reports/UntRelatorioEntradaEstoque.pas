unit UntRelatorioEntradaEstoque;

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

  FireDac.Stan.Param,

  UntBase,
  UntDataModule,
  UntReportModule,
  UntBibliotecaFuncoes,
  UntComponentesGerais;

type
  TFrmRelatorioEntradaEstoque = class(TFrmBase)
    GroupBox1: TGroupBox;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePickerInicial: TDateTimePicker;
    DateTimePickerfinal: TDateTimePicker;
    ComboBoxStatus: TComboBox;
    GroupBox4: TGroupBox;
    GroupBox2: TGroupBox;
    RadioButtonDataCompra: TRadioButton;
    RadioButtonDataRecebimento: TRadioButton;
    RadioButtonDataLancamento: TRadioButton;
    ButtonGerarRelatorio: TButton;
    procedure FormShow(Sender: TObject);
    procedure ButtonGerarRelatorioClick(Sender: TObject);
  private
    procedure Variaveis;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioEntradaEstoque: TFrmRelatorioEntradaEstoque;

implementation

{$R *.dfm}

procedure TFrmRelatorioEntradaEstoque.ButtonGerarRelatorioClick(
  Sender: TObject);
begin
  inherited;
  try
    try
      DMRelatorios.FDQEntradaEstoque.Close;
      DMRelatorios.FDQEntradaEstoque.SQL.Text := 'SELECT A.*, B.*,  D.DESCRICAO AS DESCRIFORMAPAGTO FROM ' +
      'CABEENTRADA AS A '+
      'JOIN ENTRADA AS B ON A.CODIGO = B.CABEENTRADA '+
      'JOIN FORMAPAGTO AS D ON A.FORMAPAGTO = D.CODIGO WHERE ';

      // Se especificar o status ele coloca
      if not (Copy(ComboBoxStatus.Text,0,1) = 'T') then
      begin
        DMRelatorios.FDQEntradaEstoque.SQL.Text := DMRelatorios.FDQEntradaEstoque.SQL.Text  + ' A.STATUS = :STATUS AND ';
        DMRelatorios.FDQEntradaEstoque.Params.ParamByName('STATUS').AsString := Copy(ComboBoxStatus.Text,0,1);
      end;

      // Pesquisa pelo tipo que estiver selecionado
      if RadioButtonDataCompra.Checked then
      begin
        DMRelatorios.FDQEntradaEstoque.SQL.Text := DMRelatorios.FDQEntradaEstoque.SQL.Text  + ' DATACOMPRA BETWEEN :DATAINICIAL AND :DATAFINAL ORDER BY DATACOMPRA, A.CODIGO, B.NUMEROITEM  ';
      end
      else if RadioButtonDataRecebimento.Checked then
      begin
        DMRelatorios.FDQEntradaEstoque.SQL.Text := DMRelatorios.FDQEntradaEstoque.SQL.Text  + ' DATARECEBIMENTO BETWEEN :DATAINICIAL AND :DATAFINAL ORDER BY DATARECEBIMENTO, A.CODIGO, B.NUMEROITEM  ';
      end
      else if RadioButtonDataLancamento.Checked then
      begin
        DMRelatorios.FDQEntradaEstoque.SQL.Text := DMRelatorios.FDQEntradaEstoque.SQL.Text  + ' DATALANCAMENTO BETWEEN :DATAINICIAL AND :DATAFINAL ORDER BY DATALANCAMENTO, A.CODIGO, B.NUMEROITEM  ';
      end;
      DMRelatorios.FDQEntradaEstoque.Params.ParamByName('DATAINICIAL').AsDate := DateTimePickerInicial.Date;
      DMRelatorios.FDQEntradaEstoque.Params.ParamByName('DATAFINAL').AsDate := DateTimePickerfinal.Date;

      DMRelatorios.FDQEntradaEstoque.Open;

      if DMRelatorios.FDQEntradaEstoque.Eof then
      begin
        Mensagem(1,'Nenhum registro para o periodo informado');
      end
      else
      begin
        // Arrumar Variaveis
        Variaveis;

        GerarRelatorio(DMRelatorios.ReportEntradaEstoque);
        // Exporta o relatorio em PDF
        ExportarRelatorioPDF(DMRelatorios.ReportEntradaEstoque, DMRelatorios.PDFExport);
      end;
    finally
      DMRelatorios.FDQEntradaEstoque.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRelatorioEntradaEstoque.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      DateTimePickerInicial.Date := Date;
      DateTimePickerfinal.Date := Date;
      ComboBoxStatus.ItemIndex := 0;
      DateTimePickerInicial.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRelatorioEntradaEstoque.Variaveis;
begin
  try
    try
      DMRelatorios.ReportEntradaEstoque.Variables['DataInicial'] := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerInicial.Date));
      DMRelatorios.ReportEntradaEstoque.Variables['DataFinal'] := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerFinal.Date));
      DMRelatorios.ReportEntradaEstoque.Variables['Status'] := QuotedStr(Copy(ComboBoxStatus.Text,0,1));
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
