unit UntCadastroFornecedor;

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
  Vcl.Bind.Editors,
  Vcl.Bind.DBEngExt,

  UntBase,
  UntBibliotecaFuncoes,
  UntComponentesGerais,
  UntDataModule,

  FireDAC.Stan.Param,

  Data.DB,
  Data.Bind.EngExt,
  Data.Bind.Components,
  Data.Bind.DBScope, UntConsultaFornecedor;

type
  TFrmCadastroFornecedor = class(TFrmBase)
    GroupBoxBotton: TGroupBox;
    ButtonAdicionar: TButton;
    ButtonConsultar: TButton;
    ButtonGravar: TButton;
    GroupBoxClient: TGroupBox;
    Label1: TLabel;
    Label16: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label18: TLabel;
    EditCodigo: TEdit;
    EditEmail: TEdit;
    EditRG: TEdit;
    EditCPF: TEdit;
    EditNomeFantasia: TEdit;
    EditEndereco: TEdit;
    EditCep: TEdit;
    EditBairro: TEdit;
    EditTelefone: TEdit;
    EditCelular: TEdit;
    ComboBoxStatus: TComboBox;
    EditObservacao: TEdit;
    EditObservacao1: TEdit;
    ComboBoxCidade: TComboBox;
    EditRazaoSocial: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    EditCNPJ: TEdit;
    Label12: TLabel;
    EditInscricaoEstadual: TEdit;
    Label15: TLabel;
    EditRepresentante: TEdit;
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
    LinkControlToField7: TLinkControlToField;
    LinkControlToField8: TLinkControlToField;
    LinkControlToField9: TLinkControlToField;
    LinkControlToField10: TLinkControlToField;
    LinkControlToField11: TLinkControlToField;
    LinkControlToField12: TLinkControlToField;
    LinkControlToField13: TLinkControlToField;
    LinkControlToField14: TLinkControlToField;
    LinkControlToField15: TLinkControlToField;
    LinkControlToField16: TLinkControlToField;
    procedure ButtonAdicionarClick(Sender: TObject);
    procedure ButtonGravarClick(Sender: TObject);
    procedure ButtonConsultarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure EditCodigoExit(Sender: TObject);
    procedure EditCepExit(Sender: TObject);
    procedure EditTelefoneExit(Sender: TObject);
    procedure EditCelularExit(Sender: TObject);
    procedure EditCPFExit(Sender: TObject);
    procedure EditObservacaoKeyPress(Sender: TObject; var Key: Char);
    procedure EditObservacao1KeyPress(Sender: TObject; var Key: Char);
    procedure EditObservacao1Exit(Sender: TObject);
    procedure EditCNPJExit(Sender: TObject);
  private
    procedure LimparCampos;
    procedure FecharQuerys;
    procedure GravarFornecedor;
    procedure AtualizarCadastro;
    function VerificaFornecedorCadastrado : Boolean;
    procedure CarregaCidades;
    procedure PassaInfoParaQuery;
    procedure PassaInfoParaMemoryTable;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroFornecedor: TFrmCadastroFornecedor;

implementation

{$R *.dfm}

{ TFrmBase1 }

procedure TFrmCadastroFornecedor.AtualizarCadastro;
begin
  try
    try
      // Abre a query com o registro do fornecedor
      DM.FDQFornecedor.Close;
      DM.FDQFornecedor.SQL.Text := 'SELECT * FROM FORNECEDOR WHERE CODIGO = :CODIGO';
      DM.FDQFornecedor.Params.ParamByName('CODIGO').AsInteger := StrToInt(EditCodigo.Text);
      DM.FDQFornecedor.Open;

      DM.FDQFornecedor.Edit;

      // Passa todos os campos para a query
      PassaInfoParaQuery;

      DM.FDQFornecedor.Post;

      Mensagem(1,'Fornecedor atualizado com sucesso');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFornecedor.ButtonAdicionarClick(Sender: TObject);
begin
  inherited;
  try
    try
      FecharQuerys;
      LimparCampos;

      DM.FDMTFornecedor.Open;
      DM.FDMTFornecedor.Insert;

      DM.FDMTFornecedor.FieldByName('DATACADASTRO').AsDateTime := Date;

      EditNomeFantasia.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFornecedor.ButtonConsultarClick(Sender: TObject);
begin
  inherited;
  try
    try
      FecharQuerys;
      LimparCampos;
      FrmConsultaFornecedor.ShowModal;
    finally
      if not (DM.FDQFornecedor.Eof) then
      begin
        DM.FDMTFornecedor.Open;
        DM.FDMTFornecedor.Insert;

        PassaInfoParaMemoryTable;

        DM.FDMTFornecedor.Post;
        DM.FDMTFornecedor.Edit;
      end
      else
      begin
        // Se nao tiver a informação ele abre para incluir um novo registro
        ButtonAdicionarClick(Sender);
      end;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFornecedor.ButtonGravarClick(Sender: TObject);
begin
  inherited;
  try
    try
      // Se nao tiver nome entao nao vai gravar
      if (EditNomeFantasia.Text = EmptyStr) and (EditRazaoSocial.Text = EmptyStr) then
        Exit;

      // Se o codigo estiver vazio ele grava um novo registro senao ele atualiza o registro
      if EditCodigo.Text = EmptyStr then
      begin
        // Se nao encontrar o cliente ele cadastra
        if VerificaFornecedorCadastrado then
        begin
          GravarFornecedor;
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

procedure TFrmCadastroFornecedor.CarregaCidades;
begin
  try
    try
      // Carregar as Cidades
      DM.FDQCidade.Close;
      DM.FDQCidade.SQL.Text := 'SELECT * FROM CIDADE ORDER BY NOME, ESTADO';
      DM.FDQCidade.Open;
      DM.FDQCidade.First;

      ComboBoxCidade.Clear;

      while not (DM.FDQCidade.Eof) do
      begin
        ComboBoxCidade.Items.Add(DM.FDQCidade.FieldByName('NOME').AsString + ' - ' + DM.FDQCidade.FieldByName('ESTADO').AsString);
        DM.FDQCidade.Next;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFornecedor.EditCelularExit(Sender: TObject);
begin
  inherited;
  try
    try
      if not (EditCelular.Text = EmptyStr) then
        DM.FDMTFornecedor.FieldByName('CELULAR').AsString := ArrumarTelefone(EditCelular.Text);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFornecedor.EditCepExit(Sender: TObject);
begin
  inherited;
  try
    try
      if not (EditCep.Text = EmptyStr) then
        DM.FDMTFornecedor.FieldByName('CEP').AsString := ArrumarCep(EditCep.Text);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFornecedor.EditCNPJExit(Sender: TObject);
begin
  inherited;
  try
    try
      if not (EditCNPJ.Text = EmptyStr) then
      begin
        // Verifica o CNPJ
        if ValidaCNPJ(RemoveInvalid(ConstArrayNumeros,EditCNPJ.Text)) then
        begin
          DM.FDMTFornecedor.FieldByName('CNPJ').AsString := ArrumarCNPJ(EditCNPJ.Text);
        end
        else
        begin
          Mensagem(2,'CNPJ digitado está incorreto');
          EditCNPJ.SetFocus;
        end;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFornecedor.EditCodigoExit(Sender: TObject);
begin
  inherited;
  try
    try
      // Se tiver colocado algum codigo ele pesquisa o fornecedor
      if not (EditCodigo.Text = EmptyStr) then
      begin
        DM.FDQFornecedor.Close;
        DM.FDQFornecedor.SQL.Text := 'SELECT * FROM FORNECEDOR WHERE CODIGO = :CODIGO';
        DM.FDQFornecedor.Params.ParamByName('CODIGO').AsString := EditCodigo.Text;
        DM.FDQFornecedor.Open;

        // Se nao tiver achado o cliente ele inicia um novo
        if DM.FDQFornecedor.Eof then
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

procedure TFrmCadastroFornecedor.EditCPFExit(Sender: TObject);
begin
  inherited;
  try
    try
      if not (EditCPF.Text = EmptyStr) then
      begin
        // Verifica se o CPF tem 11 Caracteres
        if ValidaCPF(RemoveInvalid(ConstArrayNumeros,EditCPF.Text)) then
        begin
          DM.FDMTFornecedor.FieldByName('CPF').AsString := ArrumarCPF(EditCPF.Text);
        end
        else
        begin
          Mensagem(2,'CPF digitado está incorreto');
          EditCPF.SetFocus;
        end;
      end;
    finally


    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFornecedor.EditObservacao1Exit(Sender: TObject);
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

procedure TFrmCadastroFornecedor.EditObservacao1KeyPress(Sender: TObject;
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

procedure TFrmCadastroFornecedor.EditObservacaoKeyPress(Sender: TObject;
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

procedure TFrmCadastroFornecedor.EditTelefoneExit(Sender: TObject);
begin
  inherited;
  try
    try
      if not (EditTelefone.Text = EmptyStr) then
        DM.FDMTFornecedor.FieldByName('TELEFONE').AsString := ArrumarTelefone(EditTelefone.Text);
    finally


    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFornecedor.FecharQuerys;
begin
  try
    try
      DM.FDQFornecedor.Close;
      DM.FDQContadores.Close;
      DM.FDQConsulta.Close;
      DM.FDMTFornecedor.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFornecedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  try
    try
      // Fecha as conexoes
      FecharQuerys;

      // Limpa os campos
      LimparCampos;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFornecedor.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      CarregaCidades;

      ButtonAdicionarClick(Sender);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFornecedor.GravarFornecedor;
var
  ContadorFornecedor : Integer;
begin
  try
    try
      // Abre a query do cliente
      DM.FDQFornecedor.Close;
      DM.FDQFornecedor.SQL.Text := 'SELECT * FROM FORNECEDOR';
      DM.FDQFornecedor.Open;
      DM.FDQFornecedor.Insert;

      // Abre a query dos contadores
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;
      DM.FDQContadores.Locate('TABELA','FORNECEDOR',[]);
      ContadorFornecedor := DM.FDQContadores.FieldByName('VALOR').AsInteger + 1;

      // Coloca os campos faltando no memoryTable
      DM.FDMTFornecedor.FieldByName('CODIGO').AsInteger := ContadorFornecedor;
      DM.FDMTFornecedor.FieldByName('DATACADASTRO').AsDateTime := Date;

      if ComboBoxStatus.Text = EmptyStr then
        DM.FDMTFornecedor.FieldByName('STATUS').AsString := 'ATIVO'
      else
        DM.FDMTFornecedor.FieldByName('STATUS').AsString := ComboBoxStatus.Text;

      PassaInfoParaQuery;

      // Salva o registro
      DM.FDQFornecedor.Post;

      // Atualiza os contadores
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorFornecedor;
      DM.FDQContadores.Post;

      Mensagem(1,'Fornecedor cadastrado com sucesso');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFornecedor.LimparCampos;
var
  I : Integer;
begin
  try
    try
      for I := 0 to FrmCadastroFornecedor.ComponentCount - 1 do
      begin
        if Components[i] is TEdit then
          TEdit(FrmCadastroFornecedor.Components[i]).Clear;
        if Components[i] is TCheckBox then
          TCheckBox(FrmCadastroFornecedor.Components[i]).Checked := False;
        if Components[i] is TComboBox then
          TComboBox(FrmCadastroFornecedor.Components[i]).ItemIndex := 0;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFornecedor.PassaInfoParaMemoryTable;
var
  I: Integer;
  NomeCampo: string;
begin
  // Se tiver informação ele passa para o memorytable
  for I := 0 to (DM.FDQFornecedor.FieldCount - 1) do
  begin
    NomeCampo := DM.FDQFornecedor.Fields[I].FieldName;
    if (DM.FDMTFornecedor.FindField(NomeCampo) <> nil) then
      DM.FDMTFornecedor.FieldByName(NomeCampo).Value := DM.FDQFornecedor.FieldByName(NomeCampo).Value;
  end;
end;

procedure TFrmCadastroFornecedor.PassaInfoParaQuery;
var
  I: Integer;
  NomeCampo: string;
begin
  // Passa todos os campos para a query
  for I := 0 to (DM.FDMTFornecedor.FieldCount - 1) do
  begin
    NomeCampo := DM.FDMTFornecedor.Fields[I].FieldName;
    if (DM.FDQFornecedor.FindField(NomeCampo) <> nil) then
      DM.FDQFornecedor.FieldByName(NomeCampo).Value := DM.FDMTFornecedor.FieldByName(NomeCampo).Value;
  end;
end;

function TFrmCadastroFornecedor.VerificaFornecedorCadastrado: Boolean;
begin
  try
    try
      // Consulta o cliente para ver se ja esta cadastrado
      DM.FDQConsulta.Close;
      DM.FDQConsulta.SQL.Text := 'SELECT * FROM FORNECEDOR WHERE ';

      // Se tiver CPF ele pesquisa o CPF senão vai pesquisar pelo nome
      if not (EditCPF.Text = EmptyStr) then
      begin
        DM.FDQConsulta.SQL.Text := DM.FDQConsulta.SQL.Text + ' CPF = :CPF ';
        DM.FDQConsulta.Params.ParamByName('CPF').AsString := EditCPF.Text;
      end
      else if not (EditCNPJ.Text = EmptyStr) then
      begin
        DM.FDQConsulta.SQL.Text := DM.FDQConsulta.SQL.Text + ' CNPJ = :CNPJ ';
        DM.FDQConsulta.Params.ParamByName('CNPJ').AsString := EditCNPJ.Text;
      end
      else
      begin
        DM.FDQConsulta.SQL.Text := DM.FDQConsulta.SQL.Text + ' NOMEFANTASIA = :NOMEFANTASIA ';
        DM.FDQConsulta.Params.ParamByName('NOMEFANTASIA').AsString := EditNomeFantasia.Text;
      end;

      DM.FDQConsulta.Open;

      // Se a consulta estiver vazia é porque nao tem o cliente cadastrado
      if DM.FDQConsulta.Eof then
      begin
        Result := True
      end
      else
      begin
        Mensagem(2,'Fornecedor já cadastrado' + sLineBreak + 'Codigo do fornecedor: ' + DM.FDQConsulta.FieldByName('CODIGO').AsString);
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
