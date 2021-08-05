unit UntSenha;

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

  UntBase,
  UntParametrosSistema,
  UntComponentesGerais,
  Exceptions;

type
  TFrmSenha = class(TFrmBase)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EditSenha: TEdit;
    ButtonEntrar: TButton;
    procedure ButtonEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSenha: TFrmSenha;

implementation

{$R *.dfm}

procedure TFrmSenha.ButtonEntrarClick(Sender: TObject);
begin
  if EditSenha.Text = EmptyStr then
  begin
    EditSenha.SetFocus;
    Exit;
  end;

  if UpperCase(EditSenha.Text) <> 'PASSWORD' then
  begin
    EditSenha.Clear;
    EditSenha.SetFocus;
    raise ExceptionMsg.Create('Senha inválida');
  end;

  if(FrmParametrosSistema = nil)then Application.CreateForm(TFrmParametrosSistema, FrmParametrosSistema);
  FrmParametrosSistema.ShowModal;
  FreeAndNil(FrmParametrosSistema);
  Self.Close;
end;

end.
