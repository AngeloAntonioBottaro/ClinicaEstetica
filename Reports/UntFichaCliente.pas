unit UntFichaCliente;

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
  UntReportModule,
  UntConsultaCliente,
  UntDataModule;

type
  TFrmFichaCliente = class(TFrmBase)
    GroupBox1: TGroupBox;
    Label4: TLabel;
    LabelNomeCliente: TLabel;
    ButtonConsultaCliente: TButton;
    EditCodigoCliente: TEdit;
    GroupBox2: TGroupBox;
    ButtonGerarRelatorio: TButton;
    procedure EditCodigoClienteExit(Sender: TObject);
    procedure ButtonConsultaClienteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ButtonGerarRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFichaCliente: TFrmFichaCliente;

implementation

{$R *.dfm}

procedure TFrmFichaCliente.ButtonConsultaClienteClick(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeCliente.Caption := '';
      // Abre a consulta de cliente
      FrmConsultaCliente.ShowModal;
    finally
      // Se tiver pesquisado algum cliente
      if not (DM.FDQCliente.Eof) then
      begin
        EditCodigoCliente.Text := DM.FDQCliente.FieldByName('CODIGO').AsString;
        LabelNomeCliente.Caption := DM.FDQCliente.FieldByName('NOME').AsString;
      end;
      EditCodigoCliente.SetFocus;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmFichaCliente.ButtonGerarRelatorioClick(Sender: TObject);
begin
  inherited;
  try
    try
      DMRelatorios.FDQFichaCliente.Close;
      DMRelatorios.FDQFichaCliente.SQL.Text := 'SELECT * FROM CLIENTE ';

      // Se tiver o cliente imprime so a ficha dele senao imprime todas as fichas
      if not (EditCodigoCliente.Text = EmptyStr) then
      begin
        DMRelatorios.FDQFichaCliente.SQL.Text := DMRelatorios.FDQFichaCliente.SQL.Text + ' WHERE CODIGO = :CODIGO ';
        DMRelatorios.FDQFichaCliente.Params.ParamByName('CODIGO').AsString := EditCodigoCliente.Text;
      end;

      DMRelatorios.FDQFichaCliente.SQL.Text := DMRelatorios.FDQFichaCliente.SQL.Text + ' ORDER BY CODIGO ';
      DMRelatorios.FDQFichaCliente.Open;

      if DMRelatorios.FDQFichaCliente.Eof then
      begin
        Mensagem(3,'Inconsistencia Desconhecida' + sLineBreak + 'Entrar em contato com o desenvolvedor');
      end
      else
      begin
        // Arruma a idade
        DMRelatorios.FDQFichaCliente.First;
        while not DMRelatorios.FDQFichaCliente.Eof do
        begin
          DMRelatorios.FDQFichaCliente.Edit;
          DMRelatorios.FDQFichaCliente.FieldByName('IDADE').AsString := IntToStr(CalcularIdade(DMRelatorios.FDQFichaCliente.FieldByName('DATANASCIMENTO').AsDateTime)) + ' Anos';
          DMRelatorios.FDQFichaCliente.Post;
          DMRelatorios.FDQFichaCliente.Next;
        end;
        DMRelatorios.FDQFichaCliente.First;

        GerarRelatorio(DMRelatorios.ReportFichaCliente);
        ExportarRelatorioPDF(DMRelatorios.ReportFichaCliente, DMRelatorios.PDFExport);
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmFichaCliente.EditCodigoClienteExit(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeCliente.Caption := '';
      // Se nao tiver informado o cliente ele foca o botao de consulta  senao foca a consulta de produto
      if not (EditCodigoCliente.Text = EmptyStr) then
      begin
          DM.FDQCliente.Close;
          DM.FDQCliente.SQL.Text := 'SELECT * FROM CLIENTE WHERE CODIGO = :CODIGO';
          DM.FDQCliente.Params.ParamByName('CODIGO').AsString := EditCodigoCliente.Text;
          DM.FDQCliente.Open;

          // Se nao encontrou o cliente
          if DM.FDQCliente.Eof then
          begin
            Mensagem(2,'Cliente não encontrado');
            EditCodigoCliente.Clear;
            EditCodigoCliente.SetFocus;
          end
          else
          begin
            // Se tiver algum cliente inclui o nome dele
            LabelNomeCliente.Caption := DM.FDQCliente.FieldByName('NOME').AsString;
          end;
      end;

      ButtonGerarRelatorio.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmFichaCliente.FormShow(Sender: TObject);
begin
  inherited;
  LabelNomeCliente.Caption := '';
end;

end.
