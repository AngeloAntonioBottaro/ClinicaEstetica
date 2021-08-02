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

  uCComunicacao,

  UntBase,
  UntBibliotecaFuncoes,
  UntComponentesGerais,
  UntDataModule,
  UntAtualizarSistema,
  UntSenha,
  UntLiberarSistema,
  UntCadastroCliente,
  UntCadastroFormaPagamento,
  UntCadastroGrupo,
  UntCadastroHistoricoCaixa,
  UntCadastroProduto,
  UntCadastroSubGrupo,
  UntCaixaDiario,
  UntEntradaEstoque,
  UntEstornaRecebimento,
  UntLancamentoCaixa,
  UntLancamentoContaReceber,
  UntLancamentoContaRecebida,
  UntRecebimentoConta,
  UntServicos,
  UntVenda,
  UntConsultaContaReceber,
  UntConsultaContaRecebida,
  UntRelatorioCadastroCliente,
  UntRelatorioCadastroProduto,
  UntRelatorioCaixaDiario,
  UntRelatorioCaixaDiarioEntrePeriodo,
  UntRelatorioContasAReceberEntrePeriodo,
  UntRelatorioContasRecebidasEntrePeriodo,
  UntRelatorioContasReceberVencidas,
  UntRelatorioEntradaEstoque,
  UntRelatorioServicos,
  UntRelatorioVendas, UntCadastroFornecedor, UntCadastroCidade,
  UntCadastroFuncionario, UntLancamentoContaPagar, UntPagamentoConta,
  UntRelatorioServicosRealizados, UntConsultaContaPagar, UntConsultaContaPaga,
  UntEstornaPagamento, UntLancamentoContaPaga, UntRelatorioServicosResumidos,
  UntRelatorioContasPagarEntrePeriodo, UntRelatorioContasPagarVencidas,
  UntRelatorioContasPagasEntrePeriodo, UntRelatorioContasExcluidas,
  UntFichaCliente;

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
  private
    FConexao : TComunicacao;
    procedure ConectarBanco;
    procedure ValidarLiberacao;
    procedure VerificarMensagem;
    procedure AtualizarHash;
    procedure Login;
    procedure LiberarMenus;
    procedure CarregarImagens;
    function GetConexao: TComunicacao;
    procedure SetConexao(const Value: TComunicacao);
    { Private declarations }
  public
    property Conexao : TComunicacao read GetConexao write SetConexao;
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

uses UntRelatorioSugestaoCompra, UntAgenda, UntLogin, UntCadastroUsuario;

procedure TFrmMain.AtualizarHash;
var
  arquivoLiberacao : TextFile;
  hash : string;
begin
  try
    try
      // Verifica se tem o nome do arquivo para liberaçao
      DM.FDQParametros.Close;
      DM.FDQParametros.Open;

      if DM.FDQParametros.FieldByName('CODIGOARQUIVOLIBERACAO').AsString = EmptyStr then
      begin
        FrmSenha.ShowModal;
      end;

      // Tenta Pegar a Liberação do arquivo TXT
      DM.FDQParametros.Close;
      DM.FDQParametros.Open;

      if FileExists(ExtractFilePath(Application.ExeName) + DM.FDQParametros.FieldByName('CODIGOARQUIVOLIBERACAO').AsString + '.txt') then
      begin
        // Pega o Arquivo
        AssignFile(arquivoLiberacao,ExtractFilePath(Application.ExeName) + DM.FDQParametros.FieldByName('CODIGOARQUIVOLIBERACAO').AsString + '.txt');

        //Inicia do zero
        Reset(arquivoLiberacao);
        // Percorre ele todo
        while not eof(arquivoLiberacao) do
        begin
          Readln(arquivoLiberacao, hash);

          DM.FDQParametros.Edit;
          DM.FDQParametros.FieldByName('HASH').AsString := hash;
          DM.FDQParametros.Post;
        end;
        Closefile(arquivoLiberacao);
        DeleteFile(ExtractFilePath(Application.ExeName) + DM.FDQParametros.FieldByName('CODIGOARQUIVOLIBERACAO').AsString + '.txt');
      end;
    finally
      // Tenta Pegar a liberação do Firebase
      DM.FDQParametros.Close;
      DM.FDQParametros.Open;

      FConexao.ObtemDados(DM.FDMTParametros,'/Liberacao/' + DM.FDQParametros.FieldByName('CODIGOARQUIVOLIBERACAO').AsString + '.json');

      DM.FDQParametros.Close;
      DM.FDQParametros.Open;
      DM.FDQParametros.Edit;

      // Se o nome da empresa for igual ao que esta no registro ele salva o hash
      if DM.FDQParametros.FieldByName('NOMEEMPRESA').AsString = DM.FDMTParametros.FieldByName('NOMEEMPRESA').AsString then
        DM.FDQParametros.FieldByName('HASH').AsString := DM.FDMTParametros.FieldByName('HASH').AsString
      else
        Mensagem(2,'Codigo de liberação incorreto para empresa logada');

      DM.FDQParametros.Post;

      DM.FDMTParametros.Close;
    end;
  Except on E:Exception do
    Mensagem(2,'Verifique a conexão com a internet');
  end;
end;

procedure TFrmMain.AtualizarSistemaClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmAtualizarSistema.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.ButtonAgendaClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmAgenda.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.ButtonEstoqueClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmEntradaEstoque.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.ButtonServicosClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmServicos.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.ButtonVendaClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmVenda.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N1CadastrosClienteClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmCadastroCliente.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.CarregarImagens;
begin
  try
    try
      // tenta pegar a logo nos tipo PNG, JPEG, JPG, BMP;
      if FileExists(ExtractFilePath(Application.ExeName) + 'Logo.png') then
        Image.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Logo.png')
      else if FileExists(ExtractFilePath(Application.ExeName) + 'Logo.jpeg') then
        Image.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Logo.jpeg')
      else if FileExists(ExtractFilePath(Application.ExeName) + 'Logo.jpg') then
        Image.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Logo.jpg')
      else if FileExists(ExtractFilePath(Application.ExeName) + 'Logo.bmp') then
        Image.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Logo.bmp');

      // tenta pegar o icone
      if FileExists(ExtractFilePath(Application.ExeName) + 'Icone.ico') then
        FrmMain.Icon.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Icone.ico');
    finally

    end;
  Except on E:Exception do
    //
  end;
end;

procedure TFrmMain.ConectarBanco;
var
  arquivoini : TIniFile;
  Caminho, Banco, Ip, Tipo, Status : String;
  AppName : string;
  AppNameLength: Integer;
begin
  try
    try
      DM.FDConnection.Connected := False;

      // Verifica se Existe o arquivo ini
      AppNameLength := ExtractFileName(Application.ExeName).Length;
      AppName := Copy(ExtractFileName(Application.ExeName),1, AppNameLength-4);

      if not FileExists(AppName + '.ini') then
        CriarIniFile;

      // Pega o caminho do banco que esta configurado
      arquivoini := TIniFile.Create(ExtractFilePath(Application.ExeName) + AppName + '.ini');
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

        TimerAtuInfo.Enabled := False;
        StatusBar.Panels[2].Text := 'IP.: ' + Ip;
      end;

      // Conecta ao Banco
      DM.FDConnection.Connected := True;

      // Coloca as informaçoes no statusbar
      StatusBar.Panels[0].Text := 'Caminho do Banco.: ' + Caminho + Banco;
      if DM.FDConnection.Connected then
        StatusBar.Panels[1].Text := 'Status do Banco.: Conectado'
      else
      begin
        StatusBar.Panels[1].Text := 'Status do Banco.: Desconectado';
        Mensagem(2,'Banco Desconectado');
      end;

      // Se for a primeira vez que esta abrindo o sistema ele mostra a tela de atualizaçao
      if not (Status = 'A') then
      begin
        FrmAtualizarSistema.ShowModal;
        FrmSenha.ShowModal;
        arquivoini.WriteString('Configuracao','STATUS','A');
      end;
    finally

    end
  Except on E:Exception do
    begin
      Mensagem(3,E.ToString);
      FrmMain.Close;
    end;
  end;
end;

procedure TFrmMain.ConfiguracoesClick(Sender: TObject);
begin
  inherited;
  try
    try
      if DM.FDMTUsuario.FieldByName('CODIGO').AsInteger = 1 then
      begin
        FrmSenha.ShowModal;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
var
  AppName : string;
  AppNameLength: Integer;
begin
  inherited;
  try
    try
      if not Assigned(FConexao) then
        FConexao := TComunicacao.Create('https://aab-softwares.firebaseio.com/');

      // Verifica se Existe o arquivo ini
      AppNameLength := ExtractFileName(Application.ExeName).Length;
      AppName := Copy(ExtractFileName(Application.ExeName),1, AppNameLength-4);

      if not FileExists(AppName + '.ini') then
        CriarIniFile;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      // Conectar ao banco apos ler o caminho no arquivo INI
      ConectarBanco;

      // Faz a liberaçao do sistema
      ValidarLiberacao;

      // Verificar  Mensagem
      VerificarMensagem;

      // Arrumar parametro para nao abrir com a liberaçao Geral
      if (DM.FDQParametros.FieldByName('NOMEEMPRESA').AsString = 'AAB SOFTWARE') or (DM.FDQParametros.FieldByName('CODIGOARQUIVOLIBERACAO').AsString = '1') then
      begin
        DM.FDQParametros.Edit;
        DM.FDQParametros.FieldByName('NOMEEMPRESA').AsString := 'CONFIGURACOES NECESSARIAS';
        DM.FDQParametros.FieldByName('HASH').AsString := '';
        DM.FDQParametros.FieldByName('CODIGOARQUIVOLIBERACAO').AsString := '0';
        DM.FDQParametros.Post;
      end
      else
      begin
        // Tenta pegar a logo e o icone
        CarregarImagens;
      end;

      // Arrumar o Caption da tela
      FrmMain.Caption := DM.FDQParametros.FieldByName('NOMEEMPRESA').AsString;

      { Colocar Para Abrir Login Aqui Caso Necessario }
      Login;

    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

function TFrmMain.GetConexao: TComunicacao;
begin
  Result := FConexao;
end;

procedure TFrmMain.LiberacaoSistemaClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmLiberarSistema.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.LiberarMenus;
begin
  try
    try
      // ***** Acesso Rapido
      ButtonAgenda.Visible := DM.FDMTUsuario.fieldbyname('TELAAGENDA').AsBoolean;
      ButtonServicos.Visible := DM.FDMTUsuario.fieldbyname('TELASERVICO').AsBoolean;
      ButtonVenda.Visible := DM.FDMTUsuario.fieldbyname('TELAVENDA').AsBoolean;
      ButtonEstoque.Visible := DM.FDMTUsuario.fieldbyname('TELAENTRADAESTOQUE').AsBoolean;

      // ***** Menu cadastro
      N1CadastrosCliente.Visible := DM.FDMTUsuario.fieldbyname('CADASTROCLIENTE').AsBoolean;
      N2CadastrosProdutos.Visible := DM.FDMTUsuario.fieldbyname('CADASTROPRODUTO').AsBoolean;
      N3CadastrosGrupo.Visible := DM.FDMTUsuario.fieldbyname('CADASTROGRUPO').AsBoolean;
      N4CadastrosSubGrupo.Visible := DM.FDMTUsuario.fieldbyname('CADASTROSUBGRUPO').AsBoolean;
      N5CadastrosFormaPagamento.Visible := DM.FDMTUsuario.fieldbyname('CADASTROFORMAPAGTO').AsBoolean;
      N6CadastrosFornecedor.Visible := DM.FDMTUsuario.fieldbyname('CADASTROFORNECEDOR').AsBoolean;
      N7CadastrosFuncionarios.Visible := DM.FDMTUsuario.fieldbyname('CADASTROFUNCIONARIO').AsBoolean;
      N8CadastrosCidade.Visible := DM.FDMTUsuario.fieldbyname('CADASTROCIDADE').AsBoolean;

      // ***** Menu movimentacao

      // * Contas A Receber
      N111LancarContaReceber.Visible := DM.FDMTUsuario.fieldbyname('LANCARCONTARECEBER').AsBoolean;
      N112Recebimento.Visible := DM.FDMTUsuario.fieldbyname('RECEBIMENTO').AsBoolean;
      N113ConsultarContaReceber.Visible := DM.FDMTUsuario.fieldbyname('CONSULTARCONTARECEBER').AsBoolean;

      // 1.1- Contas A Receber
      if (N111LancarContaReceber.Visible) or (N112Recebimento.Visible) or (N113ConsultarContaReceber.Visible) then
        N11ContasAReceber.Visible := True
      else
        N11ContasAReceber.Visible := False;

      // * Conta Recebida
      N121LancarContaRecebida.Visible := DM.FDMTUsuario.fieldbyname('LANCARCONTARECEBIDA').AsBoolean;
      N122EstornarContaRecebida.Visible := DM.FDMTUsuario.fieldbyname('ESTORNARCONTARECEBIDA').AsBoolean;
      N123ConsultacontaRecebida.Visible := DM.FDMTUsuario.fieldbyname('CONSULTARCONTARECEBIDA').AsBoolean;

      // 1.2- Conta Recebida
      if (N121LancarContaRecebida.Visible) or (N122EstornarContaRecebida.Visible) or (N123ConsultacontaRecebida.Visible) then
        N12ContaRecebida.Visible := True
      else
        N12ContaRecebida.Visible := False;

      // * Conta Pagar
      N131LanamentoContaPagar.Visible := DM.FDMTUsuario.fieldbyname('LANCARCONTAPAGAR').AsBoolean;
      N132Pagamento.Visible := DM.FDMTUsuario.fieldbyname('PAGAMENTO').AsBoolean;
      N133ConsultaContasPagar.Visible := DM.FDMTUsuario.fieldbyname('CONSULTACONTAPAGAR').AsBoolean;

      // 1.3- Conta a Pagar
      if (N131LanamentoContaPagar.Visible) or (N132Pagamento.Visible) or (N133ConsultaContasPagar.Visible) then
        N13ContasAPagar.Visible := True
      else
        N13ContasAPagar.Visible := False;

      // * Contas Pagas
      N141LanarContaPaga.Visible := DM.FDMTUsuario.fieldbyname('LANCARCONTAPAGA').AsBoolean;
      N142EstornarContaPaga.Visible := DM.FDMTUsuario.fieldbyname('ESTORNARCONTAPAGA').AsBoolean;
      N143ConsultarContaPaga.Visible := DM.FDMTUsuario.fieldbyname('CONSULTACONTAPAGA').AsBoolean;

      // 1.4- Contas Pagas
      if (N141LanarContaPaga.Visible) or (N142EstornarContaPaga.Visible) or (N143ConsultarContaPaga.Visible) then
        N14ContasPagas.Visible := True
      else
        N14ContasPagas.Visible := False;

      // 1- Financeiro
      if (N11ContasAReceber.Visible) or (N12ContaRecebida.Visible) or (N13ContasAPagar.Visible) or (N14ContasPagas.Visible) then
        N1Financeiro.Visible := True
      else
        N1Financeiro.Visible := False;

      // Caixa
      N21CaixaDiario.Visible := DM.FDMTUsuario.fieldbyname('CAIXADIARIO').AsBoolean;
      N22LancamentoCaixa.Visible := DM.FDMTUsuario.fieldbyname('LANCAMENTOCAIXA').AsBoolean;
      N23Historico.Visible := DM.FDMTUsuario.fieldbyname('CADASTROHISTOCAIXA').AsBoolean;

      // 2- Caixa
      if (N21CaixaDiario.Visible) or (N22LancamentoCaixa.Visible) or (N23Historico.Visible) then
        N2Caixa.Visible := True
      else
        N2Caixa.Visible := False;

      // Menu relatorios
      N11RelatorioCadastroCliente.Visible := DM.FDMTUsuario.fieldbyname('CADASTROCLIENTE').AsBoolean;
      N12RelatorioCadastroProduto.Visible := DM.FDMTUsuario.fieldbyname('CADASTROPRODUTO').AsBoolean;
      N21RelatorioContasAReceber.Visible := DM.FDMTUsuario.fieldbyname('CONSULTARCONTARECEBER').AsBoolean;
      N22RelatorioContasRecebidas.Visible := DM.FDMTUsuario.fieldbyname('CONSULTARCONTARECEBIDA').AsBoolean;
      N23RelatorioContasAPagar.Visible := DM.FDMTUsuario.fieldbyname('CONSULTACONTAPAGAR').AsBoolean;
      N24RelatorioContasPagas.Visible := DM.FDMTUsuario.fieldbyname('CONSULTACONTAPAGA').AsBoolean;
      N25RelatorioContasExcluidas.Visible := True;
      N3RelatorioCaixa.Visible := DM.FDMTUsuario.fieldbyname('CAIXADIARIO').AsBoolean;
      N4RelatorioServicos.Visible := DM.FDMTUsuario.fieldbyname('TELASERVICO').AsBoolean;
      N5RelatorioVendas.Visible := DM.FDMTUsuario.fieldbyname('TELAVENDA').AsBoolean;
      N6RelatorioEstoque.Visible := DM.FDMTUsuario.fieldbyname('TELAENTRADAESTOQUE').AsBoolean;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.Login;
begin
  try
    try
      StatusBar.Panels[4].Text := 'Usuario.: ';
      FrmLogin.ShowModal;

      // Se estiver logado vai liberar os menus senao vai fechar o programa
      if StrToBool(FrmLogin.LabelLogin.Caption) then
      begin
        LiberarMenus;
        StatusBar.Panels[4].Text := 'Usuario.: ' + DM.FDMTUsuario.FieldByName('LOGIN').AsString;
      end
      else
        FrmMain.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N111CadastroClienteEntrePeriodoClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmRelatorioCadastroCliente.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N111LancarContaReceberClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmLancamentoContaReceber.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N112FichaDoClienteClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmFichaCliente.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N112RecebimentoClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmRecebimentoConta.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N113ConsultarContaReceberClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmConsultaContaReceber.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N121LancarContaRecebidaClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmLancamentoContaRecebida.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N122EstornarContaRecebidaClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmEstornaRecebimento.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N123ConsultacontaRecebidaClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmConsultaContaRecebida.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N12RelatorioCadastroProdutoClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmRelatorioCadastroProduto.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N131LanamentoContaPagarClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmLancamentoContaPagar.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N132PagamentoClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmPagamentoContas.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N133ConsultaContasPagarClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmConsultaContaPagar.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N141LanarContaPagaClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmLancamentoContaPaga.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N142EstornarContaPagaClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmEstornaPagamento.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N143ConsultarContaPagaClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmConsultaContaPaga.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N211EntrePeriodoClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmRelatorioContasAReceberEntrePeriodo.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N21CaixaDiarioClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmCaixaDiario.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N221ContasRecebidasEntrePeriodoClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmRelatorioContasRecebidasEntrePeriodo.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N222ContasVencidas1Click(Sender: TObject);
begin
  inherited;
  try
    try
      FrmRelatorioContasAReceberVencidas.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N22LancamentoCaixaClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmLancamentoCaixa.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N231EntrePeriodoClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmRelatorioContasPagarEntrePeriodo.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N232ContasVencidas1Click(Sender: TObject);
begin
  inherited;
  try
    try
      FrmContasPagarVencidas.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N23HistoricoClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmCadastroHistoricoCaixa.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N241EntrePeriodoClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmContasPagasEntrePeriodo.ShowModal
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N25RelatorioContasExcluidasClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmContasExcluidas.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N31CaixaDiarioClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmRelatorioCaixaDiario.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N32CaixaEntrePeriodoClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmRelatorioCaixaDiarioEntrePeriodo.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N3CadastrosGrupoClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmCadastroGrupo.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N41ServicoEntrePeriodoClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmRelatorioServicos.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N42ServiosRealizadosClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmRelatorioServicosRealizados.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N43ServicosResumidoClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmRelatorioServicoResumido.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N4CadastrosSubGrupoClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmCadastroSubGrupo.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N4Usuarios1Click(Sender: TObject);
begin
  inherited;
  try
    try
      if DM.FDMTUsuario.FieldByName('CODIGO').AsInteger = 1 then
      begin
        FrmCadastroUsuario.ShowModal;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N51VendaEntrePeriodoClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmRelatorioVendas.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N5CadastrosFormaPagamentoClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmCadastroFormaPagamento.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N5TrocarUsuario1Click(Sender: TObject);
begin
  inherited;
  try
    try
      Login;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N61EntrePeriodoClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmRelatorioEntradaEstoque.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N62SugestoCompra1Click(Sender: TObject);
begin
  inherited;
  try
    try
      FrmSugestaoCompra.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N6CadastrosFornecedorClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmCadastroFornecedor.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N7CadastrosFuncionariosClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmCadastroFuncionario.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N8CadastrosCidadeClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmCadastroCidade.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.N2CadastrosProdutosClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmCadastroProduto.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmMain.SetConexao(const Value: TComunicacao);
begin
  FConexao := Value;
end;

procedure TFrmMain.ValidarLiberacao;
var
  DataLibereacao : TDate;
  DiasLiberados : Integer;
begin
  try
    try
      // Inicia a variavel
      DataLibereacao := 01/01/2000;

      AtualizarHash;

      // Faz a Liberação do sistema
      DM.FDQParametros.Close;
      DM.FDQParametros.Open;

      // Verifica se tem o hash
      if DM.FDQParametros.FieldByName('HASH').AsString = EmptyStr then
      begin
          Mensagem(2,'Sistema Expirado.' + sLineBreak + 'Favor entrar em contato para fazer a liberaçao do sistema');
          FrmMain.Close;
      end
      else
      begin
        // Decodifica a Data se o hash pertencer a empresa
        if True then

        DataLibereacao := StrToDate(DecryptData(DM.FDQParametros.FieldByName('HASH').AsString));

        if DataLibereacao < StrToDate(FormatDateTime('dd/mm/yyyy',Date)) then
        begin
          Mensagem(2,'Sistema Expirado.' + sLineBreak + 'Favor entrar em contato para fazer a liberaçao do sistema');
          FrmMain.Close;
        end
        else
        begin
          DiasLiberados := DaysBetween(DataLibereacao, Date);
          if DiasLiberados <= 10 then
            Mensagem(2,'Dias até expiração do sistema: ' + DiasLiberados.ToString + sLineBreak + 'Favor entrar em contato para fazer a liberaçao do sistema');
        end;
      end;

      StatusBar.Panels[3].Text := 'Data da Liberação.: ' + DateToStr(DataLibereacao);
    finally

    end;
  Except on E:Exception do
    begin
      Mensagem(3,E.ToString);
      FrmMain.Close;
    end;
  end;
end;

procedure TFrmMain.VerificarMensagem;
begin
  try
    try
      MemoMensagem.Clear;
      DM.Mensagem.Close;
      MemoMensagem.Visible := False;

      FConexao.ObtemDados(DM.Mensagem,'/Mensagem.json');

      if not (DM.Mensagem.FieldCount = 0) then
      begin
        if DM.Mensagem.FieldByName('MENSAGEM').AsString = 'NULL' then
        begin
          MemoMensagem.Clear;
          MemoMensagem.Visible := False;
        end
        else
        begin
          MemoMensagem.Lines.Add(DM.Mensagem.FieldByName('MENSAGEM').AsString);
          MemoMensagem.Visible := True;
        end;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.




