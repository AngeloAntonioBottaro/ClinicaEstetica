unit UntMain;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.IniFiles,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.ComCtrls,
  Vcl.StdCtrls,
  Vcl.Menus,
  Vcl.Imaging.pngimage,

  DateUtils,
  Data.DB,

  UntBase,

  Controller.Firebase,

  Msg.Controller,
  Exceptions;

type
  TFrmMain = class(TFrmBase)
    GroupBoxButtons: TGroupBox;
    ButtonServicos: TButton;
    ButtonVenda: TButton;
    ButtonEstoque: TButton;
    Image: TImage;
    MainMenu: TMainMenu;
    Ferramentas: TMenuItem;
    AtualizarSistema: TMenuItem;
    Configuracoes: TMenuItem;
    LiberacaoSistema: TMenuItem;
    Relatorios: TMenuItem;
    N1Cadastros: TMenuItem;
    N11RelatorioCadastroCliente: TMenuItem;
    N12RelatorioCadastroProduto: TMenuItem;
    N2Financeiros: TMenuItem;
    N21RelatorioContasAReceber: TMenuItem;
    N211EntrePeriodo: TMenuItem;
    N22RelatorioContasRecebidas: TMenuItem;
    N221ContasRecebidasEntrePeriodo: TMenuItem;
    N3RelatorioCaixa: TMenuItem;
    N31CaixaDiario: TMenuItem;
    N32CaixaEntrePeriodo: TMenuItem;
    N4RelatorioServicos: TMenuItem;
    N41ServicoEntrePeriodo: TMenuItem;
    N5RelatorioVendas: TMenuItem;
    N51VendaEntrePeriodo: TMenuItem;
    N6RelatorioEstoque: TMenuItem;
    N61EntrePeriodo: TMenuItem;
    Cadastros: TMenuItem;
    N1CadastrosCliente: TMenuItem;
    N2CadastrosProdutos: TMenuItem;
    N3CadastrosGrupo: TMenuItem;
    N4CadastrosSubGrupo: TMenuItem;
    N5CadastrosFormaPagamento: TMenuItem;
    Movimentao: TMenuItem;
    N1Financeiro: TMenuItem;
    N11ContasAReceber: TMenuItem;
    N111LancarContaReceber: TMenuItem;
    N112Recebimento: TMenuItem;
    N113ConsultarContaReceber: TMenuItem;
    N12ContaRecebida: TMenuItem;
    N121LancarContaRecebida: TMenuItem;
    N122EstornarContaRecebida: TMenuItem;
    N123ConsultacontaRecebida: TMenuItem;
    N2Caixa: TMenuItem;
    N21CaixaDiario: TMenuItem;
    N22LancamentoCaixa: TMenuItem;
    N23Historico: TMenuItem;
    MemoMensagem: TMemo;
    StatusBar: TStatusBar;
    TimerAtuInfo: TTimer;
    N222ContasVencidas1: TMenuItem;
    N62SugestoCompra1: TMenuItem;
    ButtonAgenda: TButton;
    N4Usuarios1: TMenuItem;
    N5TrocarUsuario1: TMenuItem;
    N6CadastrosFornecedor: TMenuItem;
    N7CadastrosFuncionarios: TMenuItem;
    N8CadastrosCidade: TMenuItem;
    N13ContasAPagar: TMenuItem;
    N14ContasPagas: TMenuItem;
    N131LanamentoContaPagar: TMenuItem;
    N132Pagamento: TMenuItem;
    N42ServiosRealizados: TMenuItem;
    N133ConsultaContasPagar: TMenuItem;
    N141LanarContaPaga: TMenuItem;
    N142EstornarContaPaga: TMenuItem;
    N143ConsultarContaPaga: TMenuItem;
    N43ServicosResumido: TMenuItem;
    N23RelatorioContasAPagar: TMenuItem;
    N24RelatorioContasPagas: TMenuItem;
    N231EntrePeriodo: TMenuItem;
    N232ContasVencidas1: TMenuItem;
    N241EntrePeriodo: TMenuItem;
    N25RelatorioContasExcluidas: TMenuItem;
    N111CadastroClienteEntrePeriodo: TMenuItem;
    N112FichaDoCliente: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AtualizarSistemaClick(Sender: TObject);
    procedure ConfiguracoesClick(Sender: TObject);
    procedure LiberacaoSistemaClick(Sender: TObject);
    procedure N1CadastrosClienteClick(Sender: TObject);
    procedure N2CadastrosProdutosClick(Sender: TObject);
    procedure N3CadastrosGrupoClick(Sender: TObject);
    procedure N4CadastrosSubGrupoClick(Sender: TObject);
    procedure N5CadastrosFormaPagamentoClick(Sender: TObject);
    procedure N111LancarContaReceberClick(Sender: TObject);
    procedure N112RecebimentoClick(Sender: TObject);
    procedure N113ConsultarContaReceberClick(Sender: TObject);
    procedure N121LancarContaRecebidaClick(Sender: TObject);
    procedure N122EstornarContaRecebidaClick(Sender: TObject);
    procedure N123ConsultacontaRecebidaClick(Sender: TObject);
    procedure N21CaixaDiarioClick(Sender: TObject);
    procedure N22LancamentoCaixaClick(Sender: TObject);
    procedure N23HistoricoClick(Sender: TObject);
    procedure ButtonServicosClick(Sender: TObject);
    procedure ButtonVendaClick(Sender: TObject);
    procedure ButtonEstoqueClick(Sender: TObject);
    procedure N12RelatorioCadastroProdutoClick(Sender: TObject);
    procedure N211EntrePeriodoClick(Sender: TObject);
    procedure N221ContasRecebidasEntrePeriodoClick(Sender: TObject);
    procedure N31CaixaDiarioClick(Sender: TObject);
    procedure N32CaixaEntrePeriodoClick(Sender: TObject);
    procedure N41ServicoEntrePeriodoClick(Sender: TObject);
    procedure N51VendaEntrePeriodoClick(Sender: TObject);
    procedure N61EntrePeriodoClick(Sender: TObject);
    procedure N222ContasVencidas1Click(Sender: TObject);
    procedure N62SugestoCompra1Click(Sender: TObject);
    procedure ButtonAgendaClick(Sender: TObject);
    procedure N4Usuarios1Click(Sender: TObject);
    procedure N5TrocarUsuario1Click(Sender: TObject);
    procedure N6CadastrosFornecedorClick(Sender: TObject);
    procedure N8CadastrosCidadeClick(Sender: TObject);
    procedure N7CadastrosFuncionariosClick(Sender: TObject);
    procedure N131LanamentoContaPagarClick(Sender: TObject);
    procedure N132PagamentoClick(Sender: TObject);
    procedure N42ServiosRealizadosClick(Sender: TObject);
    procedure N133ConsultaContasPagarClick(Sender: TObject);
    procedure N141LanarContaPagaClick(Sender: TObject);
    procedure N142EstornarContaPagaClick(Sender: TObject);
    procedure N143ConsultarContaPagaClick(Sender: TObject);
    procedure N43ServicosResumidoClick(Sender: TObject);
    procedure N231EntrePeriodoClick(Sender: TObject);
    procedure N232ContasVencidas1Click(Sender: TObject);
    procedure N241EntrePeriodoClick(Sender: TObject);
    procedure N25RelatorioContasExcluidasClick(Sender: TObject);
    procedure N111CadastroClienteEntrePeriodoClick(Sender: TObject);
    procedure N112FichaDoClienteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FConexao : TControllerFirebase;
    procedure ConectarBanco;
    procedure ValidarLiberacao;
    procedure VerificarMensagem;
    procedure AtualizarHash;
    procedure Login;
    procedure LiberarMenus;
    procedure CarregarImagens;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

uses
  Utils.MyLibrary,
  UntRelatorioSugestaoCompra, UntAgenda, UntLogin, UntCadastroUsuario,
  UntBibliotecaFuncoes, UntComponentesGerais, UntDataModule, UntAtualizarSistema,
  UntSenha, UntLiberarSistema, UntCadastroCliente, UntCadastroFormaPagamento,
  UntCadastroGrupo, UntCadastroHistoricoCaixa, UntCadastroProduto, UntCadastroSubGrupo,
  UntCaixaDiario, UntEntradaEstoque, UntEstornaRecebimento, UntLancamentoCaixa,
  UntLancamentoContaReceber, UntLancamentoContaRecebida, UntRecebimentoConta,
  UntServicos, UntVenda, UntConsultaContaReceber, UntConsultaContaRecebida,
  UntRelatorioCadastroCliente, UntRelatorioCadastroProduto, UntRelatorioCaixaDiario,
  UntRelatorioCaixaDiarioEntrePeriodo, UntRelatorioContasAReceberEntrePeriodo,
  UntRelatorioContasRecebidasEntrePeriodo, UntRelatorioContasReceberVencidas,
  UntRelatorioEntradaEstoque, UntRelatorioServicos, UntRelatorioVendas,
  UntCadastroFornecedor, UntCadastroCidade, UntCadastroFuncionario, UntLancamentoContaPagar,
  UntPagamentoConta, UntRelatorioServicosRealizados, UntConsultaContaPagar,
  UntConsultaContaPaga, UntEstornaPagamento, UntLancamentoContaPaga,
  UntRelatorioServicosResumidos, UntRelatorioContasPagarEntrePeriodo,
  UntRelatorioContasPagarVencidas, UntRelatorioContasPagasEntrePeriodo,
  UntRelatorioContasExcluidas, UntFichaCliente;

procedure TFrmMain.AtualizarHash;
var
  arquivoLiberacao : TextFile;
  hash : string;
  vArquivo: string;
begin
  DM.FDQParametros.Close;
  DM.FDQParametros.Open;

  if DM.FDQParametros.FieldByName('CODIGOARQUIVOLIBERACAO').AsString = EmptyStr then
  begin
    if(FrmSenha = nil)then Application.CreateForm(TFrmSenha, FrmSenha);
    FrmSenha.ShowModal;
    FreeAndNil(FrmSenha);
  end;

  DM.FDQParametros.Close;
  DM.FDQParametros.Open;

  //Verifica Arquivo TXT
  vArquivo := Utils.MyLibrary.GetAppPath + DM.FDQParametros.FieldByName('CODIGOARQUIVOLIBERACAO').AsString + '.txt';
  if FileExists(vArquivo)then
  begin
    AssignFile(arquivoLiberacao, vArquivo);
    Reset(arquivoLiberacao);

    while not eof(arquivoLiberacao) do
    begin
      Readln(arquivoLiberacao, hash);

      DM.FDQParametros.Edit;
      DM.FDQParametros.FieldByName('HASH').AsString := hash;
      DM.FDQParametros.Post;
    end;

    Closefile(arquivoLiberacao);
    DeleteFile(vArquivo);
  end;

  // Tenta Pegar a liberação do Firebase
  if(Utils.MyLibrary.InternetConnection = False)then Exit;

  DM.FDQParametros.Close;
  DM.FDQParametros.Open;

  FConexao.Conexao.ObtemDados(DM.FDMTParametros,'/Liberacao/' + DM.FDQParametros.FieldByName('CODIGOARQUIVOLIBERACAO').AsString + '.json');

  DM.FDQParametros.Close;
  DM.FDQParametros.Open;
  DM.FDQParametros.Edit;

  // Se o nome da empresa for igual ao que esta no registro ele salva o hash
  if DM.FDQParametros.FieldByName('NOMEEMPRESA').AsString = DM.FDMTParametros.FieldByName('NOMEEMPRESA').AsString then
    DM.FDQParametros.FieldByName('HASH').AsString := DM.FDMTParametros.FieldByName('HASH').AsString
  else
    raise ExceptionError.Create('Codigo de liberação incorreto para empresa logada');

  DM.FDQParametros.Post;
  DM.FDMTParametros.Close;
end;

procedure TFrmMain.AtualizarSistemaClick(Sender: TObject);
begin
  if(FrmAtualizarSistema = nil)then Application.CreateForm(TFrmAtualizarSistema, FrmAtualizarSistema);
  FrmAtualizarSistema.ShowModal;
  FreeAndNil(FrmAtualizarSistema);
end;

procedure TFrmMain.ButtonAgendaClick(Sender: TObject);
begin
  if(FrmAgenda = nil)then Application.CreateForm(TFrmAgenda, FrmAgenda);
  FrmAgenda.ShowModal;
  FreeAndNil(FrmAgenda);
end;

procedure TFrmMain.ButtonEstoqueClick(Sender: TObject);
begin
  if(FrmEntradaEstoque = nil)then Application.CreateForm(TFrmEntradaEstoque, FrmEntradaEstoque);
  FrmEntradaEstoque.ShowModal;
  FreeAndNil(FrmEntradaEstoque);
end;

procedure TFrmMain.ButtonServicosClick(Sender: TObject);
begin
  if(FrmServicos = nil)then Application.CreateForm(TFrmServicos, FrmServicos);
  FrmServicos.ShowModal;
  FreeAndNil(FrmServicos);
end;

procedure TFrmMain.ButtonVendaClick(Sender: TObject);
begin
  if(FrmVenda = nil)then Application.CreateForm(TFrmVenda, FrmVenda);
  FrmVenda.ShowModal;
  FreeAndNil(FrmVenda);
end;

procedure TFrmMain.N1CadastrosClienteClick(Sender: TObject);
begin
  if(FrmCadastroCliente = nil)then Application.CreateForm(TFrmCadastroCliente, FrmCadastroCliente);
  FrmCadastroCliente.ShowModal;
  FreeAndNil(FrmCadastroCliente);
end;

procedure TFrmMain.CarregarImagens;
var
  vIcone: string;
begin
   Utils.MyLibrary.LoadImage('Logo', Image);

   vIcone := Utils.MyLibrary.GetAppPath + 'Icone.ico';
   if(FileExists(vIcone))then
      FrmMain.Icon.LoadFromFile(vIcone);
end;

procedure TFrmMain.ConectarBanco;
var
  arquivoini : TIniFile;
  Caminho, Banco, Ip, Tipo, Status : String;
begin
  DM.FDConnection.Connected := False;

  // Pega o caminho do banco que esta configurado
  arquivoini := TIniFile.Create(Utils.MyLibrary.GetAppPath + Utils.MyLibrary.GetAppName + '.ini');
  try
    Caminho := arquivoini.ReadString('Configuracao', 'CAMINHOBANCO', 'ERRO');
    Banco := arquivoini.ReadString('Configuracao', 'NOMEBANCO', 'ERRO');
    Ip := arquivoini.ReadString('Configuracao', 'IPBANCO', EmptyStr);
    Tipo := arquivoini.ReadString('Configuracao', 'TIPO', EmptyStr);
    Status := arquivoini.ReadString('Configuracao', 'STATUS', EmptyStr);

    // Conecta Localmente se for servidor senao tenta conectar pelo ip
    if UpperCase(Tipo) = 'SERVIDOR' then
    begin
      DM.FDConnection.Params.Database := Caminho + Banco;
      StatusBar.Panels[2].Text := 'IP.: LocalHost';
      TimerAtuInfo.Enabled := True;
    end
    else
    begin
      // Se for terminal conecta no servidor
      DM.FDConnection.Params.Database := '\\' + ip + '\' + Caminho + Banco;
      StatusBar.Panels[2].Text := 'IP.: ' + Ip;
      TimerAtuInfo.Enabled := False;
    end;

    // Conecta ao Banco
    DM.FDConnection.Connected := True;

    // Coloca as informaçoes no statusbar
    StatusBar.Panels[0].Text := 'Caminho do Banco.: ' + Caminho + Banco;
    StatusBar.Panels[1].Text := 'Status do Banco.: Desconectado';

    if(DM.FDConnection.Connected = False)then raise ExceptionWarning.Create('Banco de dados não conectado');

    StatusBar.Panels[1].Text := 'Status do Banco.: Conectado';

    // Se for a primeira vez que esta abrindo o sistema ele mostra a tela de atualizaçao
    if not(UpperCase(Status) = 'A')then
    begin
      if(FrmAtualizarSistema = nil)then Application.CreateForm(TFrmAtualizarSistema, FrmAtualizarSistema);
      FrmAtualizarSistema.ShowModal;
      FreeAndNil(FrmAtualizarSistema);

      if(FrmSenha = nil)then Application.CreateForm(TFrmSenha, FrmSenha);
      FrmSenha.ShowModal;
      FreeAndNil(FrmSenha);

      arquivoini.WriteString('Configuracao','STATUS','A');
    end;
  finally
    arquivoini.Free;
  end;
end;

procedure TFrmMain.ConfiguracoesClick(Sender: TObject);
begin
  if(DM.FDMTUsuario.FieldByName('CODIGO').AsInteger = 1)then
  begin
    if(FrmSenha = nil)then Application.CreateForm(TFrmSenha, FrmSenha);
    FrmSenha.ShowModal;
    FreeAndNil(FrmSenha);
  end;
end;

procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.Destroy;
  FConexao.Destroy;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  if not(Assigned(FConexao))then
     FConexao :=  TControllerFirebase.Create('https://aab-softwares.firebaseio.com/'); //TComunicacao.Create('https://aab-softwares.firebaseio.com/');

  // Verifica se Existe o arquivo ini
  if not(FileExists(Utils.MyLibrary.GetAppPath + Utils.MyLibrary.GetAppName + '.ini'))then
    UntBibliotecaFuncoes.CriarIniFile;
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
  inherited;
  // Conectar ao banco apos ler o caminho no arquivo INI
  Self.ConectarBanco;

  // Faz a liberaçao do sistema
  Self.ValidarLiberacao;

  Self.CarregarImagens;

  FrmMain.Caption := DM.FDQParametros.FieldByName('NOMEEMPRESA').AsString;

  // Verificar Mensagem
  Self.VerificarMensagem;

  Self.Login;
end;

procedure TFrmMain.LiberacaoSistemaClick(Sender: TObject);
begin
  if(FrmLiberarSistema = nil)then Application.CreateForm(TFrmLiberarSistema, FrmLiberarSistema);
  FrmLiberarSistema.ShowModal;
  FreeAndNil(FrmLiberarSistema);
end;

procedure TFrmMain.LiberarMenus;
begin
  // ***** Acesso Rapido
  ButtonAgenda.Visible   := DM.FDMTUsuario.fieldbyname('TELAAGENDA').AsBoolean;
  ButtonServicos.Visible := DM.FDMTUsuario.fieldbyname('TELASERVICO').AsBoolean;
  ButtonVenda.Visible    := DM.FDMTUsuario.fieldbyname('TELAVENDA').AsBoolean;
  ButtonEstoque.Visible  := DM.FDMTUsuario.fieldbyname('TELAENTRADAESTOQUE').AsBoolean;

  // ***** Menu cadastro
  N1CadastrosCliente.Visible        := DM.FDMTUsuario.fieldbyname('CADASTROCLIENTE').AsBoolean;
  N2CadastrosProdutos.Visible       := DM.FDMTUsuario.fieldbyname('CADASTROPRODUTO').AsBoolean;
  N3CadastrosGrupo.Visible          := DM.FDMTUsuario.fieldbyname('CADASTROGRUPO').AsBoolean;
  N4CadastrosSubGrupo.Visible       := DM.FDMTUsuario.fieldbyname('CADASTROSUBGRUPO').AsBoolean;
  N5CadastrosFormaPagamento.Visible := DM.FDMTUsuario.fieldbyname('CADASTROFORMAPAGTO').AsBoolean;
  N6CadastrosFornecedor.Visible     := DM.FDMTUsuario.fieldbyname('CADASTROFORNECEDOR').AsBoolean;
  N7CadastrosFuncionarios.Visible   := DM.FDMTUsuario.fieldbyname('CADASTROFUNCIONARIO').AsBoolean;
  N8CadastrosCidade.Visible         := DM.FDMTUsuario.fieldbyname('CADASTROCIDADE').AsBoolean;

  // ***** Menu movimentacao

  // * Contas A Receber
  N111LancarContaReceber.Visible    := DM.FDMTUsuario.fieldbyname('LANCARCONTARECEBER').AsBoolean;
  N112Recebimento.Visible           := DM.FDMTUsuario.fieldbyname('RECEBIMENTO').AsBoolean;
  N113ConsultarContaReceber.Visible := DM.FDMTUsuario.fieldbyname('CONSULTARCONTARECEBER').AsBoolean;

  // 1.1- Contas A Receber
  N11ContasAReceber.Visible := (N111LancarContaReceber.Visible)or(N112Recebimento.Visible)or(N113ConsultarContaReceber.Visible);

  // * Conta Recebida
  N121LancarContaRecebida.Visible   := DM.FDMTUsuario.fieldbyname('LANCARCONTARECEBIDA').AsBoolean;
  N122EstornarContaRecebida.Visible := DM.FDMTUsuario.fieldbyname('ESTORNARCONTARECEBIDA').AsBoolean;
  N123ConsultacontaRecebida.Visible := DM.FDMTUsuario.fieldbyname('CONSULTARCONTARECEBIDA').AsBoolean;

  // 1.2- Conta Recebida
  N12ContaRecebida.Visible := (N121LancarContaRecebida.Visible)or(N122EstornarContaRecebida.Visible)or(N123ConsultacontaRecebida.Visible);

  // * Conta Pagar
  N131LanamentoContaPagar.Visible := DM.FDMTUsuario.fieldbyname('LANCARCONTAPAGAR').AsBoolean;
  N132Pagamento.Visible           := DM.FDMTUsuario.fieldbyname('PAGAMENTO').AsBoolean;
  N133ConsultaContasPagar.Visible := DM.FDMTUsuario.fieldbyname('CONSULTACONTAPAGAR').AsBoolean;

  // 1.3- Conta a Pagar
  N13ContasAPagar.Visible := (N131LanamentoContaPagar.Visible)or(N132Pagamento.Visible)or(N133ConsultaContasPagar.Visible);

  // * Contas Pagas
  N141LanarContaPaga.Visible     := DM.FDMTUsuario.fieldbyname('LANCARCONTAPAGA').AsBoolean;
  N142EstornarContaPaga.Visible  := DM.FDMTUsuario.fieldbyname('ESTORNARCONTAPAGA').AsBoolean;
  N143ConsultarContaPaga.Visible := DM.FDMTUsuario.fieldbyname('CONSULTACONTAPAGA').AsBoolean;

  // 1.4- Contas Pagas
  N14ContasPagas.Visible := (N141LanarContaPaga.Visible)or(N142EstornarContaPaga.Visible)or(N143ConsultarContaPaga.Visible);

  // 1- Financeiro
  N1Financeiro.Visible := (N11ContasAReceber.Visible)or(N12ContaRecebida.Visible)or(N13ContasAPagar.Visible)or(N14ContasPagas.Visible);

  // Caixa
  N21CaixaDiario.Visible     := DM.FDMTUsuario.fieldbyname('CAIXADIARIO').AsBoolean;
  N22LancamentoCaixa.Visible := DM.FDMTUsuario.fieldbyname('LANCAMENTOCAIXA').AsBoolean;
  N23Historico.Visible       := DM.FDMTUsuario.fieldbyname('CADASTROHISTOCAIXA').AsBoolean;

  // 2- Caixa
  N2Caixa.Visible := (N21CaixaDiario.Visible)or(N22LancamentoCaixa.Visible)or(N23Historico.Visible);

  // Menu relatorios
  N11RelatorioCadastroCliente.Visible := DM.FDMTUsuario.fieldbyname('CADASTROCLIENTE').AsBoolean;
  N12RelatorioCadastroProduto.Visible := DM.FDMTUsuario.fieldbyname('CADASTROPRODUTO').AsBoolean;
  N21RelatorioContasAReceber.Visible  := DM.FDMTUsuario.fieldbyname('CONSULTARCONTARECEBER').AsBoolean;
  N22RelatorioContasRecebidas.Visible := DM.FDMTUsuario.fieldbyname('CONSULTARCONTARECEBIDA').AsBoolean;
  N23RelatorioContasAPagar.Visible    := DM.FDMTUsuario.fieldbyname('CONSULTACONTAPAGAR').AsBoolean;
  N24RelatorioContasPagas.Visible     := DM.FDMTUsuario.fieldbyname('CONSULTACONTAPAGA').AsBoolean;
  N25RelatorioContasExcluidas.Visible := N21RelatorioContasAReceber.Visible or N23RelatorioContasAPagar.Visible;
  N3RelatorioCaixa.Visible            := DM.FDMTUsuario.fieldbyname('CAIXADIARIO').AsBoolean;
  N4RelatorioServicos.Visible         := DM.FDMTUsuario.fieldbyname('TELASERVICO').AsBoolean;
  N5RelatorioVendas.Visible           := DM.FDMTUsuario.fieldbyname('TELAVENDA').AsBoolean;
  N6RelatorioEstoque.Visible          := DM.FDMTUsuario.fieldbyname('TELAENTRADAESTOQUE').AsBoolean;
end;

procedure TFrmMain.Login;
begin
  try
    if(FrmLogin = nil)then Application.CreateForm(TFrmLogin, FrmLogin);
    if(FrmLogin.ShowModal <> mrOk)then FrmMain.Close;
  finally
    FreeAndNil(FrmLogin);
  end;

  Self.LiberarMenus;
  StatusBar.Panels[4].Text := 'Usuario.: ' + DM.FDMTUsuario.FieldByName('LOGIN').AsString;
end;

procedure TFrmMain.N111CadastroClienteEntrePeriodoClick(Sender: TObject);
begin
  if(FrmRelatorioCadastroCliente = nil)then Application.CreateForm(TFrmRelatorioCadastroCliente, FrmRelatorioCadastroCliente);
  FrmRelatorioCadastroCliente.ShowModal;
  FreeAndNil(FrmRelatorioCadastroCliente);
end;

procedure TFrmMain.N111LancarContaReceberClick(Sender: TObject);
begin
  if(FrmLancamentoContaReceber = nil)then Application.CreateForm(TFrmLancamentoContaReceber, FrmLancamentoContaReceber);
  FrmLancamentoContaReceber.ShowModal;
  FreeAndNil(FrmLancamentoContaReceber);
end;

procedure TFrmMain.N112FichaDoClienteClick(Sender: TObject);
begin
  if(FrmFichaCliente = nil)then Application.CreateForm(TFrmFichaCliente, FrmFichaCliente);
  FrmFichaCliente.ShowModal;
  FreeAndNil(FrmFichaCliente);
end;

procedure TFrmMain.N112RecebimentoClick(Sender: TObject);
begin
  if(FrmRecebimentoConta = nil)then Application.CreateForm(TFrmRecebimentoConta, FrmRecebimentoConta);
  FrmRecebimentoConta.ShowModal;
  FreeAndNil(FrmRecebimentoConta);
end;

procedure TFrmMain.N113ConsultarContaReceberClick(Sender: TObject);
begin
  if(FrmConsultaContaReceber = nil)then Application.CreateForm(TFrmConsultaContaReceber, FrmConsultaContaReceber);
  FrmConsultaContaReceber.ShowModal;
  FreeAndNil(FrmConsultaContaReceber);
end;

procedure TFrmMain.N121LancarContaRecebidaClick(Sender: TObject);
begin
  if(FrmLancamentoContaRecebida = nil)then Application.CreateForm(TFrmLancamentoContaRecebida, FrmLancamentoContaRecebida);
  FrmLancamentoContaRecebida.ShowModal;
  FreeAndNil(FrmLancamentoContaRecebida);
end;

procedure TFrmMain.N122EstornarContaRecebidaClick(Sender: TObject);
begin
  if(FrmEstornaRecebimento = nil)then Application.CreateForm(TFrmEstornaRecebimento, FrmEstornaRecebimento);
  FrmEstornaRecebimento.ShowModal;
  FreeAndNil(FrmEstornaRecebimento);
end;

procedure TFrmMain.N123ConsultacontaRecebidaClick(Sender: TObject);
begin
  if(FrmConsultaContaRecebida = nil)then Application.CreateForm(TFrmConsultaContaRecebida, FrmConsultaContaRecebida);
  FrmConsultaContaRecebida.ShowModal;
  FreeAndNil(FrmConsultaContaRecebida);
end;

procedure TFrmMain.N12RelatorioCadastroProdutoClick(Sender: TObject);
begin
  if(FrmRelatorioCadastroProduto = nil)then Application.CreateForm(TFrmRelatorioCadastroProduto, FrmRelatorioCadastroProduto);
  FrmRelatorioCadastroProduto.ShowModal;
  FreeAndNil(FrmRelatorioCadastroProduto);
end;

procedure TFrmMain.N131LanamentoContaPagarClick(Sender: TObject);
begin
  if(FrmLancamentoContaPagar = nil)then Application.CreateForm(TFrmLancamentoContaPagar, FrmLancamentoContaPagar);
  FrmLancamentoContaPagar.ShowModal;
  FreeAndNil(FrmLancamentoContaPagar);
end;

procedure TFrmMain.N132PagamentoClick(Sender: TObject);
begin
  if(FrmPagamentoContas = nil)then Application.CreateForm(TFrmPagamentoContas, FrmPagamentoContas);
  FrmPagamentoContas.ShowModal;
  FreeAndNil(FrmPagamentoContas);
end;

procedure TFrmMain.N133ConsultaContasPagarClick(Sender: TObject);
begin
  if(FrmConsultaContaPagar = nil)then Application.CreateForm(TFrmConsultaContaPagar, FrmConsultaContaPagar);
  FrmConsultaContaPagar.ShowModal;
  FreeAndNil(FrmConsultaContaPagar);
end;

procedure TFrmMain.N141LanarContaPagaClick(Sender: TObject);
begin
  if(FrmLancamentoContaPaga = nil)then Application.CreateForm(TFrmLancamentoContaPaga, FrmLancamentoContaPaga);
  FrmLancamentoContaPaga.ShowModal;
  FreeAndNil(FrmLancamentoContaPaga);
end;

procedure TFrmMain.N142EstornarContaPagaClick(Sender: TObject);
begin
  if(FrmEstornaPagamento = nil)then Application.CreateForm(TFrmEstornaPagamento, FrmEstornaPagamento);
  FrmEstornaPagamento.ShowModal;
  FreeAndNil(FrmEstornaPagamento);
end;

procedure TFrmMain.N143ConsultarContaPagaClick(Sender: TObject);
begin
  if(FrmConsultaContaPaga = nil)then Application.CreateForm(TFrmConsultaContaPaga, FrmConsultaContaPaga);
  FrmConsultaContaPaga.ShowModal;
  FreeAndNil(FrmConsultaContaPaga);
end;

procedure TFrmMain.N211EntrePeriodoClick(Sender: TObject);
begin
  if(FrmRelatorioContasAReceberEntrePeriodo = nil)then Application.CreateForm(TFrmRelatorioContasAReceberEntrePeriodo, FrmRelatorioContasAReceberEntrePeriodo);
  FrmRelatorioContasAReceberEntrePeriodo.ShowModal;
  FreeAndNil(FrmRelatorioContasAReceberEntrePeriodo);
end;

procedure TFrmMain.N21CaixaDiarioClick(Sender: TObject);
begin
  if(FrmCaixaDiario = nil)then Application.CreateForm(TFrmCaixaDiario, FrmCaixaDiario);
  FrmCaixaDiario.ShowModal;
  FreeAndNil(FrmCaixaDiario);
end;

procedure TFrmMain.N221ContasRecebidasEntrePeriodoClick(Sender: TObject);
begin
  if(FrmRelatorioContasRecebidasEntrePeriodo = nil)then Application.CreateForm(TFrmRelatorioContasRecebidasEntrePeriodo, FrmRelatorioContasRecebidasEntrePeriodo);
  FrmRelatorioContasRecebidasEntrePeriodo.ShowModal;
  FreeAndNil(FrmRelatorioContasRecebidasEntrePeriodo);
end;

procedure TFrmMain.N222ContasVencidas1Click(Sender: TObject);
begin
  if(FrmRelatorioContasAReceberVencidas = nil)then Application.CreateForm(TFrmRelatorioContasAReceberVencidas, FrmRelatorioContasAReceberVencidas);
  FrmRelatorioContasAReceberVencidas.ShowModal;
  FreeAndNil(FrmRelatorioContasAReceberVencidas);
end;

procedure TFrmMain.N22LancamentoCaixaClick(Sender: TObject);
begin
  if(FrmLancamentoCaixa = nil)then Application.CreateForm(TFrmLancamentoCaixa, FrmLancamentoCaixa);
  FrmLancamentoCaixa.ShowModal;
  FreeAndNil(FrmLancamentoCaixa);
end;

procedure TFrmMain.N231EntrePeriodoClick(Sender: TObject);
begin
  if(FrmRelatorioContasPagarEntrePeriodo = nil)then Application.CreateForm(TFrmRelatorioContasPagarEntrePeriodo, FrmRelatorioContasPagarEntrePeriodo);
  FrmRelatorioContasPagarEntrePeriodo.ShowModal;
  FreeAndNil(FrmRelatorioContasPagarEntrePeriodo);
end;

procedure TFrmMain.N232ContasVencidas1Click(Sender: TObject);
begin
  if(FrmContasPagarVencidas = nil)then Application.CreateForm(TFrmContasPagarVencidas, FrmContasPagarVencidas);
  FrmContasPagarVencidas.ShowModal;
  FreeAndNil(FrmContasPagarVencidas);
end;

procedure TFrmMain.N23HistoricoClick(Sender: TObject);
begin
  if(FrmCadastroHistoricoCaixa = nil)then Application.CreateForm(TFrmCadastroHistoricoCaixa, FrmCadastroHistoricoCaixa);
  FrmCadastroHistoricoCaixa.ShowModal;
  FreeAndNil(FrmCadastroHistoricoCaixa);
end;

procedure TFrmMain.N241EntrePeriodoClick(Sender: TObject);
begin
  if(FrmContasPagasEntrePeriodo = nil)then Application.CreateForm(TFrmContasPagasEntrePeriodo, FrmContasPagasEntrePeriodo);
  FrmContasPagasEntrePeriodo.ShowModal;
  FreeAndNil(FrmContasPagasEntrePeriodo);
end;

procedure TFrmMain.N25RelatorioContasExcluidasClick(Sender: TObject);
begin
  if(FrmContasExcluidas = nil)then Application.CreateForm(TFrmContasExcluidas, FrmContasExcluidas);
  FrmContasExcluidas.ShowModal;
  FreeAndNil(FrmContasExcluidas);
end;

procedure TFrmMain.N31CaixaDiarioClick(Sender: TObject);
begin
  if(FrmRelatorioCaixaDiario = nil)then Application.CreateForm(TFrmRelatorioCaixaDiario, FrmRelatorioCaixaDiario);
  FrmRelatorioCaixaDiario.ShowModal;
  FreeAndNil(FrmRelatorioCaixaDiario);
end;

procedure TFrmMain.N32CaixaEntrePeriodoClick(Sender: TObject);
begin
  if(FrmRelatorioCaixaDiarioEntrePeriodo = nil)then Application.CreateForm(TFrmRelatorioCaixaDiarioEntrePeriodo, FrmRelatorioCaixaDiarioEntrePeriodo);
  FrmRelatorioCaixaDiarioEntrePeriodo.ShowModal;
  FreeAndNil(FrmRelatorioCaixaDiarioEntrePeriodo);
end;

procedure TFrmMain.N3CadastrosGrupoClick(Sender: TObject);
begin
  if(FrmCadastroGrupo = nil)then Application.CreateForm(TFrmCadastroGrupo, FrmCadastroGrupo);
  FrmCadastroGrupo.ShowModal;
  FreeAndNil(FrmCadastroGrupo);
end;

procedure TFrmMain.N41ServicoEntrePeriodoClick(Sender: TObject);
begin
  if(FrmRelatorioServicos = nil)then Application.CreateForm(TFrmRelatorioServicos, FrmRelatorioServicos);
  FrmRelatorioServicos.ShowModal;
  FreeAndNil(FrmRelatorioServicos);
end;

procedure TFrmMain.N42ServiosRealizadosClick(Sender: TObject);
begin
  if(FrmRelatorioServicosRealizados = nil)then Application.CreateForm(TFrmRelatorioServicosRealizados, FrmRelatorioServicosRealizados);
  FrmRelatorioServicosRealizados.ShowModal;
  FreeAndNil(FrmRelatorioServicosRealizados);
end;

procedure TFrmMain.N43ServicosResumidoClick(Sender: TObject);
begin
  if(FrmRelatorioServicoResumido = nil)then Application.CreateForm(TFrmRelatorioServicoResumido, FrmRelatorioServicoResumido);
  FrmRelatorioServicoResumido.ShowModal;
  FreeAndNil(FrmRelatorioServicoResumido);
end;

procedure TFrmMain.N4CadastrosSubGrupoClick(Sender: TObject);
begin
  if(FrmCadastroSubGrupo = nil)then Application.CreateForm(TFrmCadastroSubGrupo, FrmCadastroSubGrupo);
  FrmCadastroSubGrupo.ShowModal;
  FreeAndNil(FrmCadastroSubGrupo);
end;

procedure TFrmMain.N4Usuarios1Click(Sender: TObject);
begin
  if DM.FDMTUsuario.FieldByName('CODIGO').AsInteger = 1 then
  begin
     if(FrmCadastroUsuario = nil)then Application.CreateForm(TFrmCadastroUsuario, FrmCadastroUsuario);
     FrmCadastroUsuario.ShowModal;
     FreeAndNil(FrmCadastroUsuario);
  end;
end;

procedure TFrmMain.N51VendaEntrePeriodoClick(Sender: TObject);
begin
  if(FrmRelatorioVendas = nil)then Application.CreateForm(TFrmRelatorioVendas, FrmRelatorioVendas);
  FrmRelatorioVendas.ShowModal;
  FreeAndNil(FrmRelatorioVendas);
end;

procedure TFrmMain.N5CadastrosFormaPagamentoClick(Sender: TObject);
begin
  if(FrmCadastroFormaPagamento = nil)then Application.CreateForm(TFrmCadastroFormaPagamento, FrmCadastroFormaPagamento);
  FrmCadastroFormaPagamento.ShowModal;
  FreeAndNil(FrmCadastroFormaPagamento);
end;

procedure TFrmMain.N5TrocarUsuario1Click(Sender: TObject);
begin
  Self.Login
end;

procedure TFrmMain.N61EntrePeriodoClick(Sender: TObject);
begin
  if(FrmRelatorioEntradaEstoque = nil)then Application.CreateForm(TFrmRelatorioEntradaEstoque, FrmRelatorioEntradaEstoque);
  FrmRelatorioEntradaEstoque.ShowModal;
  FreeAndNil(FrmRelatorioEntradaEstoque);
end;

procedure TFrmMain.N62SugestoCompra1Click(Sender: TObject);
begin
  if(FrmSugestaoCompra = nil)then Application.CreateForm(TFrmSugestaoCompra, FrmSugestaoCompra);
  FrmSugestaoCompra.ShowModal;
  FreeAndNil(FrmSugestaoCompra);
end;

procedure TFrmMain.N6CadastrosFornecedorClick(Sender: TObject);
begin
  if(FrmCadastroFornecedor = nil)then Application.CreateForm(TFrmCadastroFornecedor, FrmCadastroFornecedor);
  FrmCadastroFornecedor.ShowModal;
  FreeAndNil(FrmCadastroFornecedor);
end;

procedure TFrmMain.N7CadastrosFuncionariosClick(Sender: TObject);
begin
  if(FrmCadastroFuncionario = nil)then Application.CreateForm(TFrmCadastroFuncionario, FrmCadastroFuncionario);
  FrmCadastroFuncionario.ShowModal;
  FreeAndNil(FrmCadastroFuncionario);
end;

procedure TFrmMain.N8CadastrosCidadeClick(Sender: TObject);
begin
  if(FrmCadastroCidade = nil)then Application.CreateForm(TFrmCadastroCidade, FrmCadastroCidade);
  FrmCadastroCidade.ShowModal;
  FreeAndNil(FrmCadastroCidade);
end;

procedure TFrmMain.N2CadastrosProdutosClick(Sender: TObject);
begin
  if(FrmCadastroProduto = nil)then Application.CreateForm(TFrmCadastroProduto, FrmCadastroProduto);
  FrmCadastroProduto.ShowModal;
  FreeAndNil(FrmCadastroProduto);
end;

procedure TFrmMain.ValidarLiberacao;
var
  DataLibereacao : TDate;
  DiasLiberados : Integer;
begin
  DataLibereacao := 01/01/2000;

  Self.AtualizarHash;

  DM.FDQParametros.Close;
  DM.FDQParametros.Open;

  if(DM.FDQParametros.FieldByName('HASH').AsString = EmptyStr)then
  begin
     ShowWarning('Sistema Expirado.' + sLineBreak + 'Favor entrar em contato para fazer a liberaçao do sistema');
     FrmMain.Close;
  end;

  DataLibereacao := StrToDate(DecryptData(DM.FDQParametros.FieldByName('HASH').AsString));

  if DataLibereacao < StrToDate(FormatDateTime('dd/mm/yyyy',Date)) then
  begin
    ShowWarning('Sistema Expirado.' + sLineBreak + 'Favor entrar em contato para fazer a liberaçao do sistema');
    FrmMain.Close;
  end;

  DiasLiberados := DaysBetween(DataLibereacao, Date);
  if DiasLiberados <= 10 then
    ShowWarning('Dias até expiração do sistema: ' + DiasLiberados.ToString + sLineBreak +
                'Favor entrar em contato para fazer a liberaçao do sistema');

  
  StatusBar.Panels[3].Text := 'Data da Liberação.: ' + DateToStr(DataLibereacao);

  if(DM.FDQParametros.FieldByName('NOMEEMPRESA').AsString = 'AAB SOFTWARE')
  or(DM.FDQParametros.FieldByName('CODIGOARQUIVOLIBERACAO').AsString = '1')
  then
  begin
    DM.FDQParametros.Edit;
    DM.FDQParametros.FieldByName('NOMEEMPRESA').AsString := 'CONFIGURACOES NECESSARIAS';
    DM.FDQParametros.FieldByName('HASH').AsString := '';
    DM.FDQParametros.FieldByName('CODIGOARQUIVOLIBERACAO').AsString := '0';
    DM.FDQParametros.Post;
  end;
end;

procedure TFrmMain.VerificarMensagem;
begin
  MemoMensagem.Clear;
  DM.Mensagem.Close;
  MemoMensagem.Visible := False;

  FConexao.Conexao.ObtemDados(DM.Mensagem,'/Mensagem.json');

  if not (DM.Mensagem.FieldCount = 0) then
  begin
    MemoMensagem.Clear;
    MemoMensagem.Visible := False;

    if DM.Mensagem.FieldByName('MENSAGEM').AsString <> 'NULL' then
    begin
      MemoMensagem.Lines.Add(DM.Mensagem.FieldByName('MENSAGEM').AsString);
      MemoMensagem.Visible := True;
    end;
  end;
end;

end.




