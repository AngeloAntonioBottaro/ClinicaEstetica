unit UntConsultaCliente;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.ImageList,

  FireDAC.Stan.Param,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.ImgList,

  UntBase,
  UntDataModule,
  UntComponentesGerais,
  UntBibliotecaFuncoes,

  Data.DB;

type
  TFrmConsultaCliente = class(TFrmBase)
    DBGridConsultaCliente: TDBGrid;
    EditConsultaCliente: TEdit;
    ButtonConsultarCliente: TButton;
    RadioButtonNome: TRadioButton;
    RadioButtonCPF: TRadioButton;
    ButtonFechar: TButton;
    CheckBoxInativos: TCheckBox;
    GroupBoxHeader: TGroupBox;
    RadioButtonCodigo: TRadioButton;
    GroupBoxGrid: TGroupBox;
    GroupBoxFooter: TGroupBox;
    procedure ButtonConsultarClienteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonFecharClick(Sender: TObject);
    procedure EditConsultaClienteExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaCliente: TFrmConsultaCliente;

implementation

{$R *.dfm}

procedure TFrmConsultaCliente.ButtonConsultarClienteClick(Sender: TObject);
begin
  inherited;
  try
    try
      // Faz a consulta dependendo do que esta marcado
      DM.FDQCliente.Close;

      DM.FDQCliente.SQL.Text := 'SELECT * FROM CLIENTE WHERE STATUS ';

      // Seta o Tipo de Status
      if CheckBoxInativos.Checked then
        DM.FDQCliente.SQL.Text := DM.FDQCliente.SQL.Text + ' <> ''ATIVO'''
       else
        DM.FDQCliente.SQL.Text := DM.FDQCliente.SQL.Text + ' = ''ATIVO''';

      // Seta o tipo de pesquisa
      if RadioButtonNome.Checked then
      begin
        DM.FDQCliente.SQL.Text := DM.FDQCliente.SQL.Text + ' AND NOME CONTAINING :VALOR';
      end
      else if RadioButtonCPF.Checked then
      begin
        DM.FDQCliente.SQL.Text := DM.FDQCliente.SQL.Text + ' AND CPF CONTAINING :VALOR';
      end
      else if RadioButtonCodigo.Checked then
      begin
        DM.FDQCliente.SQL.Text := DM.FDQCliente.SQL.Text + ' AND CODIGO CONTAINING :VALOR';
      end;

      DM.FDQCliente.Params.ParamByName('VALOR').AsString :=  EditConsultaCliente.Text;

      DM.FDQCliente.Open;

      DBGridConsultaCliente.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaCliente.ButtonFecharClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmConsultaCliente.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaCliente.EditConsultaClienteExit(Sender: TObject);
var
  cpf : string;
begin
  inherited;
  try
    try
      // Se estiver marcado para pesquisar pelo CPF
      if RadioButtonCPF.Checked = True then
      begin
        cpf := RemoveInvalid(ConstArrayNumeros, EditConsultaCliente.Text);
        // Se tiver os 11 caracteres ele vai validar o CPF senao vai apenas colocar a mascara
        if cpf.Length = 11 then
        begin
          if IdentificaCPF(cpf) then
            EditConsultaCliente.Text := ArrumarCPF(EditConsultaCliente.Text)
          else
            Mensagem(2,'CPF incorreto!');
        end
        else
          EditConsultaCliente.Text := ArrumarCPF(EditConsultaCliente.Text);
      end;

      ButtonConsultarCliente.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  try
    try
      EditConsultaCliente.Clear;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaCliente.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      DM.FDQCliente.Close;
      CheckBoxInativos.Checked := False;
      EditConsultaCliente.Text := EmptyStr;
      RadioButtonNome.Checked := True;
      EditConsultaCliente.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
