unit UntCadastroCidade;

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
  UntBibliotecaFuncoes,
  UntComponentesGerais,
  UntDataModule,

  Data.Bind.EngExt,
  Data.DB,
  Data.Bind.Components,
  Data.Bind.DBScope;

type
  TFrmCadastroCidade = class(TFrmBase)
    GroupBoxBotton: TGroupBox;
    ButtonAdicionar: TButton;
    ButtonGravar: TButton;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    EditNome: TEdit;
    Label5: TLabel;
    Label1: TLabel;
    EditCodigo: TEdit;
    ComboBoxEstado: TComboBox;
    DBGridCidade: TDBGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    procedure ButtonAdicionarClick(Sender: TObject);
    procedure ButtonGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBoxEstadoExit(Sender: TObject);
  private
    procedure LimparCampos;
    procedure FecharQuerys;
    procedure GravarCidade;
    procedure AtualizarCadastro;
    function VerificaCidadeCadastrado : Boolean;
    procedure PassaInfoParaQuery;
    procedure PassaInfoParaMemoryTable;
    procedure ConsultaCidade;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroCidade: TFrmCadastroCidade;

implementation

{$R *.dfm}

{ TFrmCadastroCidade }

procedure TFrmCadastroCidade.AtualizarCadastro;
begin
  try
    try
      // Abre a query com o registro da cidade
      DM.FDQCidade.Close;
      DM.FDQCidade.SQL.Text := 'SELECT * FROM CIDADE WHERE CODIGO = :CODIGO';
      DM.FDQCidade.Params.ParamByName('CODIGO').AsInteger := StrToInt(EditCodigo.Text);
      DM.FDQCidade.Open;

      DM.FDQCidade.Edit;

      // Passa todos os campos para a query
      PassaInfoParaQuery;

      DM.FDQCidade.Post;

      Mensagem(1,'Cidade atualizado com sucesso');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroCidade.ButtonAdicionarClick(Sender: TObject);
begin
  inherited;
  try
    try
      LimparCampos;

      DM.FDMTCidade.Open;
      DM.FDMTCidade.First;
      DM.FDMTCidade.Insert;

      EditNome.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroCidade.ButtonGravarClick(Sender: TObject);
begin
  inherited;
  try
    try
      // Se nao tiver nome entao nao vai gravar
      if EditNome.Text = EmptyStr then
        Exit;

      // Se o codigo estiver vazio ele grava um novo registro senao ele atualiza o registro
      if EditCodigo.Text = EmptyStr then
      begin
        // Se nao encontrar o grupo ele cadastra
        if VerificaCidadeCadastrado then
        begin
          GravarCidade;
        end;
      end
      else
      begin
        AtualizarCadastro;
      end;

      DBGridCidade.Refresh;
      DM.FDMTCidade.ApplyUpdates;
      DM.FDMTCidade.Refresh;

      ButtonAdicionar.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroCidade.ComboBoxEstadoExit(Sender: TObject);
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

procedure TFrmCadastroCidade.ConsultaCidade;
begin
  try
    try
      DM.FDQCidade.Close;
      DM.FDQCidade.SQL.Text := 'SELECT * FROM CIDADE ORDER BY CODIGO';
      DM.FDQCidade.Open;

      DM.FDMTCidade.Close;
      DM.FDMTCidade.Open;

      DM.FDQCidade.First;
      while not (DM.FDQCidade.Eof)do
      begin
        DM.FDMTCidade.Insert;
        PassaInfoParaMemoryTable;
        DM.FDMTCidade.Post;

        DM.FDQCidade.Next;
      end;

      DBGridCidade.Refresh;
      DM.FDMTCidade.ApplyUpdates;
      DM.FDMTCidade.Refresh;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroCidade.FecharQuerys;
begin
  try
    try
      DM.FDQConsulta.Close;
      DM.FDQContadores.Close;
      DM.FDQCidade.Close;
      DM.FDMTCidade.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroCidade.FormClose(Sender: TObject;
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

procedure TFrmCadastroCidade.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      FecharQuerys;
      LimparCampos;
      ConsultaCidade;
      ButtonAdicionarClick(Sender);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroCidade.GravarCidade;
var
  ContadorCidade : Integer;
begin
  try
    try
      // Abre a query do grupo
      DM.FDQCidade.Close;
      DM.FDQCidade.SQL.Text := 'SELECT * FROM CIDADE';
      DM.FDQCidade.Open;
      DM.FDQCidade.Insert;

      // Abre a query dos contadores
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;
      DM.FDQContadores.Locate('TABELA','CIDADE',[]);
      ContadorCidade := DM.FDQContadores.FieldByName('VALOR').AsInteger + 1;

      DM.FDMTCidade.FieldByName('CODIGO').AsInteger := ContadorCidade;

      PassaInfoParaQuery;

      // Salva o registro
      DM.FDQCidade.Post;

      // Atualiza os contadores
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorCidade;
      DM.FDQContadores.Post;

      Mensagem(1,'Cidade cadastrada com sucesso');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroCidade.LimparCampos;
begin
  try
    try
      EditCodigo.Clear;
      EditNome.Clear;
      ComboBoxEstado.Text := EmptyStr;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroCidade.PassaInfoParaMemoryTable;
var
  I: Integer;
  NomeCampo: string;
begin
  // Passa todos os campos para o memorytable
  for I := 0 to (DM.FDQCidade.FieldCount - 1) do
  begin
    NomeCampo := DM.FDQCidade.Fields[I].FieldName;
    if (DM.FDMTCidade.FindField(NomeCampo) <> nil) then
      DM.FDMTCidade.FieldByName(NomeCampo).Value := DM.FDQCidade.FieldByName(NomeCampo).Value;
  end;
end;

procedure TFrmCadastroCidade.PassaInfoParaQuery;
var
  I: Integer;
  NomeCampo: string;
begin
  // Passa todos os campos para a query
  for I := 0 to (DM.FDMTCidade.FieldCount - 1) do
  begin
    NomeCampo := DM.FDMTCidade.Fields[I].FieldName;
    if (DM.FDQCidade.FindField(NomeCampo) <> nil) then
      DM.FDQCidade.FieldByName(NomeCampo).Value := DM.FDMTCidade.FieldByName(NomeCampo).Value;
  end;
end;

function TFrmCadastroCidade.VerificaCidadeCadastrado: Boolean;
begin
  try
    try
      // Consulta o cliente para ver se ja esta cadastrado
      DM.FDQConsulta.Close;
      DM.FDQConsulta.SQL.Text := 'SELECT * FROM CIDADE WHERE NOME = :NOME';
      DM.FDQConsulta.Params.ParamByName('NOME').AsString := EditNome.Text;
      DM.FDQConsulta.Open;

      // Se a consulta estiver vazia é porque nao tem o grupo cadastrado
      if DM.FDQConsulta.Eof then
      begin
        Result := True
      end
      else
      begin
        Mensagem(2,'Cidade já cadastrada' + sLineBreak + 'Codigo da Cidade: ' + DM.FDQConsulta.FieldByName('CODIGO').AsString);
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
