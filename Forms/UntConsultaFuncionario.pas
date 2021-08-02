unit UntConsultaFuncionario;

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
  Vcl.Grids,
  Vcl.DBGrids,

  Data.DB,

  FireDAC.Stan.Param,

  UntBase,
  UntDataModule,
  UntComponentesGerais,
  UntBibliotecaFuncoes;

type
  TFrmConsultaFuncionario = class(TFrmBase)
    GroupBoxGrid: TGroupBox;
    GroupBoxFooter: TGroupBox;
    CheckBoxInativos: TCheckBox;
    ButtonFechar: TButton;
    GroupBoxHeader: TGroupBox;
    RadioButtonCPF: TRadioButton;
    RadioButtonNome: TRadioButton;
    RadioButtonCodigo: TRadioButton;
    EditConsultaFuncionario: TEdit;
    ButtonConsultar: TButton;
    DBGridConsultaFuncionario: TDBGrid;
    procedure ButtonConsultarClick(Sender: TObject);
    procedure ButtonFecharClick(Sender: TObject);
    procedure EditConsultaFuncionarioExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaFuncionario: TFrmConsultaFuncionario;

implementation

{$R *.dfm}

procedure TFrmConsultaFuncionario.ButtonConsultarClick(Sender: TObject);
begin
  inherited;
  try
    try
      // Faz a consulta dependendo do que esta marcado
      DM.FDQFuncionario.Close;

      DM.FDQFuncionario.SQL.Text := 'SELECT * FROM FUNCIONARIO WHERE STATUS ';

      // Seta o Tipo de Status
      if CheckBoxInativos.Checked then
        DM.FDQFuncionario.SQL.Text := DM.FDQFuncionario.SQL.Text + ' <> ''ATIVO'''
       else
        DM.FDQFuncionario.SQL.Text := DM.FDQFuncionario.SQL.Text + ' = ''ATIVO''';

      // Seta o tipo de pesquisa
      if RadioButtonNome.Checked then
      begin
        DM.FDQFuncionario.SQL.Text := DM.FDQFuncionario.SQL.Text + ' AND NOME CONTAINING :VALOR';
      end
      else if RadioButtonCPF.Checked then
      begin
        DM.FDQFuncionario.SQL.Text := DM.FDQFuncionario.SQL.Text + ' AND CPF CONTAINING :VALOR';
      end
      else if RadioButtonCodigo.Checked then
      begin
        DM.FDQFuncionario.SQL.Text := DM.FDQFuncionario.SQL.Text + ' AND CODIGO CONTAINING :VALOR';
      end;

      DM.FDQFuncionario.Params.ParamByName('VALOR').AsString :=  EditConsultaFuncionario.Text;

      DM.FDQFuncionario.Open;

      DBGridConsultaFuncionario.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaFuncionario.ButtonFecharClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmConsultaFuncionario.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaFuncionario.EditConsultaFuncionarioExit(Sender: TObject);
var
  cpf : string;
begin
  inherited;
  try
    try
      // Se estiver marcado para pesquisar pelo CPF
      if RadioButtonCPF.Checked = True then
      begin
        cpf := RemoveInvalid(ConstArrayNumeros, EditConsultaFuncionario.Text);
        // Se tiver os 11 caracteres ele vai validar o CPF senao vai apenas colocar a mascara
        if cpf.Length = 11 then
        begin
          if IdentificaCPF(cpf) then
            EditConsultaFuncionario.Text := ArrumarCPF(EditConsultaFuncionario.Text)
          else
            Mensagem(2,'CPF incorreto!');
        end
        else
          EditConsultaFuncionario.Text := ArrumarCPF(EditConsultaFuncionario.Text);
      end;

      ButtonConsultar.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
