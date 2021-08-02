unit UntCadastroGrupo;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Rtti,
  System.Bindings.Outputs,

  FireDAC.Stan.Param,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.Bind.Editors,
  Vcl.Bind.DBEngExt,

  UntBase,
  UntBibliotecaFuncoes,
  UntComponentesGerais,
  UntDataModule,

  Data.DB,
  Data.Bind.EngExt,
  Data.Bind.Components,
  Data.Bind.DBScope;

type
  TFrmCadastroGrupo = class(TFrmBase)
    GroupBoxInformacoesPrincipais: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBGridGrupo: TDBGrid;
    EditCodigo: TEdit;
    EditDescricao: TEdit;
    GroupBoxBotton: TGroupBox;
    ButtonAdicionar: TButton;
    ButtonGravar: TButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    procedure FormShow(Sender: TObject);
    procedure ButtonAdicionarClick(Sender: TObject);
    procedure ButtonGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditDescricaoExit(Sender: TObject);
  private
    procedure LimparCampos;
    procedure FecharQuerys;
    procedure GravarGrupo;
    procedure AtualizarCadastro;
    function VerificaGrupoCadastrado : Boolean;
    procedure PassaInfoParaQuery;
    procedure PassaInfoParaMemoryTable;
    procedure ConsultaGrupo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroGrupo: TFrmCadastroGrupo;

implementation

{$R *.dfm}


{ TFrmCadastroGrupo }

procedure TFrmCadastroGrupo.AtualizarCadastro;
begin
  try
    try
      // Abre a query com o registro do grupo
      DM.FDQGrupo.Close;
      DM.FDQGrupo.SQL.Text := 'SELECT * FROM GRUPO WHERE CODIGO = :CODIGO';
      DM.FDQGrupo.Params.ParamByName('CODIGO').AsInteger := StrToInt(EditCodigo.Text);
      DM.FDQGrupo.Open;

      DM.FDQGrupo.Edit;

      // Passa todos os campos para a query
      PassaInfoParaQuery;

      DM.FDQGrupo.Post;

      Mensagem(1,'Grupo atualizado com sucesso');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroGrupo.ButtonAdicionarClick(Sender: TObject);
begin
  inherited;
  try
    try
      LimparCampos;

      DM.FDMTGrupo.Open;
      DM.FDMTGrupo.First;
      DM.FDMTGrupo.Insert;

      EditDescricao.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroGrupo.ButtonGravarClick(Sender: TObject);
begin
  inherited;
  try
    try
      // Se nao tiver nome entao nao vai gravar
      if EditDescricao.Text = EmptyStr then
        Exit;

      // Se o codigo estiver vazio ele grava um novo registro senao ele atualiza o registro
      if EditCodigo.Text = EmptyStr then
      begin
        // Se nao encontrar o grupo ele cadastra
        if VerificaGrupoCadastrado then
        begin
          GravarGrupo;
        end;
      end
      else
      begin
        AtualizarCadastro;
      end;

      DBGridGrupo.Refresh;
      DM.FDMTGrupo.ApplyUpdates;
      DM.FDMTGrupo.Refresh;

      ButtonAdicionar.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroGrupo.ConsultaGrupo;
begin
  try
    try
      DM.FDQGrupo.Close;
      DM.FDQGrupo.SQL.Text := 'SELECT * FROM GRUPO ORDER BY CODIGO';
      DM.FDQGrupo.Open;

      DM.FDMTGrupo.Close;
      DM.FDMTGrupo.Open;

      DM.FDQGrupo.First;
      while not (DM.FDQGrupo.Eof)do
      begin
        DM.FDMTGrupo.Insert;
        PassaInfoParaMemoryTable;
        DM.FDMTGrupo.Post;

        DM.FDQGrupo.Next;
      end;

      DBGridGrupo.Refresh;
      DM.FDMTGrupo.ApplyUpdates;
      DM.FDMTGrupo.Refresh;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroGrupo.EditDescricaoExit(Sender: TObject);
begin
  inherited;
  try
    try
      ButtonGravar.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroGrupo.FecharQuerys;
begin
  try
    try
      DM.FDQConsulta.Close;
      DM.FDQContadores.Close;
      DM.FDQGrupo.Close;
      DM.FDMTGrupo.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroGrupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  try
    try
      FecharQuerys;
      LimparCampos;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroGrupo.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      FecharQuerys;
      LimparCampos;
      ConsultaGrupo;
      ButtonAdicionarClick(Sender);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroGrupo.GravarGrupo;
var
  ContadorGrupo : Integer;
begin
  try
    try
      // Abre a query do grupo
      DM.FDQGrupo.Close;
      DM.FDQGrupo.SQL.Text := 'SELECT * FROM GRUPO';
      DM.FDQGrupo.Open;
      DM.FDQGrupo.Insert;

      // Abre a query dos contadores
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;
      DM.FDQContadores.Locate('TABELA','GRUPO',[]);
      ContadorGrupo := DM.FDQContadores.FieldByName('VALOR').AsInteger + 1;

      DM.FDMTGrupo.FieldByName('CODIGO').AsInteger := ContadorGrupo;

      PassaInfoParaQuery;

      // Salva o registro
      DM.FDQGrupo.Post;

      // Atualiza os contadores
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorGrupo;
      DM.FDQContadores.Post;

      Mensagem(1,'Grupo cadastrado com sucesso');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroGrupo.LimparCampos;
begin
  try
    try
      EditCodigo.Clear;
      EditDescricao.Clear;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroGrupo.PassaInfoParaMemoryTable;
var
  I: Integer;
  NomeCampo: string;
begin
  // Passa todos os campos para o memorytable
  for I := 0 to (DM.FDQGrupo.FieldCount - 1) do
  begin
    NomeCampo := DM.FDQGrupo.Fields[I].FieldName;
    if (DM.FDMTGrupo.FindField(NomeCampo) <> nil) then
      DM.FDMTGrupo.FieldByName(NomeCampo).Value := DM.FDQGrupo.FieldByName(NomeCampo).Value;
  end;
end;

procedure TFrmCadastroGrupo.PassaInfoParaQuery;
var
  I: Integer;
  NomeCampo: string;
begin
  // Passa todos os campos para a query
  for I := 0 to (DM.FDMTGrupo.FieldCount - 1) do
  begin
    NomeCampo := DM.FDMTGrupo.Fields[I].FieldName;
    if (DM.FDQGrupo.FindField(NomeCampo) <> nil) then
      DM.FDQGrupo.FieldByName(NomeCampo).Value := DM.FDMTGrupo.FieldByName(NomeCampo).Value;
  end;
end;

function TFrmCadastroGrupo.VerificaGrupoCadastrado: Boolean;
begin
  try
    try
      // Consulta o cliente para ver se ja esta cadastrado
      DM.FDQConsulta.Close;
      DM.FDQConsulta.SQL.Text := 'SELECT * FROM GRUPO WHERE DESCRICAO = :DESCRICAO';
      DM.FDQConsulta.Params.ParamByName('DESCRICAO').AsString := EditDescricao.Text;
      DM.FDQConsulta.Open;

      // Se a consulta estiver vazia é porque nao tem o grupo cadastrado
      if DM.FDQConsulta.Eof then
      begin
        Result := True
      end
      else
      begin
        Mensagem(2,'Grupo já cadastrado' + sLineBreak + 'Codigo do grupo: ' + DM.FDQConsulta.FieldByName('CODIGO').AsString);
        Result := False;
      end;
    finally

    end;
  Except on E:Exception do
    begin
      Result := False;
      Mensagem(3,E.ToString);
    end;
  end;
end;

end.
