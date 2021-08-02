unit UntConsultaContaRecebida;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,

  FireDAC.Stan.Param,

  UntBase,
  UntDataModule,
  UntConsultaCliente,
  UntBibliotecaFuncoes,

  Data.DB,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ComCtrls,
  Vcl.StdCtrls,
  Vcl.Grids,
  Vcl.DBGrids;

type
  TFrmConsultaContaRecebida = class(TFrmBase)
    GroupBoxGrid: TGroupBox;
    DBGridContaRecebida: TDBGrid;
    GroupBoxHeader: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EditCodigoCliente: TEdit;
    ButtonConsultar: TButton;
    DateTimePickerInicial: TDateTimePicker;
    DateTimePickerFinal: TDateTimePicker;
    ButtonConsultaCliente: TButton;
    GroupBoxFooter: TGroupBox;
    ButtonFechar: TButton;
    RadioButtonVencimento: TRadioButton;
    RadioButtonEmissao: TRadioButton;
    RadioButtonPagamento: TRadioButton;
    LabelNomeCliente: TLabel;
    procedure FormShow(Sender: TObject);
    procedure ButtonConsultaClienteClick(Sender: TObject);
    procedure ButtonConsultarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonFecharClick(Sender: TObject);
    procedure EditCodigoClienteExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaContaRecebida: TFrmConsultaContaRecebida;

implementation

{$R *.dfm}

procedure TFrmConsultaContaRecebida.ButtonConsultaClienteClick(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeCliente.Caption := '';

      FrmConsultaCliente.ShowModal;
    finally
      if not (DM.FDQCliente.State in [dsInactive]) then
      begin
        EditCodigoCliente.Text := DM.FDQCliente.FieldByName('CODIGO').AsString;
        LabelNomeCliente.Caption := DM.FDQCliente.FieldByName('NOME').AsString;
      end;
      // Volta o foco para o campo
      EditCodigoCliente.SetFocus;
      DM.FDQCliente.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaContaRecebida.ButtonConsultarClick(Sender: TObject);
begin
  inherited;
  try
    try
      DM.FDQContaRecebida.close;
      DM.FDQContaRecebida.SQL.Text := 'SELECT * FROM CONTARECEBIDA WHERE ';

      // Se tiver o cliente ele pesquisa pelo cliente
      if not (EditCodigoCliente.Text = EmptyStr) then
      begin
        DM.FDQContaRecebida.SQL.Text := DM.FDQContaRecebida.SQL.Text + 'CLIENTE = :CLIENTE AND ';
        DM.FDQContaRecebida.Params.ParamByName('CLIENTE').AsString :=  EditCodigoCliente.Text;
      end;

      // Pesquisa pelo que estiver marcado
      if RadioButtonEmissao.Checked then
      begin
        DM.FDQContaRecebida.SQL.Text := DM.FDQContaRecebida.SQL.Text + ' EMISSAO BETWEEN :DATAINICIAL AND :DATAFINAL ORDER BY EMISSAO, DOCUMENTO';
      end
      else if RadioButtonVencimento.Checked then
      begin
        DM.FDQContaRecebida.SQL.Text := DM.FDQContaRecebida.SQL.Text + ' VENCIMENTO BETWEEN :DATAINICIAL AND :DATAFINAL ORDER BY VENCIMENTO, DOCUMENTO';
      end
      else if RadioButtonPagamento.Checked then
      begin
        DM.FDQContaRecebida.SQL.Text := DM.FDQContaRecebida.SQL.Text + ' DATAPAGAMENTO BETWEEN :DATAINICIAL AND :DATAFINAL ORDER BY DATAPAGAMENTO, DOCUMENTO';
      end;

      DM.FDQContaRecebida.Params.ParamByName('DATAINICIAL').AsDate :=  StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerInicial.Date));
      DM.FDQContaRecebida.Params.ParamByName('DATAFINAL').AsDate :=  StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerFinal.Date));

      DM.FDQContaRecebida.Open;

      DBGridContaRecebida.Refresh;
      DBGridContaRecebida.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;


procedure TFrmConsultaContaRecebida.ButtonFecharClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmConsultaContaRecebida.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaContaRecebida.EditCodigoClienteExit(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeCliente.Caption := '';

      // Se tiver colocado algum codigo ele pesquisa o cliente
      if not (EditCodigoCliente.Text = EmptyStr) then
      begin
        DM.FDQCliente.Close;
        DM.FDQCliente.SQL.Text := 'SELECT * FROM CLIENTE WHERE CODIGO = :CODIGO';
        DM.FDQCliente.Params.ParamByName('CODIGO').AsString := EditCodigoCliente.Text;
        DM.FDQCliente.Open;

        if DM.FDQCliente.Eof then
        begin
          Mensagem(1,'Cliente Não Encontrado');
          EditCodigoCliente.Clear;
          ButtonConsultaCliente.SetFocus;
          Exit;
        end
        else
        begin
          LabelNomeCliente.Caption := DM.FDQCliente.FieldByName('NOME').AsString;
          ButtonConsultar.SetFocus;
        end;
      end;
    finally
      DM.FDQCliente.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaContaRecebida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  try
    try
      EditCodigoCliente.Clear;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaContaRecebida.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeCliente.Caption := '';
      // Seta as datas para dia atual
      DateTimePickerInicial.Date := Date;
      DateTimePickerFinal.Date := Date;

      DM.FDQContaRecebida.Close;
      DM.FDQCliente.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
