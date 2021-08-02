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
  UntBibliotecaFuncoes,

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
    LabelLogin: TLabel;
    Image: TImage;
    procedure FormShow(Sender: TObject);
    procedure EditLoginExit(Sender: TObject);
    procedure ButtonLogarClick(Sender: TObject);
    procedure ComboBoxLoginSelect(Sender: TObject);
  private
    procedure CarregarImagem;
    procedure PassaInfoParaMemoryTable;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

procedure TFrmLogin.ButtonLogarClick(Sender: TObject);
begin
  inherited;
  try
    try
      if not (EditSenha.Text = EmptyStr) then
      begin
        if DM.FDQAuxiliar.FieldByName('SENHA').AsString = EditSenha.Text then
        begin
          LabelLogin.Caption := 'True';

          DM.FDMTUsuario.Close;
          DM.FDMTUsuario.Open;
          DM.FDMTUsuario.Insert;

          PassaInfoParaMemoryTable;

          DM.FDMTUsuario.Post;
          DM.FDMTUsuario.First;

          DM.FDQAuxiliar.Close;

          FrmLogin.Close;
        end
        else
        begin
          EditSenha.SetFocus;
          Mensagem(1,'Senha Incorreta');
        end;
      end
      else
        EditSenha.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLogin.CarregarImagem;
begin
  try
    try
      // tenta pegar a imagem de fundo nos tipo PNG, JPEG, JPG, BMP;
      if FileExists(ExtractFilePath(Application.ExeName) + 'Logo.png') then
        Image.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Logo.png')
      else if FileExists(ExtractFilePath(Application.ExeName) + 'Logo.jpeg') then
        Image.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Logo.jpeg')
      else if FileExists(ExtractFilePath(Application.ExeName) + 'Logo.jpg') then
        Image.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Logo.jpg')
      else if FileExists(ExtractFilePath(Application.ExeName) + 'Logo.bmp') then
        Image.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Logo.bmp');
    finally

    end;
  Except on E:Exception do

  end;
end;

procedure TFrmLogin.ComboBoxLoginSelect(Sender: TObject);
begin
  inherited;
  try
    try
      // Se tiver vazio ele limpa tudo senao adiciona o numero do usuario no edit
      if ComboBoxLogin.Text = EmptyStr then
      begin
        EditLogin.Text := EmptyStr;
        EditSenha.Text := EmptyStr;
      end
      else
      begin
        DM.FDQAuxiliar.Locate('LOGIN',ComboBoxLogin.Text,[]);
        EditLogin.Text := DM.FDQAuxiliar.FieldByName('CODIGO').AsString;
        EditSenha.SetFocus;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLogin.EditLoginExit(Sender: TObject);
begin
  inherited;
  try
    try
      // Se tiver vazio ele limpa tudo senao adiciona o usuario no combobox
      if EditLogin.Text = EmptyStr then
      begin
        EditLogin.Text := EmptyStr;
        EditSenha.Text := EmptyStr;
        ComboBoxLogin.Text := EmptyStr;
      end
      else
      begin
        DM.FDQAuxiliar.Locate('CODIGO',EditLogin.Text,[]);
        ComboBoxLogin.Text := DM.FDQAuxiliar.FieldByName('LOGIN').AsString;
        EditSenha.SetFocus;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLogin.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      EditLogin.Clear;
      EditSenha.Clear;
      LabelLogin.Caption := 'False';

      CarregarImagem;

      DM.FDQAuxiliar.Close;
      DM.FDQAuxiliar.SQL.Text := 'SELECT * FROM USUARIO WHERE STATUS = :STATUS';
      DM.FDQAuxiliar.Params.ParamByName('STATUS').AsString := 'ATIVO';
      DM.FDQAuxiliar.Open;

      DM.FDQAuxiliar.First;

      ComboBoxLogin.Clear;

      while not DM.FDQAuxiliar.Eof do
      begin
        ComboBoxLogin.Items.Add(DM.FDQAuxiliar.FieldByName('LOGIN').AsString);
        DM.FDQAuxiliar.Next;
      end;

      EditLogin.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLogin.PassaInfoParaMemoryTable;
var
  I: Integer;
  NomeCampo: string;
begin
  // Se tiver informação ele passa para o memorytable
  for I := 0 to (DM.FDQAuxiliar.FieldCount - 1) do
  begin
    NomeCampo := DM.FDQAuxiliar.Fields[I].FieldName;
    if (DM.FDMTUsuario.FindField(NomeCampo) <> nil) then
      DM.FDMTUsuario.FieldByName(NomeCampo).Value := DM.FDQAuxiliar.FieldByName(NomeCampo).Value;
  end;
end;

end.
