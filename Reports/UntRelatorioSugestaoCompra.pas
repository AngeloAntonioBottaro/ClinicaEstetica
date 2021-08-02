unit UntRelatorioSugestaoCompra;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,

  UntBase,
  UntBibliotecaFuncoes,
  UntComponentesGerais,
  UntDataModule,
  UntReportModule,

  FireDAC.Stan.Param,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TFrmSugestaoCompra = class(TFrmBase)
    GroupBox1: TGroupBox;
    ButtonGerarRelatorio: TButton;
    procedure ButtonGerarRelatorioClick(Sender: TObject);
  private
    procedure Variaveis;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSugestaoCompra: TFrmSugestaoCompra;

implementation

{$R *.dfm}

procedure TFrmSugestaoCompra.ButtonGerarRelatorioClick(Sender: TObject);
begin
  inherited;
  try
    try
      DMRelatorios.FDQSugestaoCompra.Close;
      DMRelatorios.FDQSugestaoCompra.SQL.Text := 'SELECT A.*, ((A.ESTOQUEMINIMO - A.ESTOQUE) + (ESTOQUEMAXIMO/2)) AS SUGESTAO FROM PRODUTO AS A WHERE ESTOQUE <= ESTOQUEMINIMO';
      DMRelatorios.FDQSugestaoCompra.Open;

      // Se estiver vazio entao nao tem nenhum produto com estoque menor que o minimo
      if DMRelatorios.FDQSugestaoCompra.Eof then
      begin
        Mensagem(1,'Nenhum produto com estoque abaixo do minimo');
      end
      else
      begin
        // Coloca as variaveis
        Variaveis;

        GerarRelatorio(DMRelatorios.ReportSugestaoCompra);
        ExportarRelatorioPDF(DMRelatorios.ReportSugestaoCompra, DMRelatorios.PDFExport);
      end;
    finally
      DMRelatorios.FDQSugestaoCompra.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmSugestaoCompra.Variaveis;
var
  ValorCompraAproximado : Double;
begin
  try
    try
      ValorCompraAproximado := 0;

      DMRelatorios.FDQSugestaoCompra.First;
      while not DMRelatorios.FDQSugestaoCompra.Eof do
      begin
        // Se tiver o valor de compra
        if not (DMRelatorios.FDQSugestaoCompra.FieldByName('VALORCOMPRA').AsString = EmptyStr) then
          ValorCompraAproximado := ValorCompraAproximado + (DMRelatorios.FDQSugestaoCompra.FieldByName('SUGESTAO').AsFloat * DMRelatorios.FDQSugestaoCompra.FieldByName('VALORCOMPRA').AsFloat);

        DMRelatorios.FDQSugestaoCompra.Next;
      end;

      DMRelatorios.ReportSugestaoCompra.Variables['ValorCompraAproximado'] := ValorCompraAproximado;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
