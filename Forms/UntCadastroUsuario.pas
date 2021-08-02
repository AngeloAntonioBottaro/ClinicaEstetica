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

  FireDAC.Stan.Param,

  UntBase,
  UntBibliotecaFuncoes,
  UntComponentesGerais,
  UntDataModule,

  Data.Bind.EngExt,
  Data.Bind.Components,
  Data.Bind.DBScope, Vcl.CheckLst, Vcl.CategoryButtons, Vcl.ExtCtrls;

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
    try
      // Define a pagina ativa do page control
      PageControl.ActivePageIndex := 0;
      CategoryPanelGroup1.CollapseAll;
      CategoryPanelGroup2.CollapseAll;

      FecharQuerys;

      DM.FDQUsuario.Open;
      DM.FDQUsuario.Insert;

      LimparCampos;

      EditNome.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroUsuario.ButtonGravarClick(Sender: TObject);
var
  ContadorUsuario : Integer;
begin
  inherited;
  try
    try
      if EditLogin.Text = EmptyStr then
      begin
        EditLogin.SetFocus;
        Mensagem(2,'Login obrigatorio');
        Exit;
      end;

      if EditSenha.Text = EmptyStr then
      begin
        EditSenha.SetFocus;
        Mensagem(2,'Senha obrigatoria');
        Exit;
      end;

      DM.FDQUsuario.FieldByName('TIPO').AsInteger := ComboBoxTipo.ItemIndex +1;

      // Verifica se esta cadastrando ou atualizando
      if EditCodigo.Text = EmptyStr then
      begin
        if VerificaUsuarioCadastrado then
        begin
          if ComboBoxStatus.Text = EmptyStr then
           DM.FDQUsuario.FieldByName('STATUS').AsString := 'ATIVO'
          else
           DM.FDQUsuario.FieldByName('STATUS').AsString := ComboBoxStatus.Text;

          // Abre a query dos contadores
          DM.FDQContadores.Close;
          DM.FDQContadores.Open;
          DM.FDQContadores.Locate('TABELA','USUARIO',[]);
          ContadorUsuario := DM.FDQContadores.FieldByName('VALOR').AsInteger + 1;

          DM.FDQUsuario.FieldByName('CODIGO').AsInteger := ContadorUsuario;

          DM.FDQUsuario.Post;
          Mensagem(1,'Usuario cadastrado com sucesso');

          // Atualiza os contadores
          DM.FDQContadores.Edit;
          DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorUsuario;
          DM.FDQContadores.Post;
        end;
      end
      else
      begin
        DM.FDQUsuario.Post;
        DM.FDQUsuario.Edit;
        Mensagem(1,'Usuario atualizado com sucesso');
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroUsuario.EditCodigoExit(Sender: TObject);
var
  CodUsu : string;
begin
  inherited;
  try
    try
      if not (EditCodigo.Text = EmptyStr) then
      begin
        CodUsu := EditCodigo.Text;

        FecharQuerys;
        LimparCampos;
        DM.FDQUsuario.Open;

        if DM.FDQUsuario.Locate('CODIGO',CodUsu,[]) then
        begin
          DM.FDQUsuario.Edit;
          ComboBoxTipo.ItemIndex := DM.FDQUsuario.FieldByName('TIPO').AsInteger -1;
        end
        else
          ButtonAdicionarClick(Sender);
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroUsuario.FecharQuerys;
begin
  try
    try
      DM.FDQUsuario.Close;
      DM.FDQContadores.Close;
      DM.FDQConsulta.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroUsuario.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      ButtonAdicionarClick(Sender);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroUsuario.LimparCampos;
var
  I : Integer;
begin
  try
    try
      for I := 0 to FrmCadastroUsuario.ComponentCount - 1 do
      begin
        if Components[i] is TEdit then
          TEdit(FrmCadastroUsuario.Components[i]).Clear;
        if Components[i] is TCheckBox then
          TCheckBox(FrmCadastroUsuario.Components[i]).Checked := False;
        if Components[i] is TComboBox then
          TComboBox(FrmCadastroUsuario.Components[i]).ItemIndex := -1;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

function TFrmCadastroUsuario.VerificaUsuarioCadastrado: Boolean;
begin
  try
    try
      // Consulta o usuario para ver se ja esta cadastrado
      DM.FDQConsulta.Close;
      DM.FDQConsulta.SQL.Text := 'SELECT * FROM USUARIO WHERE LOGIN = :LOGIN AND SENHA = :SENHA';
      DM.FDQConsulta.Params.ParamByName('LOGIN').AsString := EditLogin.Text;
      DM.FDQConsulta.Params.ParamByName('SENHA').AsString := EditSenha.Text;
      DM.FDQConsulta.Open;

      // Se a consulta estiver vazia é porque nao tem o cliente cadastrado
      if DM.FDQConsulta.Eof then
      begin
        Result := True
      end
      else
      begin
        Mensagem(2,'Usuario já cadastrado' + sLineBreak + 'Codigo do usuario: ' + DM.FDQConsulta.FieldByName('CODIGO').AsString);
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
