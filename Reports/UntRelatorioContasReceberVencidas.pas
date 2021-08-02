unit UntRelatorioContasReceberVencidas;

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
  UntDataModule,
  UntReportModule;

type
  TFrmRelatorioContasAReceberVencidas = class(TFrmBase)
    GroupBox2: TGroupBox;
    ButtonGerarRelatorio: TButton;
    procedure ButtonGerarRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioContasAReceberVencidas: TFrmRelatorioContasAReceberVencidas;

implementation

{$R *.dfm}

procedure TFrmRelatorioContasAReceberVencidas.ButtonGerarRelatorioClick(
  Sender: TObject);
begin
  inherited;
  try
    try
      DMRelatorios.FDQContasReceberVencidas.Close;
      DMRelatorios.FDQContasReceberVencidas.SQL.Text := ' SELECT A.*, B.NOME FROM CONTARECEBER AS A ' +
                                                 ' JOIN CLIENTE AS B ON A.CLIENTE = B.CODIGO WHERE A.VENCIMENTO < :VENCIMENTO ';
      DMRelatorios.FDQContasReceberVencidas.Params.ParamByName('VENCIMENTO').AsDateTime := Date;
      DMRelatorios.FDQContasReceberVencidas.Open;

      if DMRelatorios.FDQContasReceberVencidas.Eof then
      begin
        Mensagem(1,'Nenhum registro para o periodo informado');
      end
      else
      begin
        GerarRelatorio(DMRelatorios.ReportContasReceberVencidas);
        // Exporta o relatorio em PDF
        ExportarRelatorioPDF(DMRelatorios.ReportContasReceberVencidas, DMRelatorios.PDFExport);
      end;
    finally
      DMRelatorios.FDQContasReceberVencidas.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
