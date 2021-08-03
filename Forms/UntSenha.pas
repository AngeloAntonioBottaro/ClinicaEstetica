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
  UntBibliotecaFuncoes,
  UntComponentesGerais;

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
  inherited;
  try
    try
      if EditSenha.Text = EmptyStr then
        EditSenha.SetFocus;

      if UpperCase(EditSenha.Text) = 'PASSWORD' then
      begin
        FrmParametrosSistema.ShowModal;
        EditSenha.SetFocus;
      end
      else
      begin         
        Mensagem(1,'Senha Incorreta');
        EditSenha.Clear;
        EditSenha.SetFocus;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
