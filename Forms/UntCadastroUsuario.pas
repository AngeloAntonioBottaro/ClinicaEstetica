unit UntCadastroUsuario;

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
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  Vcl.Dialogs,
  Vcl.Bind.Editors,
  Vcl.Bind.DBEngExt,
  Vcl.CheckLst,
  Vcl.CategoryButtons, Vcl.ExtCtrls,

  FireDAC.Stan.Param,

  UntBase,
  UntComponentesGerais,
  UntDataModule,

  Data.DB,
  Data.Bind.EngExt,
  Data.Bind.Components,
  Data.Bind.DBScope,

  Msg.controller;

type
  TFrmCadastroUsuario = class(TFrmBase)
    GroupBoxClient: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    EditCodigo: TEdit;
    ComboBoxStatus: TComboBox;
    GroupBoxBotton: TGroupBox;
    ButtonAdicionar: TButton;
    ButtonGravar: TButton;
    Label2: TLabel;
    EditNome: TEdit;
    EditLogin: TEdit;
    Label3: TLabel;
    EditSenha: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    ComboBoxTipo: TComboBox;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    BindSourceDB1: TBindSourceDB;
    PageControl: TPageControl;
    TabSheet3: TTabSheet;
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanelMovimentacao: TCategoryPanel;
    CategoryPanelGroup2: TCategoryPanelGroup;
    CategoryPanelCaixa: TCategoryPanel;
    CheckBoxCaixaDiario: TCheckBox;
    CheckBoxHistoricoCaixa: TCheckBox;
    CheckBoxLancamentoCaixa: TCheckBox;
    CategoryPanelContaRecebida: TCategoryPanel;
    CheckBoxConsultarContaRecebida: TCheckBox;
    CheckBoxEstornarContaRecebida: TCheckBox;
    CheckBoxLancarContaRecebida: TCheckBox;
    CategoryPanelContaReceber: TCategoryPanel;
    CheckBoxConsultaContaReceber: TCheckBox;
    CheckBoxLancarContaReceber: TCheckBox;
    CheckBoxRecebimento: TCheckBox;
    CategoryPanelCadastros: TCategoryPanel;
    CheckBoxCadastroCidade: TCheckBox;
    CheckBoxCadastroCliente: TCheckBox;
    CheckBoxCadastroFormaPagto: TCheckBox;
    CheckBoxCadastroFornecedor: TCheckBox;
    CheckBoxCadastroFuncionario: TCheckBox;
    CheckBoxCadastroGrupo: TCheckBox;
    CheckBoxCadastroProduto: TCheckBox;
    CheckBoxCadastroSubGrupo: TCheckBox;
    CategoryPanelAcessoRapido: TCategoryPanel;
    CheckBoxAgenda: TCheckBox;
    CheckBoxEntradaEstoque: TCheckBox;
    CheckBoxServico: TCheckBox;
    CheckBoxVenda: TCheckBox;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
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
    LinkControlToField17: TLinkControlToField;
    LinkControlToField18: TLinkControlToField;
    LinkControlToField19: TLinkControlToField;
    LinkControlToField20: TLinkControlToField;
    LinkControlToField21: TLinkControlToField;
    LinkControlToField22: TLinkControlToField;
    LinkControlToField23: TLinkControlToField;
    LinkControlToField24: TLinkControlToField;
    LinkControlToField25: TLinkControlToField;
    CategoryPanelContaPagar: TCategoryPanel;
    CategoryPanelContaPaga: TCategoryPanel;
    CheckBoxLancamentoContaPagar: TCheckBox;
    CheckBoxLancamentoContaPaga: TCheckBox;
    LinkControlToField26: TLinkControlToField;
    LinkControlToField27: TLinkControlToField;
    CheckBoxPagamento: TCheckBox;
    LinkControlToField28: TLinkControlToField;
    CheckBoxConsultaContaPagar: TCheckBox;
    LinkControlToField29: TLinkControlToField;
    CheckBoxEstornarContaPaga: TCheckBox;
    CheckBoxConsultaContaPaga: TCheckBox;
    LinkControlToField30: TLinkControlToField;
    LinkControlToField31: TLinkControlToField;
    procedure ButtonAdicionarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ButtonGravarClick(Sender: TObject);
    procedure EditCodigoExit(Sender: TObject);
  private
    procedure LimparCampos;
    procedure FecharQuerys;
    function VerificaUsuarioCadastrado : Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroUsuario: TFrmCadastroUsuario;

implementation

{$R *.dfm}

{ TFrmCadastroUsuario }

procedure TFrmCadastroUsuario.ButtonAdicionarClick(Sender: TObject);
begin
  inherited;
  try
    // Define a pagina ativa do page control
    PageControl.ActivePageIndex := 0;
    CategoryPanelGroup1.CollapseAll;
    CategoryPanelGroup2.CollapseAll;

    Self.FecharQuerys;

    DM.FDQUsuario.Open;
    DM.FDQUsuario.Insert;

    Self.LimparCampos;

    EditNome.SetFocus;
  Except on E:Exception do
    Msg.controller.ShowError(E.ToString);
  end;
end;

procedure TFrmCadastroUsuario.ButtonGravarClick(Sender: TObject);
var
  ContadorUsuario : Integer;
begin
  inherited;
  try
    if(Trim(EditLogin.Text) = EmptyStr)then
    begin
      EditLogin.SetFocus;
      Msg.controller.ShowWarning('Login obrigatório');
      Exit;
    end;

    if(Trim(EditSenha.Text) = EmptyStr)then
    begin
      EditSenha.SetFocus;
      Msg.controller.ShowWarning('Senha obrigatoria');
      Exit;
    end;

    DM.FDQUsuario.FieldByName('TIPO').AsInteger := ComboBoxTipo.ItemIndex +1;

    // Verifica se esta cadastrando ou atualizando
    if(Self.VerificaUsuarioCadastrado)then
    begin
       DM.FDQUsuario.FieldByName('STATUS').AsString := ComboBoxStatus.Text;

       if(ComboBoxStatus.Text = EmptyStr)then
          DM.FDQUsuario.FieldByName('STATUS').AsString := 'ATIVO';

       // Abre a query dos contadores
       DM.FDQContadores.Close;
       DM.FDQContadores.Open;
       DM.FDQContadores.Locate('TABELA','USUARIO',[]);

       ContadorUsuario := DM.FDQContadores.FieldByName('VALOR').AsInteger + 1;

       DM.FDQContadores.Edit;
       DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorUsuario;
       DM.FDQContadores.Post;

       DM.FDQUsuario.FieldByName('CODIGO').AsInteger   := ContadorUsuario;
    end;

    if(DM.FDQUsuario.State in [dsInsert, dsEdit])then
       DM.FDQUsuario.Post;

    Self.EditCodigoExit(Self);

    Msg.controller.ShowInfo('Gravação realizada com sucesso');
  Except on E:Exception do
    Msg.controller.ShowError(E.ToString);
  end;
end;

procedure TFrmCadastroUsuario.EditCodigoExit(Sender: TObject);
begin
  inherited;

  if(EditCodigo.Text = EmptyStr)then Exit;

  FecharQuerys;
  LimparCampos;
  DM.FDQUsuario.Open;

  if(DM.FDQUsuario.Locate('CODIGO', EditCodigo.Text, []))then
  begin
    DM.FDQUsuario.Edit;
    ComboBoxTipo.ItemIndex := DM.FDQUsuario.FieldByName('TIPO').AsInteger -1;
    Exit;
  end;

  ButtonAdicionarClick(Sender);
end;

procedure TFrmCadastroUsuario.FecharQuerys;
begin
  try
    DM.FDQUsuario.Close;
    DM.FDQContadores.Close;
    DM.FDQConsulta.Close;
  Except on E:Exception do
    Msg.controller.ShowError(E.ToString);
  end;
end;

procedure TFrmCadastroUsuario.FormShow(Sender: TObject);
begin
  inherited;
  ButtonAdicionar.Click;
end;

procedure TFrmCadastroUsuario.LimparCampos;
var
  I : Integer;
begin
   for I := 0 to FrmCadastroUsuario.ComponentCount - 1 do
   begin
     if Components[i] is TEdit then
       TEdit(FrmCadastroUsuario.Components[i]).Clear;
     if Components[i] is TCheckBox then
       TCheckBox(FrmCadastroUsuario.Components[i]).Checked := False;
     if Components[i] is TComboBox then
       TComboBox(FrmCadastroUsuario.Components[i]).ItemIndex := -1;
   end;
end;

function TFrmCadastroUsuario.VerificaUsuarioCadastrado: Boolean;
begin
  try
    // Consulta o usuario para ver se ja esta cadastrado
    DM.FDQConsulta.Close;
    DM.FDQConsulta.SQL.Text := 'SELECT * FROM USUARIO WHERE LOGIN = :LOGIN AND SENHA = :SENHA';
    DM.FDQConsulta.Params.ParamByName('LOGIN').AsString := EditLogin.Text;
    DM.FDQConsulta.Params.ParamByName('SENHA').AsString := EditSenha.Text;
    DM.FDQConsulta.Open;

    // Se a consulta estiver vazia é porque nao tem o cliente cadastrado
    Result := True;

    if not(DM.FDQConsulta.IsEmpty)then
    begin
      Msg.controller.ShowWarning('Usuario já cadastrado' + sLineBreak +
                                 'Código do usuario: ' + DM.FDQConsulta.FieldByName('CODIGO').AsString);
      Result := False;
    end;
  Except on E:Exception do
    begin
       Msg.controller.ShowError(E.ToString);
       Result := False;
    end;
  end;
end;

end.
