unit UntCadastroProduto;

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
  Vcl.Bind.DBEngExt,
  Vcl.Bind.Editors,
  Vcl.StdCtrls,

  FireDAC.Stan.Param,

  Data.Bind.Components,
  Data.Bind.EngExt,
  Data.DB,

  UntBase,
  UntBibliotecaFuncoes,
  UntComponentesGerais,
  UntDataModule,
  Data.Bind.DBScope,
  UntConsultaProduto,
  UntConsultaGrupo,
  UntConsultaSubGrupo, Vcl.ComCtrls;

type
  TFrmCadastroProduto = class(TFrmBase)
    GroupBoxInformacoesPrincipais: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    LabelObservacao: TLabel;
    EditCodigo: TEdit;
    EditDescricao: TEdit;
    EditCodigoGrupo: TEdit;
    ButtonConsultaGrupo: TButton;
    EditCodigoSubGrupo: TEdit;
    ButtonConsultaSubGrupo: TButton;
    ComboBoxTipo: TComboBox;
    ComboBoxStatus: TComboBox;
    EditUnidade: TEdit;
    EditPrecoCompra: TEdit;
    EditPrecoVenda: TEdit;
    EditEstoque: TEdit;
    EditObservacao: TEdit;
    EditObservacao1: TEdit;
    GroupBoxBotton: TGroupBox;
    ButtonAdicionar: TButton;
    ButtonConsultar: TButton;
    ButtonGravar: TButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    LinkFillControlToField2: TLinkFillControlToField;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField8: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    LinkControlToField9: TLinkControlToField;
    LinkControlToField10: TLinkControlToField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label11: TLabel;
    EditEstoqueMinimo: TEdit;
    Label12: TLabel;
    EditEstoqueMaximo: TEdit;
    LinkControlToField11: TLinkControlToField;
    LinkControlToField12: TLinkControlToField;
    procedure ButtonAdicionarClick(Sender: TObject);
    procedure ButtonGravarClick(Sender: TObject);
    procedure ButtonConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditCodigoExit(Sender: TObject);
    procedure ButtonConsultaGrupoClick(Sender: TObject);
    procedure ButtonConsultaSubGrupoClick(Sender: TObject);
    procedure EditObservacaoKeyPress(Sender: TObject; var Key: Char);
    procedure EditObservacao1KeyPress(Sender: TObject; var Key: Char);
    procedure EditCodigoGrupoExit(Sender: TObject);
    procedure EditCodigoSubGrupoExit(Sender: TObject);
    procedure EditObservacao1Exit(Sender: TObject);
    procedure EditEstoqueMaximoExit(Sender: TObject);
  private
    procedure LimparCampos;
    procedure FecharQuerys;
    procedure GravarProduto;
    procedure AtualizarCadastro;
    function VerificaProdutoCadastrado : Boolean;
    procedure PassaInfoParaQuery;
    procedure PassaInfoParaMemoryTable;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroProduto: TFrmCadastroProduto;

implementation

{$R *.dfm}

{ TFrmCadastroProduto }

procedure TFrmCadastroProduto.AtualizarCadastro;
begin
  try
    try
      // Abre a query com o registro do cliente
      DM.FDQProduto.Close;
      DM.FDQProduto.SQL.Text := 'SELECT * FROM PRODUTO WHERE CODIGO = :CODIGO';
      DM.FDQProduto.Params.ParamByName('CODIGO').AsInteger := StrToInt(EditCodigo.Text);
      DM.FDQProduto.Open;

      DM.FDQProduto.Edit;

      // Passa todos os campos para a query
      PassaInfoParaQuery;

      DM.FDQProduto.Post;

      Mensagem(1,'Produto atualizado com sucesso');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroProduto.ButtonAdicionarClick(Sender: TObject);
begin
  inherited;
  try
    try
      FecharQuerys;
      LimparCampos;

      DM.FDMTProduto.Open;
      DM.FDMTProduto.Insert;

      EditDescricao.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroProduto.ButtonConsultaGrupoClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmConsultaGrupo.ShowModal;
    finally
      if not (DM.FDQGrupo.Eof) then
      begin
        DM.FDMTProduto.FieldByName('GRUPO').AsInteger := DM.FDQGrupo.FieldByName('CODIGO').AsInteger;
      end;
      EditCodigoGrupo.SetFocus;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroProduto.ButtonConsultarClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmConsultaProduto.ShowModal;
    finally
      if not (DM.FDQProduto.Eof) then
      begin
        DM.FDMTProduto.Open;
        DM.FDMTProduto.Insert;

        PassaInfoParaMemoryTable;

        DM.FDMTProduto.Post;
        DM.FDMTProduto.Edit;
      end;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroProduto.ButtonConsultaSubGrupoClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmConsultaSubGrupo.EditCodigoGrupo.Text := DM.FDMTProduto.FieldByName('GRUPO').AsString;
      FrmConsultaSubGrupo.ShowModal;
    finally
      if not (DM.FDQSubGrupo.Eof) then
      begin
        DM.FDMTProduto.FieldByName('SUBGRUPO').AsInteger := DM.FDQSubGrupo.FieldByName('CODIGO').AsInteger;
      end;
    end;
    EditCodigoSubGrupo.SetFocus;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroProduto.ButtonGravarClick(Sender: TObject);
begin
  inherited;
  try
    try
      // Se nao tiver descricao entao nao vai gravar
      if EditDescricao.Text = EmptyStr then
        Exit;

      // Se o codigo estiver vazio ele grava um novo registro senao ele atualiza o registro
      if EditCodigo.Text = EmptyStr then
      begin
        // Se nao encontrar o produto ele cadastra
        if VerificaProdutoCadastrado then
        begin
          GravarProduto;
        end;
      end
      else
      begin
        AtualizarCadastro;
      end;

      ButtonAdicionar.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroProduto.EditCodigoExit(Sender: TObject);
begin
  inherited;
  try
    try
      // Se tiver colocado algum codigo ele pesquisa o cliente
      if not (EditCodigo.Text = EmptyStr) then
      begin
        DM.FDQProduto.Close;
        DM.FDQProduto.SQL.Text := 'SELECT * FROM PRODUTO WHERE CODIGO = :CODIGO';
        DM.FDQProduto.Params.ParamByName('CODIGO').AsString := EditCodigo.Text;
        DM.FDQProduto.Open;

        // Se nao tiver achado o cliente ele inicia um novo
        if DM.FDQProduto.Eof then
        begin
          ButtonAdicionarClick(Sender);
        end
        else
        begin
          // Senao vai colocar as informaçoes do cliente na tela
          PassaInfoParaMemoryTable;
        end;
      end
      else
      begin
        // Se o codigo estiver vazio ele limpa tudo e começa do zero
        ButtonAdicionarClick(Sender);
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroProduto.EditCodigoGrupoExit(Sender: TObject);
begin
  inherited;
  try
    try
      // Se estiver preenchido vai pesquisar se existe o grupo
      if not (EditCodigoGrupo.Text = EmptyStr) then
      begin
        DM.FDQConsulta.Close;
        DM.FDQConsulta.SQL.Text := 'SELECT * FROM GRUPO WHERE CODIGO = :CODIGO ';
        DM.FDQConsulta.Params.ParamByName('CODIGO').AsString := EditCodigoGrupo.Text;
        DM.FDQConsulta.Open;

        if DM.FDQConsulta.Eof then
        begin
          Mensagem(2,'Grupo não cadastrado');
          DM.FDMTProduto.FieldByName('GRUPO').AsString := EmptyStr;
          ButtonConsultaGrupo.SetFocus;
          Exit;
        end;

        DM.FDQConsulta.Close;
        EditCodigoSubGrupo.SetFocus;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroProduto.EditCodigoSubGrupoExit(Sender: TObject);
begin
  inherited;
  try
    try
      // Se estiver preenchido vai pesquisar se existe o subgrupo
      if not (EditCodigoSubGrupo.Text = EmptyStr) then
      begin
        DM.FDQConsulta.Close;
        DM.FDQConsulta.SQL.Text := 'SELECT * FROM SUBGRUPO WHERE CODIGO = :CODIGO AND GRUPO = :GRUPO ';
        DM.FDQConsulta.Params.ParamByName('CODIGO').AsString := EditCodigoSubGrupo.Text;
        DM.FDQConsulta.Params.ParamByName('GRUPO').AsString := EditCodigoGrupo.Text;
        DM.FDQConsulta.Open;

        if DM.FDQConsulta.Eof then
        begin
          Mensagem(2,'Sub-Grupo incorreto para o grupo informado ou sub-grupo não cadastrado');
          DM.FDMTProduto.FieldByName('SUBGRUPO').AsString := EmptyStr;
          ButtonConsultaSubGrupo.SetFocus;
          Exit;
        end;

        DM.FDQConsulta.Close;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroProduto.EditEstoqueMaximoExit(Sender: TObject);
begin
  inherited;
  try
    try
      ButtonGravar.SetFocus;

      if not (EditEstoqueMinimo.Text = EmptyStr) then
      begin
        if EditEstoqueMaximo.Text = EmptyStr then
          EditEstoqueMaximo.Text := '0';

        if StrToFloat(EditEstoqueMaximo.Text) < StrToFloat(EditEstoqueMinimo.Text) then
        begin
          Mensagem(2,'Estoque maximo tem que ser maior que o estoque minimo');
          EditEstoqueMaximo.SetFocus;
          EditEstoqueMaximo.Clear;
        end;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroProduto.EditObservacao1Exit(Sender: TObject);
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

procedure TFrmCadastroProduto.EditObservacao1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  try
    try
      // Se chegar no limite ele passa para o proximo campo
      if Length(EditObservacao1.Text) >= 99 then
      begin
        // Se nao for o delete ou o Back Space entao ele passa para o proximo
        if not ((Key = #8) or (Key = #46)) then
        begin
          Mensagem(2,'Limite atingido');
          ButtonGravar.SetFocus;
        end;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroProduto.EditObservacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  try
    try
      // Se chegar no limite ele passa para o proximo campo
      if Length(EditObservacao.Text) >= 99 then
      begin
        // Se nao for o delete ou o Back Space entao ele passa para o proximo
        if not ((Key = #8) or (Key = #46)) then
          EditObservacao1.SetFocus;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroProduto.FecharQuerys;
begin
  try
    try
      DM.FDQProduto.Close;
      DM.FDQContadores.Close;
      DM.FDQConsulta.Close;
      DM.FDMTProduto.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroProduto.FormClose(Sender: TObject;
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

procedure TFrmCadastroProduto.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      // Estoque Manual
      EditEstoque.Enabled := DM.FDQParametros.FieldByName('CONTROLARESTOQUEMANUAL').AsBoolean;

      ButtonAdicionarClick(Sender);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroProduto.GravarProduto;
var
  ContadorProduto : Integer;
begin
  try
    try
      // Abre a query do cliente
      DM.FDQProduto.Close;
      DM.FDQProduto.SQL.Text := 'SELECT * FROM PRODUTO';
      DM.FDQProduto.Open;
      DM.FDQProduto.Insert;

      // Abre a query dos contadores
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;
      DM.FDQContadores.Locate('TABELA','PRODUTO',[]);
      ContadorProduto := DM.FDQContadores.FieldByName('VALOR').AsInteger + 1;

      // Coloca os campos faltando no memoryTable
      DM.FDMTProduto.FieldByName('CODIGO').AsInteger := ContadorProduto;
      DM.FDMTProduto.FieldByName('DATACADASTRO').AsDateTime := Date;

      if DM.FDMTProduto.FieldByName('ESTOQUE').AsString = EmptyStr then
        DM.FDMTProduto.FieldByName('ESTOQUE').AsInteger := 0;

      if ComboBoxStatus.Text = EmptyStr then
        DM.FDMTProduto.FieldByName('STATUS').AsString := 'ATIVO'
      else
        DM.FDMTProduto.FieldByName('STATUS').AsString := ComboBoxStatus.Text;

      PassaInfoParaQuery;

      // Salva o registro
      DM.FDQProduto.Post;

      // Atualiza os contadores
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorProduto;
      DM.FDQContadores.Post;

      Mensagem(1,'Produto cadastrado com sucesso');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroProduto.LimparCampos;
var
  I : Integer;
begin
  try
    try
      for I := 0 to FrmCadastroProduto.ComponentCount - 1 do
      begin
        if Components[i] is TEdit then
          TEdit(FrmCadastroProduto.Components[i]).Clear;
        if Components[i] is TComboBox then
          TComboBox(FrmCadastroProduto.Components[i]).ItemIndex := 0;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroProduto.PassaInfoParaMemoryTable;
var
  I: Integer;
  NomeCampo: string;
begin
  // Se tiver informação ele passa para o memorytable
  for I := 0 to (DM.FDQProduto.FieldCount - 1) do
  begin
    NomeCampo := DM.FDQProduto.Fields[I].FieldName;
    if (DM.FDMTProduto.FindField(NomeCampo) <> nil) then
      DM.FDMTProduto.FieldByName(NomeCampo).Value := DM.FDQProduto.FieldByName(NomeCampo).Value;
  end;
end;

procedure TFrmCadastroProduto.PassaInfoParaQuery;
var
  I: Integer;
  NomeCampo: string;
begin
  // Passa todos os campos para a query
  for I := 0 to (DM.FDMTProduto.FieldCount - 1) do
  begin
    NomeCampo := DM.FDMTProduto.Fields[I].FieldName;
    if (DM.FDQProduto.FindField(NomeCampo) <> nil) then
      DM.FDQProduto.FieldByName(NomeCampo).Value := DM.FDMTProduto.FieldByName(NomeCampo).Value;
  end;
end;

function TFrmCadastroProduto.VerificaProdutoCadastrado: Boolean;
begin
  try
    try
      // Consulta o produto para ver se ja esta cadastrado
      DM.FDQConsulta.Close;
      DM.FDQConsulta.SQL.Text := 'SELECT * FROM PRODUTO WHERE DESCRICAO = :DESCRICAO';
      DM.FDQConsulta.Params.ParamByName('DESCRICAO').AsString := EditDescricao.Text;
      DM.FDQConsulta.Open;

      // Se a consulta estiver vazia é porque nao tem o produto cadastrado
      if DM.FDQConsulta.Eof then
      begin
        Result := True
      end
      else
      begin
        Mensagem(2,'Produto já cadastrado' + sLineBreak + 'Codigo do produto: ' + DM.FDQConsulta.FieldByName('CODIGO').AsString);
        Result := False;
      end;
    finally

    end;
  Except on E:Exception do
    begin
      Mensagem(3,E.ToString);
      Result := False;
    end;
  end;
end;

end.
