unit UntBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TFrmBase = class(TForm)
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBase: TFrmBase;

implementation

{$R *.dfm}

procedure TFrmBase.FormKeyPress(Sender: TObject; var Key: Char);
begin
  try
    try
      if key = #13 then
      begin
        key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
      end;
    finally

    end;
  Except on E:Exception do
    ShowMessage('Inconsistencia no TFrmBase.FormKeyPress');
  end;
end;

end.
