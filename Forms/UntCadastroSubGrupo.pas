unit UntCadastroSubGrupo;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Rtti,
  System.Bindings.Outputs,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.Bind.Editors,
  Vcl.Bind.DBEngExt,

  FireDAC.Stan.Param,

  UntBase,
  UntConsultaGrupo,
  UntBibliotecaFuncoes,
  UntComponentesGerais,
  UntDataModule,

  Data.DB,
  Data.Bind.EngExt,
  Data.Bind.Components,
  Data.Bind.DBScope;

type
  TFrmCadastroSubGrupo = class(TFrmBase)
    GroupBoxInformacoesPrincipais: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGridSubGrupo: TDBGrid;
    EditCodigo: TEdit;
    EditDescricao: TEdit;
    EditCodigoGrupo: TEdit;
    ButtonConsultaGrupo: TButton;
    GroupBoxBotton: TGroupBox;
    ButtonAdicionar: TButton;
    ButtonGravar: TButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    procedure ButtonConsultaGrupoClick(Sender: TObject);
    procedure ButtonAdicionarClick(Sender: TObject);
    procedure ButtonGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditCodigoGrupoExit(Sender: TObject);
    procedure EditDescricaoExit(Sender: TObject);
  private
    procedure LimparCampos;
    procedure FecharQuerys;
    procedure GravarSubGrupo;
    procedure AtualizarCadastro;
    function VerificaSubGrupoCadastrado : Boolean;
    procedure PassaInfoParaQuery;
    procedure PassaInfoParaMemoryTable;
    procedure ConsultaSubGrupo;
    procedure ConsultaGrupo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroSubGrupo: TFrmCadastroSubGrupo;

implementation

{$R *.dfm}

procedure TFrmCadastroSubGrupo.AtualizarCadastro;
begin
  try
    try
      // Abre a query com o registro do Subgrupo
      DM.FDQSubGrupo.Close;
      DM.FDQSubGrupo.SQL.Text := 'SELECT * FROM SUBGRUPO WHERE CODIGO = :CODIGO';
      DM.FDQSubGrupo.Params.ParamByName('CODIGO').AsInteger := StrToInt(EditCodigo.Text);
      DM.FDQSubGrupo.Open;

      DM.FDQSubGrupo.Edit;

      // Passa todos os campos para a query
      PassaInfoParaQuery;

      DM.FDQSubGrupo.Post;

      Mensagem(1,'Sub-Grupo atualizado com sucesso');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroSubGrupo.ButtonAdicionarClick(Sender: TObject);
begin
  inherited;
  try
    try
      LimparCampos;

      DM.FDMTSubGrupo.Open;
      DM.FDMTSubGrupo.First;
      DM.FDMTSubGrupo.Insert;

      EditCodigoGrupo.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroSubGrupo.ButtonConsultaGrupoClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmConsultaGrupo.ShowModal;
    finally
      if not (DM.FDQGrupo.Eof) then
      begin
        DM.FDMTSubGrupo.FieldByName('GRUPO').AsInteger := DM.FDQGrupo.FieldByName('CODIGO').AsInteger;
      end;
      EditCodigoGrupo.SetFocus;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroSubGrupo.ButtonGravarClick(Sender: TObject);
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
        // Se nao encontrar o subGrupo ele cadastra
        if VerificaSubGrupoCadastrado then
        begin
          GravarSubGrupo;
        end;
      end
      else
      begin
        AtualizarCadastro;
      end;

      DBGridSubGrupo.Refresh;
      DM.FDMTSubGrupo.ApplyUpdates;
      DM.FDMTSubGrupo.Refresh;

      ButtonAdicionar.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroSubGrupo.ConsultaGrupo;
begin
  try
    try
      DM.FDQGrupo.Close;
      DM.FDQGrupo.SQL.Text := 'SELECT * FROM GRUPO WHERE CODIGO = :CODIGO';
      DM.FDQGrupo.Params.ParamByName('CODIGO').AsInteger := StrToInt(EditCodigoGrupo.Text);
      DM.FDQGrupo.Open;

      if DM.FDQGrupo.Eof then
      begin
        Mensagem(2,'Grupo não cadastrado');
        DM.FDMTSubGrupo.FieldByName('GRUPO').AsString := EmptyStr;
        EditCodigoGrupo.Clear;
        EditCodigoGrupo.SetFocus;
        Exit;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroSubGrupo.ConsultaSubGrupo;
begin
  try
    try
      DM.FDQSubGrupo.Close;
      DM.FDQSubGrupo.SQL.Text := 'SELECT * FROM SUBGRUPO ORDER BY CODIGO';
      DM.FDQSubGrupo.Open;

      DM.FDMTSubGrupo.Close;
      DM.FDMTSubGrupo.Open;

      DM.FDQSubGrupo.First;
      while not (DM.FDQSubGrupo.Eof)do
      begin
        DM.FDMTSubGrupo.Insert;
        PassaInfoParaMemoryTable;
        DM.FDMTSubGrupo.Post;

        DM.FDQSubGrupo.Next;
      end;

      DBGridSubGrupo.Refresh;
      DM.FDMTSubGrupo.ApplyUpdates;
      DM.FDMTSubGrupo.Refresh;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroSubGrupo.EditCodigoGrupoExit(Sender: TObject);
begin
  inherited;
  try
    try
      if not (EditCodigoGrupo.Text = EmptyStr) then
        ConsultaGrupo;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroSubGrupo.EditDescricaoExit(Sender: TObject);
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

procedure TFrmCadastroSubGrupo.FecharQuerys;
begin
  try
    try
      DM.FDQConsulta.Close;
      DM.FDQContadores.Close;
      DM.FDQGrupo.Close;
      DM.FDQSubGrupo.Close;
      DM.FDMTSubGrupo.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroSubGrupo.FormClose(Sender: TObject;
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

procedure TFrmCadastroSubGrupo.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      FecharQuerys;
      LimparCampos;
      ConsultaSubGrupo;
      ButtonAdicionarClick(Sender);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroSubGrupo.GravarSubGrupo;
var
  ContadorSubGrupo : Integer;
begin
  try
    try
      // Abre a query do subgrupo
      DM.FDQSubGrupo.Close;
      DM.FDQSubGrupo.SQL.Text := 'SELECT * FROM SUBGRUPO';
      DM.FDQSubGrupo.Open;
      DM.FDQSubGrupo.Insert;

      // Abre a query dos contadores
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;
      DM.FDQContadores.Locate('TABELA','SUBGRUPO',[]);
      ContadorSubGrupo := DM.FDQContadores.FieldByName('VALOR').AsInteger + 1;

      DM.FDMTSubGrupo.FieldByName('CODIGO').AsInteger := ContadorSubGrupo;

      PassaInfoParaQuery;

      // Salva o registro
      DM.FDQSubGrupo.Post;

      // Atualiza os contadores
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorSubGrupo;
      DM.FDQContadores.Post;

      Mensagem(1,'Sub-Grupo cadastrado com sucesso');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroSubGrupo.LimparCampos;
begin
  try
    try
      EditCodigo.Clear;
      EditDescricao.Clear;
      EditCodigoGrupo.Clear;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroSubGrupo.PassaInfoParaMemoryTable;
var
  I: Integer;
  NomeCampo: string;
begin
  // Passa todos os campos para o memorytable
  for I := 0 to (DM.FDQSubGrupo.FieldCount - 1) do
  begin
    NomeCampo := DM.FDQSubGrupo.Fields[I].FieldName;
    if (DM.FDMTSubGrupo.FindField(NomeCampo) <> nil) then
      DM.FDMTSubGrupo.FieldByName(NomeCampo).Value := DM.FDQSubGrupo.FieldByName(NomeCampo).Value;
  end;
end;

procedure TFrmCadastroSubGrupo.PassaInfoParaQuery;
var
  I: Integer;
  NomeCampo: string;
begin
  // Passa todos os campos para a query
  for I := 0 to (DM.FDMTSubGrupo.FieldCount - 1) do
  begin
    NomeCampo := DM.FDMTSubGrupo.Fields[I].FieldName;
    if (DM.FDQSubGrupo.FindField(NomeCampo) <> nil) then
      DM.FDQSubGrupo.FieldByName(NomeCampo).Value := DM.FDMTSubGrupo.FieldByName(NomeCampo).Value;
  end;
end;

function TFrmCadastroSubGrupo.VerificaSubGrupoCadastrado: Boolean;
begin
  try
    try
      // Consulta o cliente para ver se ja esta cadastrado
      DM.FDQConsulta.Close;
      DM.FDQConsulta.SQL.Text := 'SELECT * FROM SUBGRUPO WHERE DESCRICAO = :DESCRICAO AND GRUPO = :GRUPO';
      DM.FDQConsulta.Params.ParamByName('DESCRICAO').AsString := EditDescricao.Text;
      DM.FDQConsulta.Params.ParamByName('GRUPO').AsInteger := StrToInt(EditCodigoGrupo.Text);
      DM.FDQConsulta.Open;

      // Se a consulta estiver vazia é porque nao tem o subgrupo cadastrado
      if DM.FDQConsulta.Eof then
      begin
        Result := True
      end
      else
      begin
        Mensagem(2,'Sub-Grupo já cadastrado' + sLineBreak + 'Codigo do sub-grupo: ' + DM.FDQConsulta.FieldByName('CODIGO').AsString);
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
