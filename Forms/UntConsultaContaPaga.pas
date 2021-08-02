unit UntConsultaContaPaga;

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
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.ComCtrls,

  Data.DB,

  FireDAC.Stan.Param,

  UntBase,
  UntConsultaFornecedor,
  UntBibliotecaFuncoes,
  UntComponentesGerais,
  UntDataModule;

type
  TFrmConsultaContaPaga = class(TFrmBase)
    GroupBoxHeader: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    ButtonConsultar: TButton;
    DateTimePickerInicial: TDateTimePicker;
    DateTimePickerFinal: TDateTimePicker;
    RadioButtonVencimento: TRadioButton;
    RadioButtonEmissao: TRadioButton;
    RadioButtonPagamento: TRadioButton;
    GroupBoxFooter: TGroupBox;
    ButtonFechar: TButton;
    GroupBoxGrid: TGroupBox;
    DBGridContaPaga: TDBGrid;
    Label3: TLabel;
    EditCodigoFornecedor: TEdit;
    ButtonConsultaFornecedor: TButton;
    LabelNomeFornecedor: TLabel;
    procedure ButtonConsultaFornecedorClick(Sender: TObject);
    procedure ButtonConsultarClick(Sender: TObject);
    procedure ButtonFecharClick(Sender: TObject);
    procedure EditCodigoFornecedorExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaContaPaga: TFrmConsultaContaPaga;

implementation

{$R *.dfm}

procedure TFrmConsultaContaPaga.ButtonConsultaFornecedorClick(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeFornecedor.Caption := '';
      FrmConsultaFornecedor.ShowModal;
    finally
      if not (DM.FDQFornecedor.State in [dsInactive]) then
      begin
        EditCodigoFornecedor.Text := DM.FDQFornecedor.FieldByName('CODIGO').AsString;
        LabelNomeFornecedor.Caption := DM.FDQFornecedor.FieldByName('NOMEFANTASIA').AsString;
      end;
      // Volta o foco para o campo
      EditCodigoFornecedor.SetFocus;
      DM.FDQFornecedor.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaContaPaga.ButtonConsultarClick(Sender: TObject);
begin
  inherited;
  try
    try
      DM.FDQContaPaga.close;
      DM.FDQContaPaga.SQL.Text := 'SELECT * FROM CONTAPAGA WHERE ';

      // Se tiver o cliente ele pesquisa pelo cliente
      if not (EditCodigoFornecedor.Text = EmptyStr) then
      begin
        DM.FDQContaPaga.SQL.Text := DM.FDQContaPaga.SQL.Text + 'FORNECEDOR = :FORNECEDOR AND ';
        DM.FDQContaPaga.Params.ParamByName('FORNECEDOR').AsString :=  EditCodigoFornecedor.Text;
      end;

      // Pesquisa pelo que estiver marcado
      if RadioButtonEmissao.Checked then
      begin
        DM.FDQContaPaga.SQL.Text := DM.FDQContaPaga.SQL.Text + ' EMISSAO BETWEEN :DATAINICIAL AND :DATAFINAL ORDER BY EMISSAO, DOCUMENTO';
      end
      else if RadioButtonVencimento.Checked then
      begin
        DM.FDQContaPaga.SQL.Text := DM.FDQContaPaga.SQL.Text + ' VENCIMENTO BETWEEN :DATAINICIAL AND :DATAFINAL ORDER BY VENCIMENTO, DOCUMENTO';
      end
      else if RadioButtonPagamento.Checked then
      begin
        DM.FDQContaPaga.SQL.Text := DM.FDQContaPaga.SQL.Text + ' DATAPAGAMENTO BETWEEN :DATAINICIAL AND :DATAFINAL ORDER BY DATAPAGAMENTO, DOCUMENTO';
      end;

      DM.FDQContaPaga.Params.ParamByName('DATAINICIAL').AsDate :=  StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerInicial.Date));
      DM.FDQContaPaga.Params.ParamByName('DATAFINAL').AsDate :=  StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerFinal.Date));

      DM.FDQContaPaga.Open;

      DBGridContaPaga.Refresh;
      DBGridContaPaga.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaContaPaga.ButtonFecharClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmConsultaContaPaga.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaContaPaga.EditCodigoFornecedorExit(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeFornecedor.Caption := '';

      // Se tiver colocado algum codigo ele pesquisa o cliente
      if not (EditCodigoFornecedor.Text = EmptyStr) then
      begin
        DM.FDQFornecedor.Close;
        DM.FDQFornecedor.SQL.Text := 'SELECT * FROM FORNECEDOR WHERE CODIGO = :CODIGO';
        DM.FDQFornecedor.Params.ParamByName('CODIGO').AsString := EditCodigoFornecedor.Text;
        DM.FDQFornecedor.Open;

        if DM.FDQFornecedor.Eof then
        begin
          Mensagem(1,'Fornecedor Não Encontrado');
          EditCodigoFornecedor.Clear;
          ButtonConsultaFornecedor.SetFocus;
          Exit;
        end
        else
        begin
          LabelNomeFornecedor.Caption := DM.FDQFornecedor.FieldByName('NOMEFANTASIA').AsString;
          ButtonConsultar.SetFocus;
        end;
      end;
    finally
      DM.FDQFornecedor.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaContaPaga.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  try
    try
      EditCodigoFornecedor.Clear;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaContaPaga.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeFornecedor.Caption := '';
      // Seta as datas para dia atual
      DateTimePickerInicial.Date := Date;
      DateTimePickerFinal.Date := Date;

      DM.FDQContaPaga.Close;
      DM.FDQFornecedor.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
