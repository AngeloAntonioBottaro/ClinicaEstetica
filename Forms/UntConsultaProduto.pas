unit UntConsultaProduto;

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
  UntBibliotecaFuncoes,

  Data.DB,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ImgList,
  Vcl.StdCtrls,
  Vcl.Grids,
  Vcl.DBGrids;

type
  TFrmConsultaProduto = class(TFrmBase)
    GroupBoxHeader: TGroupBox;
    EditConsultaProduto: TEdit;
    ButtonConsultar: TButton;
    RadioButtonDescricao: TRadioButton;
    DBGridConsultaProduto: TDBGrid;
    ButtonFechar: TButton;
    CheckBoxInativos: TCheckBox;
    GroupBoxFooter: TGroupBox;
    GroupBoxGrid: TGroupBox;
    procedure ButtonFecharClick(Sender: TObject);
    procedure ButtonConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditConsultaProdutoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaProduto: TFrmConsultaProduto;

implementation

{$R *.dfm}

procedure TFrmConsultaProduto.ButtonConsultarClick(Sender: TObject);
begin
  inherited;
  try
    try
      // Se estiver para pesquisar por descrição
      if RadioButtonDescricao.Checked then
      begin
        DM.FDQProduto.Close;
        DM.FDQProduto.SQL.Text := 'SELECT * FROM PRODUTO WHERE DESCRICAO CONTAINING :DESCRICAO AND STATUS = :STATUS;';
        DM.FDQProduto.Params.ParamByName('DESCRICAO').AsString := EditConsultaProduto.Text;

        if CheckBoxInativos.Checked then
          DM.FDQProduto.Params.ParamByName('STATUS').AsString := 'INATIVO'
        else
          DM.FDQProduto.Params.ParamByName('STATUS').AsString := 'ATIVO';

        DM.FDQProduto.Open;
      end;
    finally
      // seta o foco na grid
      DBGridConsultaProduto.SetFocus;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaProduto.ButtonFecharClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmConsultaProduto.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaProduto.EditConsultaProdutoExit(Sender: TObject);
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

procedure TFrmConsultaProduto.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      DM.FDQProduto.Close;
      CheckBoxInativos.Checked := False;
      EditConsultaProduto.Text := EmptyStr;
      EditConsultaProduto.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
