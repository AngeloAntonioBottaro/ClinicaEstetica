unit UntMensagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, System.ImageList, Vcl.ImgList;

type
  TFrmMensagem = class(TForm)
    GroupBoxTop: TGroupBox;
    GroupBoxClient: TGroupBox;
    LabelTitulo: TLabel;
    LabelMensagem: TLabel;
    GroupBoxBotton: TGroupBox;
    ButtonOk: TButton;
    ButtonSim: TButton;
    ButtonNao: TButton;
    ImageListButtons: TImageList;
    LabelRespostaMensagem: TLabel;
    TimerAlert: TTimer;
    ButtonImagem: TButton;
    ImageListButtons48: TImageList;
    procedure TimerAlertTimer(Sender: TObject);
    procedure ButtonSimClick(Sender: TObject);
    procedure ButtonNaoClick(Sender: TObject);
    procedure ButtonOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMensagem: TFrmMensagem;

implementation

{$R *.dfm}

procedure TFrmMensagem.ButtonNaoClick(Sender: TObject);
begin
  LabelRespostaMensagem.Caption := 'False';
  FrmMensagem.Close;
end;

procedure TFrmMensagem.ButtonOkClick(Sender: TObject);
begin
  FrmMensagem.Close;
end;

procedure TFrmMensagem.ButtonSimClick(Sender: TObject);
begin
  LabelRespostaMensagem.Caption := 'True';
  FrmMensagem.Close;
end;

procedure TFrmMensagem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // Volta ao estado zerado

  LabelTitulo.Caption := '';
  LabelMensagem.Caption := '';

  ButtonImagem.ImageIndex := 0;

  GroupBoxBotton.Visible := False;
  ButtonOk.Visible := False;
  ButtonSim.Visible := False;
  ButtonNao.Visible := False;

  TimerAlert.Enabled := False;

  FrmMensagem.Hint := '';

end;

procedure TFrmMensagem.FormShow(Sender: TObject);
begin
  LabelRespostaMensagem.Caption := 'False';

  if ButtonOk.Visible then
    ButtonOk.SetFocus;
end;

procedure TFrmMensagem.TimerAlertTimer(Sender: TObject);
begin
  GroupBoxBotton.Visible := True;
  ButtonOk.Visible := True;
  TimerAlert.Enabled := False;
  ButtonOk.SetFocus;
end;

end.
