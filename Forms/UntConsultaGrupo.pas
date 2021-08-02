unit UntConsultaGrupo;

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
  Vcl.ImgList,
  Vcl.StdCtrls,
  Vcl.Grids,
  Vcl.DBGrids,

  UntBase,
  UntDataModule,
  UntComponentesGerais,
  UntBibliotecaFuncoes,

  Data.DB;

type
  TFrmConsultaGrupo = class(TFrmBase)
    DBGridConsultaGrupo: TDBGrid;
    ButtonFecharConsultaGrupo: TButton;
    ButtonConsultar: TButton;
    EditConsultaGrupo: TEdit;
    Label1: TLabel;
    GroupBoxHeader: TGroupBox;
    GroupBoxFooter: TGroupBox;
    GroupBoxGrid: TGroupBox;
    procedure ButtonConsultarClick(Sender: TObject);
    procedure ButtonFecharConsultaGrupoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure EditConsultaGrupoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaGrupo: TFrmConsultaGrupo;

implementation

{$R *.dfm}

procedure TFrmConsultaGrupo.ButtonFecharConsultaGrupoClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmConsultaGrupo.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaGrupo.EditConsultaGrupoExit(Sender: TObject);
begin
  inherited;
  try
    try
      ButtonConsultar.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaGrupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  try
    try
      EditConsultaGrupo.Clear;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaGrupo.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      DM.FDQGrupo.Close;
      EditConsultaGrupo.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaGrupo.ButtonConsultarClick(Sender: TObject);
begin
  inherited;
  try
    try
      // Faz a pesquisa
      DM.FDQGrupo.Close;
      DM.FDQGrupo.SQL.Text := 'SELECT * FROM GRUPO WHERE DESCRICAO CONTAINING :DESCRICAO;';
      DM.FDQGrupo.Params.ParamByName('DESCRICAO').AsString := EditConsultaGrupo.Text;
      DM.FDQGrupo.Open;

      // Foca a grid
      DBGridConsultaGrupo.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
