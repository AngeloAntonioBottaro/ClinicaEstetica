unit UntBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TFrmBase = class(TForm)
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBase: TFrmBase;

implementation

{$R *.dfm}

uses
   Utils.MyLibrary;

procedure TFrmBase.FormCreate(Sender: TObject);
begin
  ConfForm(Self);
end;

procedure TFrmBase.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  DefaultKeyDown(TForm(Self), Key, Shift);
end;

procedure TFrmBase.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if(key = #13)then
  begin
     key := #0;
     Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

end.
