unit UntConsultaFuncionarioServico;

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
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,

  Data.DB,

  FireDAC.Stan.Param,

  UntBase,
  UntBibliotecaFuncoes,
  UntComponentesGerais,
  UntDataModule;

type
  TFrmConsultaFuncionarioServico = class(TFrmBase)
    GroupBoxFooter: TGroupBox;
    ButtonFechar: TButton;
    GroupBoxHeader: TGroupBox;
    EditConsultaFuncionario: TEdit;
    ButtonConsultar: TButton;
    DBGridConsultaFuncionario: TDBGrid;
    Label1: TLabel;
    procedure ButtonConsultarClick(Sender: TObject);
    procedure DBGridConsultaFuncionarioExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditConsultaFuncionarioExit(Sender: TObject);
    procedure ButtonFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaFuncionarioServico: TFrmConsultaFuncionarioServico;

implementation

{$R *.dfm}

procedure TFrmConsultaFuncionarioServico.ButtonConsultarClick(Sender: TObject);
begin
  inherited;
  try
    try
      DM.FDQFuncionario.Close;
      DM.FDQFuncionario.SQL.Text := 'SELECT * FROM FUNCIONARIO WHERE TIPO = 2 OR (TIPO = 3) AND NOME CONTAINING :NOME';
      DM.FDQFuncionario.Params.ParamByName('NOME').AsString := EditConsultaFuncionario.Text;
      DM.FDQFuncionario.Open;

      if not (DM.FDQFuncionario.Eof) then
      begin
        DBGridConsultaFuncionario.SetFocus;
      end
      else
      begin
        Mensagem(2,'Funcionario não encontrado');
        EditConsultaFuncionario.SetFocus;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaFuncionarioServico.ButtonFecharClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmConsultaFuncionarioServico.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaFuncionarioServico.DBGridConsultaFuncionarioExit(
  Sender: TObject);
begin
  inherited;
  try
    try
      ButtonFechar.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaFuncionarioServico.EditConsultaFuncionarioExit(
  Sender: TObject);
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

procedure TFrmConsultaFuncionarioServico.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      DM.FDQFuncionario.Close;
      EditConsultaFuncionario.Clear;
      EditConsultaFuncionario.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
