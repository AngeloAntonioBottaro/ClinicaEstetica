unit UntRelatorioContasPagarVencidas;

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

  FireDAC.Stan.Param,

  UntBase,
  UntBibliotecaFuncoes,
  UntComponentesGerais,
  UntReportModule;

type
  TFrmContasPagarVencidas = class(TFrmBase)
    GroupBox2: TGroupBox;
    ButtonGerarRelatorio: TButton;
    procedure ButtonGerarRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmContasPagarVencidas: TFrmContasPagarVencidas;

implementation

{$R *.dfm}

procedure TFrmContasPagarVencidas.ButtonGerarRelatorioClick(Sender: TObject);
begin
  inherited;
  try
    try
      DMRelatorios.FDQContasPagarVencidas.Close;
      DMRelatorios.FDQContasPagarVencidas.SQL.Text := ' SELECT A.*, B.NOMEFANTASIA FROM CONTAPAGAR AS A JOIN FORNECEDOR AS B ON A.FORNECEDOR = B.CODIGO WHERE A.VENCIMENTO < :VENCIMENTO ';
      DMRelatorios.FDQContasPagarVencidas.Params.ParamByName('VENCIMENTO').AsDateTime := Date;
      DMRelatorios.FDQContasPagarVencidas.Open;

      if DMRelatorios.FDQContasPagarVencidas.Eof then
      begin
        Mensagem(1,'Nenhum registro para o periodo informado');
      end
      else
      begin
        GerarRelatorio(DMRelatorios.ReportContasPagarVencidas);
        // Exporta o relatorio em PDF
        ExportarRelatorioPDF(DMRelatorios.ReportContasPagarVencidas, DMRelatorios.PDFExport);
      end;
    finally
      DMRelatorios.FDQContasPagarVencidas.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
