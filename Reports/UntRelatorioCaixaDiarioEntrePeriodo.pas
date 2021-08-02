unit UntRelatorioCaixaDiarioEntrePeriodo;

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
  UntBibliotecaFuncoes,
  UntComponentesGerais;

type
  TFrmRelatorioCaixaDiarioEntrePeriodo = class(TFrmBase)
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
  FrmRelatorioCaixaDiarioEntrePeriodo: TFrmRelatorioCaixaDiarioEntrePeriodo;

implementation

{$R *.dfm}

procedure TFrmRelatorioCaixaDiarioEntrePeriodo.ButtonGerarRelatorioClick(
  Sender: TObject);
var
  SQLSelect : AnsiString;
begin
  inherited;
  try
    try
      SQLSelect := '';
      SQLSelect := 'SELECT A.*, B.NOME, D.NOMEFANTASIA, C.DESCRICAO AS DESCRIFORMAPAGTO FROM CAIXA AS A ';
      SQLSelect := SQLSelect + 'LEFT JOIN CLIENTE AS B ON A.CLIENTE = B.CODIGO LEFT JOIN FORNECEDOR AS D ON A.FORNECEDOR = D.CODIGO JOIN FORMAPAGTO AS C ON A.FORMAPAGTO = C.CODIGO ';
      SQLSelect := SQLSelect + ' WHERE DATA BETWEEN :DATAINICIAL AND :DATAFINAL ORDER BY DATA, HORA';

      DMRelatorios.FDQCaixaDiarioEntrePeriodo.Close;
      DMRelatorios.FDQCaixaDiarioEntrePeriodo.SQL.Clear;
      DMRelatorios.FDQCaixaDiarioEntrePeriodo.SQL.Text := SQLSelect;
      DMRelatorios.FDQCaixaDiarioEntrePeriodo.Params.ParamByName('DATAINICIAL').AsDate := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerInicial.Date));
      DMRelatorios.FDQCaixaDiarioEntrePeriodo.Params.ParamByName('DATAFINAL').AsDate := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerFinal.Date));
      DMRelatorios.FDQCaixaDiarioEntrePeriodo.Open;

      if DMRelatorios.FDQCaixaDiarioEntrePeriodo.Eof then
      begin
        Mensagem(1,'Nenhum registro para o periodo informado');
      end
      else
      begin
        // Arruma as Variavies
        Variaveis;

        GerarRelatorio(DMRelatorios.ReportCaixaDiarioEntrePeriodo);
        // Exporta o relatorio em PDF
        ExportarRelatorioPDF(DMRelatorios.ReportCaixaDiarioEntrePeriodo, DMRelatorios.PDFExport);
      end;
    finally
      DMRelatorios.FDQCaixaDiarioEntrePeriodo.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRelatorioCaixaDiarioEntrePeriodo.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      DateTimePickerInicial.Date := Date;
      DateTimePickerfinal.Date := Date;
      DMRelatorios.FDQCaixaDiario.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRelatorioCaixaDiarioEntrePeriodo.Variaveis;
var
  ValorTotalDebito, ValorTotalCredito : Double;
begin
  try
    try
      ValorTotalDebito := 0;
      ValorTotalCredito := 0;

      // Periodo pesquisado
      DMRelatorios.ReportCaixaDiarioEntrePeriodo.Variables['DataInicial'] := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerInicial.Date));
      DMRelatorios.ReportCaixaDiarioEntrePeriodo.Variables['DataFinal'] := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerFinal.Date));

      // Pega o valor Total e o numero de registros
      DM.FDQCaixa.Close;
      DM.FDQCaixa.SQL.Text := 'SELECT * FROM CAIXA WHERE DATA BETWEEN :DATAINICAL AND :DATAFINAL' ;
      DM.FDQCaixa.Params.ParamByName('DATAINICAL').AsDate := DateTimePickerInicial.Date;
      DM.FDQCaixa.Params.ParamByName('DATAFINAL').AsDate := DateTimePickerFinal.Date;
      DM.FDQCaixa.Open;
      DM.FDQCaixa.First;

      while not DM.FDQCaixa.Eof do
      begin
        // Arruma os valores de credito e debito
        if not (DM.FDQCaixa.FieldByName('CREDITO').AsString = EmptyStr) then
          ValorTotalCredito := ValorTotalCredito + DM.FDQCaixa.FieldByName('CREDITO').AsCurrency;

        if not (DM.FDQCaixa.FieldByName('DEBITO').AsString = EmptyStr) then
          ValorTotalDebito := ValorTotalDebito + DM.FDQCaixa.FieldByName('DEBITO').AsCurrency;

        DM.FDQCaixa.Next;
      end;

      DMRelatorios.ReportCaixaDiarioEntrePeriodo.Variables['ValorTotalDebito'] := ValorTotalDebito;
      DMRelatorios.ReportCaixaDiarioEntrePeriodo.Variables['ValorTotalCredito'] := ValorTotalCredito;
    finally
      DM.FDQCaixa.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
