unit UntCaixaDiario;

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
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,

  UntBase,
  UntDataModule,
  UntBibliotecaFuncoes,

  Data.DB;

type
  TFrmCaixaDiario = class(TFrmBase)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGridCaixaDiario: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LabelTotalDebito: TLabel;
    LabelTotalCredito: TLabel;
    LabelTotal: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCaixaDiario: TFrmCaixaDiario;

implementation

{$R *.dfm}

procedure TFrmCaixaDiario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  try
    try
      DM.FDQCaixa.Close;
      LabelTotalDebito.Caption := 'R$ 0,00';
      LabelTotalCredito.Caption := 'R$ 0,00';
      LabelTotal.Caption := 'R$ 0,00';
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCaixaDiario.FormShow(Sender: TObject);
Var
  Credito, Debito : Currency;
begin
  inherited;
  try
    try
      Credito := 0;
      Debito := 0;

      DM.FDQCaixa.Close;
      DM.FDQCaixa.SQL.Text := 'SELECT * FROM CAIXA WHERE DATA = :DATAINICIAL ORDER BY HORA';
      DM.FDQCaixa.Params.ParamByName('DATAINICIAL').AsDate := Date;
      DM.FDQCaixa.Open;

      // calcula os valores de Debito e Credito
      DM.FDQCaixa.First;
      while not (DM.FDQCaixa.Eof) do
      begin
        // Arruma os valores de credito e debito
        if not (DM.FDQCaixa.FieldByName('CREDITO').AsString = EmptyStr) then
          Credito := Credito + DM.FDQCaixa.FieldByName('CREDITO').AsCurrency;

        if not (DM.FDQCaixa.FieldByName('DEBITO').AsString = EmptyStr) then
          Debito := Debito + DM.FDQCaixa.FieldByName('DEBITO').AsCurrency;

        DM.FDQCaixa.Next;
      end;

      LabelTotalDebito.Caption := 'R$ ' + CurrToStr(Debito);
      LabelTotalCredito.Caption := 'R$ ' + CurrToStr(Credito);

      // Calcula o Valor Total
      LabelTotal.Caption := 'R$ ' + CurrToStr(Credito - Debito);

      DM.FDQCaixa.First;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
