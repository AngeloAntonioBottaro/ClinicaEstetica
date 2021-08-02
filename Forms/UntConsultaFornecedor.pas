unit UntConsultaFornecedor;

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

  Data.DB,

  FireDAC.Stan.Param,

  UntBase,
  UntBibliotecaFuncoes,
  UntComponentesGerais,
  UntDataModule;

type
  TFrmConsultaFornecedor = class(TFrmBase)
    GroupBoxHeader: TGroupBox;
    RadioButtonCNPJ: TRadioButton;
    RadioButtonNome: TRadioButton;
    RadioButtonCodigo: TRadioButton;
    EditConsultaFornecedor: TEdit;
    ButtonConsultarCliente: TButton;
    GroupBoxGrid: TGroupBox;
    GroupBoxFooter: TGroupBox;
    CheckBoxInativos: TCheckBox;
    ButtonFechar: TButton;
    DBGridConsultaFornecedor: TDBGrid;
    procedure ButtonFecharClick(Sender: TObject);
    procedure EditConsultaFornecedorExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ButtonConsultarClienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaFornecedor: TFrmConsultaFornecedor;

implementation

{$R *.dfm}

procedure TFrmConsultaFornecedor.ButtonConsultarClienteClick(Sender: TObject);
begin
  inherited;
  try
    try
      // Faz a consulta dependendo do que esta marcado
      DM.FDQFornecedor.Close;

      DM.FDQFornecedor.SQL.Text := 'SELECT * FROM FORNECEDOR WHERE STATUS ';

      // Seta o Tipo de Status
      if CheckBoxInativos.Checked then
        DM.FDQFornecedor.SQL.Text := DM.FDQFornecedor.SQL.Text + ' <> ''ATIVO'''
       else
        DM.FDQFornecedor.SQL.Text := DM.FDQFornecedor.SQL.Text + ' = ''ATIVO''';

      // Seta o tipo de pesquisa
      if RadioButtonNome.Checked then
      begin
        DM.FDQFornecedor.SQL.Text := DM.FDQFornecedor.SQL.Text + ' AND NOMEFANTASIA CONTAINING :VALOR';
      end
      else if RadioButtonCNPJ.Checked then
      begin
        DM.FDQFornecedor.SQL.Text := DM.FDQFornecedor.SQL.Text + ' AND CNPJ CONTAINING :VALOR';
      end
      else if RadioButtonCodigo.Checked then
      begin
        DM.FDQFornecedor.SQL.Text := DM.FDQFornecedor.SQL.Text + ' AND CODIGO CONTAINING :VALOR';
      end;

      DM.FDQFornecedor.Params.ParamByName('VALOR').AsString :=  EditConsultaFornecedor.Text;

      DM.FDQFornecedor.Open;

      DBGridConsultaFornecedor.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaFornecedor.ButtonFecharClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmConsultaFornecedor.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaFornecedor.EditConsultaFornecedorExit(Sender: TObject);
var
  cnpj : string;
begin
  inherited;
  try
    try
      // Se estiver marcado para pesquisar pelo CPF
      if RadioButtonCNPJ.Checked = True then
      begin
        cnpj := RemoveInvalid(ConstArrayNumeros, EditConsultaFornecedor.Text);
        // Se tiver os 11 caracteres ele vai validar o CPF senao vai apenas colocar a mascara
        if cnpj.Length = 14 then
        begin
          if IdentificaCNPJ(cnpj) then
            EditConsultaFornecedor.Text := ArrumarCNPJ(EditConsultaFornecedor.Text)
          else
            Mensagem(2,'CPF incorreto!');
        end
        else
          EditConsultaFornecedor.Text := ArrumarCNPJ(EditConsultaFornecedor.Text);
      end;

      ButtonConsultarCliente.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;


procedure TFrmConsultaFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  try
    try
      EditConsultaFornecedor.Clear;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaFornecedor.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      DM.FDQFornecedor.Close;
      CheckBoxInativos.Checked := False;
      EditConsultaFornecedor.Text := EmptyStr;
      RadioButtonNome.Checked := True;
      EditConsultaFornecedor.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
