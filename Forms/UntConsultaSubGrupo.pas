unit UntConsultaSubGrupo;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.ImageList,

  FireDAC.Stan.Param,

  UntBase,
  UntDataModule,
  UntComponentesGerais,
  UntConsultaGrupo,
  UntBibliotecaFuncoes,

  Data.DB,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ImgList,
  Vcl.Grids,
  Vcl.DBGrids;

type
  TFrmConsultaSubGrupo = class(TFrmBase)
    EditDescricaoSubGrupo: TEdit;
    Label2: TLabel;
    DBGridConsultaSubGrupo: TDBGrid;
    ButtonFechar: TButton;
    ButtonConsultar: TButton;
    Label1: TLabel;
    EditCodigoGrupo: TEdit;
    ButtonConsultaGrupo: TButton;
    GroupBoxHeader: TGroupBox;
    GroupBoxFooter: TGroupBox;
    GroupBoxGrid: TGroupBox;
    procedure ButtonConsultarClick(Sender: TObject);
    procedure ButtonFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonConsultaGrupoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditDescricaoSubGrupoExit(Sender: TObject);
    procedure EditCodigoGrupoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaSubGrupo: TFrmConsultaSubGrupo;

implementation

{$R *.dfm}

procedure TFrmConsultaSubGrupo.ButtonConsultaGrupoClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmConsultaGrupo.ShowModal;
    finally
      // se estiver pesquisado o grupo ele adiciona o codigo
      if not (DM.FDQGrupo.State in [dsInactive]) then
       EditCodigoGrupo.Text := DM.FDQGrupo.FieldByName('CODIGO').AsString;

      EditCodigoGrupo.SetFocus;
    end;
  Except on E:Exception do
      Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaSubGrupo.ButtonConsultarClick(Sender: TObject);
begin
  inherited;
  try
    try
      // Se nao tiver o grupo informado
      if EditCodigoGrupo.Text = EmptyStr then
      begin
        EditCodigoGrupo.SetFocus;
        Mensagem(1,'Grupo Obrigatorio!');
        Exit;
      end;

      // Faz a pesquisa
      DM.FDQSubGrupo.Close;
      DM.FDQSubGrupo.SQL.Text := 'SELECT * FROM SUBGRUPO WHERE DESCRICAO CONTAINING :DESCRICAO AND GRUPO = :GRUPO;';
      DM.FDQSubGrupo.Params.ParamByName('DESCRICAO').AsString := EditDescricaoSubGrupo.Text;
      DM.FDQSubGrupo.Params.ParamByName('GRUPO').AsString := EditCodigoGrupo.Text;
      DM.FDQSubGrupo.Open;
      // Foca a grid
      DBGridConsultaSubGrupo.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaSubGrupo.ButtonFecharClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmConsultaSubGrupo.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaSubGrupo.EditCodigoGrupoExit(Sender: TObject);
begin
  inherited;
  try
    try
      if EditCodigoGrupo.Text = EmptyStr then
        ButtonConsultaGrupo.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaSubGrupo.EditDescricaoSubGrupoExit(Sender: TObject);
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

procedure TFrmConsultaSubGrupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  try
    try
      EditCodigoGrupo.Clear;
      EditDescricaoSubGrupo.Clear;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaSubGrupo.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      DM.FDQGrupo.Close;
      DM.FDQSubGrupo.Close;

      if EditCodigoGrupo.Text = EmptyStr then
        EditCodigoGrupo.SetFocus
      else
        EditDescricaoSubGrupo.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
