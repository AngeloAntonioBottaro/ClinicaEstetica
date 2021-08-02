unit UntCadastroHistoricoCaixa;

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

  FireDAC.Stan.Param,

  UntBase,
  UntBibliotecaFuncoes,
  UntDataModule,
  UntComponentesGerais,

  Data.DB, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

type
  TFrmCadastroHistoricoCaixa = class(TFrmBase)
    GroupBoxInformacoesPrincipais: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBGridHistoCaixa: TDBGrid;
    EditCodigo: TEdit;
    EditDescricao: TEdit;
    GroupBoxBotton: TGroupBox;
    ButtonAdicionar: TButton;
    ButtonGravar: TButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    procedure ButtonAdicionarClick(Sender: TObject);
    procedure ButtonGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure LimparCampos;
    procedure FecharQuerys;
    procedure GravarHistorico;
    procedure AtualizarCadastro;
    function VerificaHistoricoCadastrado : Boolean;
    procedure PassaInfoParaQuery;
    procedure PassaInfoParaMemoryTable;
    procedure ConsultaHistorico;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroHistoricoCaixa: TFrmCadastroHistoricoCaixa;

implementation

{$R *.dfm}

{ TFrmCadastroHistoricoCaixa }

procedure TFrmCadastroHistoricoCaixa.AtualizarCadastro;
begin
  try
    try
      // Abre a query com o registro do historico
      DM.FDQHistoCaixa.Close;
      DM.FDQHistoCaixa.SQL.Text := 'SELECT * FROM HISTOCAIXA WHERE CODIGO = :CODIGO';
      DM.FDQHistoCaixa.Params.ParamByName('CODIGO').AsInteger := StrToInt(EditCodigo.Text);
      DM.FDQHistoCaixa.Open;

      DM.FDQHistoCaixa.Edit;

      // Passa todos os campos para a query
      PassaInfoParaQuery;

      DM.FDQHistoCaixa.Post;

      Mensagem(1,'Historico de caixa atualizado com sucesso');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroHistoricoCaixa.ButtonAdicionarClick(Sender: TObject);
begin
  inherited;
  try
    try
      LimparCampos;

      DM.FDMTHistoCaixa.Open;
      DM.FDMTHistoCaixa.First;
      DM.FDMTHistoCaixa.Insert;

      EditDescricao.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroHistoricoCaixa.ButtonGravarClick(Sender: TObject);
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
        // Se nao encontrar a forma de pagamento ele cadastra
        if VerificaHistoricoCadastrado then
        begin
          GravarHistorico;
        end;
      end
      else
      begin
        AtualizarCadastro;
      end;

      DBGridHistoCaixa.Refresh;
      DM.FDMTHistoCaixa.ApplyUpdates;
      DM.FDMTHistoCaixa.Refresh;

      ButtonAdicionar.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroHistoricoCaixa.ConsultaHistorico;
begin
  try
    try
      DM.FDQHistoCaixa.Close;
      DM.FDQHistoCaixa.SQL.Text := 'SELECT * FROM HISTOCAIXA ORDER BY CODIGO';
      DM.FDQHistoCaixa.Open;

      DM.FDMTHistoCaixa.Close;
      DM.FDMTHistoCaixa.Open;

      DM.FDQHistoCaixa.First;
      while not (DM.FDQHistoCaixa.Eof)do
      begin
        DM.FDMTHistoCaixa.Insert;
        PassaInfoParaMemoryTable;
        DM.FDMTHistoCaixa.Post;

        DM.FDQHistoCaixa.Next;
      end;

      DBGridHistoCaixa.Refresh;
      DM.FDMTHistoCaixa.ApplyUpdates;
      DM.FDMTHistoCaixa.Refresh;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroHistoricoCaixa.FecharQuerys;
begin
  try
    try
      DM.FDQConsulta.Close;
      DM.FDQContadores.Close;
      DM.FDQHistoCaixa.Close;
      DM.FDMTHistoCaixa.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroHistoricoCaixa.FormClose(Sender: TObject;
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

procedure TFrmCadastroHistoricoCaixa.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      FecharQuerys;
      LimparCampos;
      ConsultaHistorico;
      ButtonAdicionarClick(Sender);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroHistoricoCaixa.GravarHistorico;
var
  ContadorHistocaixa : Integer;
begin
  try
    try
      // Abre a query do hisotico
      DM.FDQHistoCaixa.Close;
      DM.FDQHistoCaixa.SQL.Text := 'SELECT * FROM HISTOCAIXA';
      DM.FDQHistoCaixa.Open;
      DM.FDQHistoCaixa.Insert;

      // Abre a query dos contadores
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;
      DM.FDQContadores.Locate('TABELA','HISTOCAIXA',[]);
      ContadorHistocaixa := DM.FDQContadores.FieldByName('VALOR').AsInteger + 1;

      DM.FDMTHistoCaixa.FieldByName('CODIGO').AsInteger := ContadorHistocaixa;

      PassaInfoParaQuery;

      // Salva o registro
      DM.FDQHistoCaixa.Post;

      // Atualiza os contadores
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorHistocaixa;
      DM.FDQContadores.Post;

      Mensagem(1,'Historico cadastrado com sucesso');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroHistoricoCaixa.LimparCampos;
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

procedure TFrmCadastroHistoricoCaixa.PassaInfoParaMemoryTable;
var
  I: Integer;
  NomeCampo: string;
begin
  // Passa todos os campos para o memorytable
  for I := 0 to (DM.FDQHistoCaixa.FieldCount - 1) do
  begin
    NomeCampo := DM.FDQHistoCaixa.Fields[I].FieldName;
    if (DM.FDMTHistoCaixa.FindField(NomeCampo) <> nil) then
      DM.FDMTHistoCaixa.FieldByName(NomeCampo).Value := DM.FDQHistoCaixa.FieldByName(NomeCampo).Value;
  end;
end;

procedure TFrmCadastroHistoricoCaixa.PassaInfoParaQuery;
var
  I: Integer;
  NomeCampo: string;
begin
  // Passa todos os campos para a query
  for I := 0 to (DM.FDMTHistoCaixa.FieldCount - 1) do
  begin
    NomeCampo := DM.FDMTHistoCaixa.Fields[I].FieldName;
    if (DM.FDQHistoCaixa.FindField(NomeCampo) <> nil) then
      DM.FDQHistoCaixa.FieldByName(NomeCampo).Value := DM.FDMTHistoCaixa.FieldByName(NomeCampo).Value;
  end;
end;

function TFrmCadastroHistoricoCaixa.VerificaHistoricoCadastrado: Boolean;
begin
  try
    try
      // Consulta o cliente para ver se ja esta cadastrado
      DM.FDQConsulta.Close;
      DM.FDQConsulta.SQL.Text := 'SELECT * FROM HISTOCAIXA WHERE DESCRICAO = :DESCRICAO';
      DM.FDQConsulta.Params.ParamByName('DESCRICAO').AsString := EditDescricao.Text;
      DM.FDQConsulta.Open;

      // Se a consulta estiver vazia é porque nao tem o grupo cadastrado
      if DM.FDQConsulta.Eof then
      begin
        Result := True
      end
      else
      begin
        Mensagem(2,'Historico já cadastrado' + sLineBreak + 'Codigo do historico: ' + DM.FDQConsulta.FieldByName('CODIGO').AsString);
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
