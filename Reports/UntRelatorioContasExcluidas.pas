unit UntRelatorioContasExcluidas;

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

  UntBase,
  UntBibliotecaFuncoes,
  UntReportModule,
  UntComponentesGerais;

type
  TFrmContasExcluidas = class(TFrmBase)
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePickerInicial: TDateTimePicker;
    DateTimePickerFinal: TDateTimePicker;
    GroupBox2: TGroupBox;
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
  FrmContasExcluidas: TFrmContasExcluidas;

implementation

{$R *.dfm}

procedure TFrmContasExcluidas.ButtonGerarRelatorioClick(Sender: TObject);
begin
  inherited;
  try
    try
      DMRelatorios.FDQContasExcluidas.Close;
      DMRelatorios.FDQContasExcluidas.SQL.Text := 'SELECT A.*, B.NOME, C.NOMEFANTASIA FROM CONTAEXCLUIDA AS A LEFT JOIN CLIENTE AS B ON A.CLIENTE = B.CODIGO LEFT JOIN FORNECEDOR AS C ON A.FORNECEDOR = C.CODIGO WHERE DATAEXCLUSAO BETWEEN :DATAINICIAL AND :DATAFINAL ORDER BY DATAEXCLUSAO';
      DMRelatorios.FDQContasExcluidas.Params.ParamByName('DATAINICIAL').AsDate := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerInicial.Date));
      DMRelatorios.FDQContasExcluidas.Params.ParamByName('DATAFINAL').AsDate := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerFinal.Date));
      DMRelatorios.FDQContasExcluidas.Open;

      if DMRelatorios.FDQContasExcluidas.Eof then
      begin
        Mensagem(1,'Nenhum registro para o periodo informado');
      end
      else
      begin
        // Arruma as Variavies
        Variaveis;

        GerarRelatorio(DMRelatorios.ReportContasExcluidas);
        // Exporta o relatorio em PDF
        ExportarRelatorioPDF(DMRelatorios.ReportContasExcluidas, DMRelatorios.PDFExport);
      end;
    finally
      DMRelatorios.FDQContasExcluidas.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmContasExcluidas.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      DateTimePickerInicial.Date := Date;
      DateTimePickerFinal.Date := Date;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmContasExcluidas.Variaveis;
begin
  try
    try
      // Periodo pesquisado
      DMRelatorios.ReportContasExcluidas.Variables['DataInicial'] := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerInicial.Date));
      DMRelatorios.ReportContasExcluidas.Variables['DataFinal'] := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerFinal.Date));
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
