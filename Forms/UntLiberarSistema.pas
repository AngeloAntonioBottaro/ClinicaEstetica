unit UntLiberarSistema;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.Variants,
  System.Classes,
  System.SysUtils,

  UntBase,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,

  Msg.Controller;

type
  TFrmLiberarSistema = class(TFrmBase)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EditCodigoHash: TEdit;
    ButtonLiberarSistema: TButton;
    procedure ButtonLiberarSistemaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLiberarSistema: TFrmLiberarSistema;

implementation

{$R *.dfm}

uses UntDataModule, UntComponentesGerais, UntBibliotecaFuncoes;

procedure TFrmLiberarSistema.ButtonLiberarSistemaClick(Sender: TObject);
begin
  inherited;
  try
    if(EditCodigoHash.Text = EmptyStr)or(Length(EditCodigoHash.Text) <> 24)then
    begin
      EditCodigoHash.SetFocus;
      Exit;
    end;

    DM.FDQParametros.Edit;
    DM.FDQParametros.FieldByName('HASH').AsString := EditCodigoHash.Text;
    DM.FDQParametros.Post;

    EditCodigoHash.Clear;

    Msg.controller.ShowInfo('Sistema Liberado até dia: ' + DecryptData(EditCodigoHash.Text));
  Except on E:Exception do
    Msg.controller.ShowError(E.ToString);
  end;
end;

end.
