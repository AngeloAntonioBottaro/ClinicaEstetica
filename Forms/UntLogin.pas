unit UntLogin;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,

  UntBase,
  UntComponentesGerais,
  UntDataModule,

  Data.DB,

  FireDAC.Stan.Param,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TFrmLogin = class(TFrmBase)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EditLogin: TEdit;
    ComboBoxLogin: TComboBox;
    EditSenha: TEdit;
    ButtonLogar: TButton;
    Image: TImage;
    procedure FormShow(Sender: TObject);
    procedure EditLoginExit(Sender: TObject);
    procedure ButtonLogarClick(Sender: TObject);
    procedure ComboBoxLoginSelect(Sender: TObject);
  private
    procedure CarregarImagem;
    procedure CarregarUsuarios;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses Msg.controller, Exceptions, Utils.MyFireDACLibrary, Utils.MyLibrary;

procedure TFrmLogin.ButtonLogarClick(Sender: TObject);
begin
  if(EditSenha.Text = EmptyStr)then
  begin
     EditSenha.SetFocus;
     raise ExceptionEmpty.Create('');
  end;

  if(DM.FDQAuxiliar.FieldByName('SENHA').AsString <> EditSenha.Text)then
  begin
    EditSenha.SetFocus;
    raise ExceptionWarning.Create('Senha incorreta');
  end;

  Utils.MyFireDACLibrary.PassaInfoParaMemoryTable(DM.FDQAuxiliar, DM.FDMTUsuario);

  Self.Close;
  ModalResult := mrOk;
end;

procedure TFrmLogin.CarregarImagem;
begin
  Utils.MyLibrary.LoadImage('Logo', Image);
end;

procedure TFrmLogin.CarregarUsuarios;
begin
  ComboBoxLogin.Clear;

  DM.FDQAuxiliar.Close;
  DM.FDQAuxiliar.SQL.Text := 'SELECT * FROM USUARIO WHERE STATUS = :STATUS';
  DM.FDQAuxiliar.Params.ParamByName('STATUS').AsString := 'ATIVO';
  DM.FDQAuxiliar.Open;
  DM.FDQAuxiliar.First;

  while not DM.FDQAuxiliar.Eof do
  begin
    ComboBoxLogin.Items.Add(DM.FDQAuxiliar.FieldByName('LOGIN').AsString);
    DM.FDQAuxiliar.Next;
  end;
end;

procedure TFrmLogin.ComboBoxLoginSelect(Sender: TObject);
begin
  // Se tiver vazio ele limpa tudo senao adiciona o numero do usuario no edit
  if(ComboBoxLogin.Text = EmptyStr)then
  begin
     EditLogin.Text := EmptyStr;
     EditSenha.Text := EmptyStr;
     Exit;
  end;

  DM.FDQAuxiliar.Locate('LOGIN',ComboBoxLogin.Text,[]);
  EditLogin.Text := DM.FDQAuxiliar.FieldByName('CODIGO').AsString;
  EditSenha.SetFocus;
end;

procedure TFrmLogin.EditLoginExit(Sender: TObject);
begin
  // Se tiver vazio ele limpa tudo senao adiciona o usuario no combobox
  if EditLogin.Text = EmptyStr then
  begin
     EditLogin.Text     := EmptyStr;
     EditSenha.Text     := EmptyStr;
     ComboBoxLogin.Text := EmptyStr;
     Exit;
  end;

  DM.FDQAuxiliar.Locate('CODIGO',EditLogin.Text,[]);
  ComboBoxLogin.Text := DM.FDQAuxiliar.FieldByName('LOGIN').AsString;
  EditSenha.SetFocus;
end;

procedure TFrmLogin.FormShow(Sender: TObject);
begin
  EditLogin.Clear;
  EditSenha.Clear;

  Self.CarregarImagem;

  Self.CarregarUsuarios;

  EditLogin.SetFocus;
end;

end.
