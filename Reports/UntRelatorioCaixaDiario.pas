unit UntRelatorioCaixaDiario;

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
  UntDataModule,
  UntReportModule,
  UntBibliotecaFuncoes;

type
  TFrmRelatorioCaixaDiario = class(TFrmBase)
    GroupBox2: TGroupBox;
    ButtonGerarRelatorio: TButton;
    procedure ButtonGerarRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioCaixaDiario: TFrmRelatorioCaixaDiario;

implementation

{$R *.dfm}

procedure TFrmRelatorioCaixaDiario.ButtonGerarRelatorioClick(Sender: TObject);
var
  SQLSelect : AnsiString;
begin
  inherited;
  try
    try
      SQLSelect := '';
      SQLSelect := 'SELECT A.*, B.NOME, D.NOMEFANTASIA, C.DESCRICAO AS DESCRIFORMAPAGTO FROM CAIXA AS A ';
      SQLSelect := SQLSelect + 'LEFT JOIN CLIENTE AS B ON A.CLIENTE = B.CODIGO LEFT JOIN FORNECEDOR AS D ON A.FORNECEDOR = D.CODIGO JOIN FORMAPAGTO AS C ON A.FORMAPAGTO = C.CODIGO ';
      SQLSelect := SQLSelect + 'WHERE DATA = :DATAINICIAL ORDER BY HORA';

      DMRelatorios.FDQCaixaDiario.Close;
      DMRelatorios.FDQCaixaDiario.SQL.Clear;
      DMRelatorios.FDQCaixaDiario.SQL.Text := SQLSelect;
      DMRelatorios.FDQCaixaDiario.Params.ParamByName('DATAINICIAL').AsDate := Date;
      DMRelatorios.FDQCaixaDiario.Open;

      if DMRelatorios.FDQCaixaDiario.Eof then
        Mensagem(1,'Nenhum registo no caixa')
      else
      begin
        GerarRelatorio(DMRelatorios.ReportCaixaDiario);
        // Exporta o relatorio em PDF
        ExportarRelatorioPDF(DMRelatorios.ReportCaixaDiario, DMRelatorios.PDFExport);
      end;
    finally
      DMRelatorios.FDQCaixaDiario.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
