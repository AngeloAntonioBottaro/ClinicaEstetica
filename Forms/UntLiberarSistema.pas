unit UntLiberarSistema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntBase, Vcl.StdCtrls;

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

uses UntDataModule, UntComponentesGerais, System.SysUtils, UntBibliotecaFuncoes;

procedure TFrmLiberarSistema.ButtonLiberarSistemaClick(Sender: TObject);
var
  day : TDate;
begin
  inherited;
  try
    try
      if (EditCodigoHash.Text = EmptyStr) or (Length(EditCodigoHash.Text) <> 24) then
      begin
        EditCodigoHash.SetFocus;
        Exit;
      end;

      day := StrToDate(DecryptData(EditCodigoHash.Text));

      DM.FDQParametros.Edit;
      DM.FDQParametros.FieldByName('HASH').AsString := EditCodigoHash.Text;
      DM.FDQParametros.Post;

      EditCodigoHash.Clear;

      Mensagem(1,'Sistema Liberado até dia: ' + DateToStr(day));
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
