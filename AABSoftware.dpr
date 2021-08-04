program AABSoftware;

uses
  Vcl.Forms,
  UntBase in 'Forms\UntBase.pas' {FrmBase},
  UntMain in 'Forms\UntMain.pas' {FrmMain},
  Vcl.Themes,
  Vcl.Styles,
  UntBibliotecaFuncoes in 'Biblioteca\UntBibliotecaFuncoes.pas',
  UntComponentesGerais in 'Biblioteca\UntComponentesGerais.pas' {FrmComponentes},
  UntDataModule in 'DataModules\UntDataModule.pas' {DM: TDataModule},
  UntAtualizarSistema in 'Forms\UntAtualizarSistema.pas' {FrmAtualizarSistema},
  UntSenha in 'Forms\UntSenha.pas' {FrmSenha},
  UntParametrosSistema in 'Forms\UntParametrosSistema.pas' {FrmParametrosSistema},
  UntLiberarSistema in 'Forms\UntLiberarSistema.pas' {FrmLiberarSistema},
  UntCadastroCliente in 'Forms\UntCadastroCliente.pas' {FrmCadastroCliente},
  UntCadastroFormaPagamento in 'Forms\UntCadastroFormaPagamento.pas' {FrmCadastroFormaPagamento},
  UntCadastroGrupo in 'Forms\UntCadastroGrupo.pas' {FrmCadastroGrupo},
  UntCadastroHistoricoCaixa in 'Forms\UntCadastroHistoricoCaixa.pas' {FrmCadastroHistoricoCaixa},
  UntCadastroProduto in 'Forms\UntCadastroProduto.pas' {FrmCadastroProduto},
  UntCadastroSubGrupo in 'Forms\UntCadastroSubGrupo.pas' {FrmCadastroSubGrupo},
  UntCaixaDiario in 'Forms\UntCaixaDiario.pas' {FrmCaixaDiario},
  UntConsultaCliente in 'Forms\UntConsultaCliente.pas' {FrmConsultaCliente},
  UntConsultaContaReceber in 'Forms\UntConsultaContaReceber.pas' {FrmConsultaContaReceber},
  UntConsultaContaRecebida in 'Forms\UntConsultaContaRecebida.pas' {FrmConsultaContaRecebida},
  UntConsultaEntradaEstoque in 'Forms\UntConsultaEntradaEstoque.pas' {FrmConsultaEntradaEstoque},
  UntConsultaGrupo in 'Forms\UntConsultaGrupo.pas' {FrmConsultaGrupo},
  UntConsultaProduto in 'Forms\UntConsultaProduto.pas' {FrmConsultaProduto},
  UntConsultaServico in 'Forms\UntConsultaServico.pas' {FrmConsultaServico},
  UntConsultaSubGrupo in 'Forms\UntConsultaSubGrupo.pas' {FrmConsultaSubGrupo},
  UntConsultaVenda in 'Forms\UntConsultaVenda.pas' {FrmConsultaVenda},
  UntParcelamento in 'Forms\UntParcelamento.pas' {FrmParcelamento},
  UntEntradaEstoque in 'Forms\UntEntradaEstoque.pas' {FrmEntradaEstoque},
  UntEstornaRecebimento in 'Forms\UntEstornaRecebimento.pas' {FrmEstornaRecebimento},
  UntLancamentoCaixa in 'Forms\UntLancamentoCaixa.pas' {FrmLancamentoCaixa},
  UntLancamentoContaReceber in 'Forms\UntLancamentoContaReceber.pas' {FrmLancamentoContaReceber},
  UntLancamentoContaRecebida in 'Forms\UntLancamentoContaRecebida.pas' {FrmLancamentoContaRecebida},
  UntRecebimentoConta in 'Forms\UntRecebimentoConta.pas' {FrmRecebimentoConta},
  UntServicos in 'Forms\UntServicos.pas' {FrmServicos},
  UntVenda in 'Forms\UntVenda.pas' {FrmVenda},
  UntRelatorioCadastroCliente in 'Reports\UntRelatorioCadastroCliente.pas' {FrmRelatorioCadastroCliente},
  UntRelatorioCadastroProduto in 'Reports\UntRelatorioCadastroProduto.pas' {FrmRelatorioCadastroProduto},
  UntRelatorioCaixaDiario in 'Reports\UntRelatorioCaixaDiario.pas' {FrmRelatorioCaixaDiario},
  UntRelatorioCaixaDiarioEntrePeriodo in 'Reports\UntRelatorioCaixaDiarioEntrePeriodo.pas' {FrmRelatorioCaixaDiarioEntrePeriodo},
  UntRelatorioContasAReceberEntrePeriodo in 'Reports\UntRelatorioContasAReceberEntrePeriodo.pas' {FrmRelatorioContasAReceberEntrePeriodo},
  UntRelatorioContasRecebidasEntrePeriodo in 'Reports\UntRelatorioContasRecebidasEntrePeriodo.pas' {FrmRelatorioContasRecebidasEntrePeriodo},
  UntRelatorioContasReceberVencidas in 'Reports\UntRelatorioContasReceberVencidas.pas' {FrmRelatorioContasAReceberVencidas},
  UntRelatorioEntradaEstoque in 'Reports\UntRelatorioEntradaEstoque.pas' {FrmRelatorioEntradaEstoque},
  UntRelatorioServicos in 'Reports\UntRelatorioServicos.pas' {FrmRelatorioServicos},
  UntRelatorioVendas in 'Reports\UntRelatorioVendas.pas' {FrmRelatorioVendas},
  UntRelatorioSugestaoCompra in 'Reports\UntRelatorioSugestaoCompra.pas' {FrmSugestaoCompra},
  UntAgenda in 'Forms\UntAgenda.pas' {FrmAgenda},
  UntLogin in 'Forms\UntLogin.pas' {FrmLogin},
  UntCadastroUsuario in 'Forms\UntCadastroUsuario.pas' {FrmCadastroUsuario},
  UntCadastroFornecedor in 'Forms\UntCadastroFornecedor.pas' {FrmCadastroFornecedor},
  UntCadastroCidade in 'Forms\UntCadastroCidade.pas' {FrmCadastroCidade},
  UntConsultaFornecedor in 'Forms\UntConsultaFornecedor.pas' {FrmConsultaFornecedor},
  UntCadastroFuncionario in 'Forms\UntCadastroFuncionario.pas' {FrmCadastroFuncionario},
  UntConsultaFuncionario in 'Forms\UntConsultaFuncionario.pas' {FrmConsultaFuncionario},
  UntLancamentoContaPagar in 'Forms\UntLancamentoContaPagar.pas' {FrmLancamentoContaPagar},
  UntInformacoes in 'Utils\UntInformacoes.pas',
  UntConsultaContaPagar in 'Forms\UntConsultaContaPagar.pas' {FrmConsultaContaPagar},
  UntPagamentoConta in 'Forms\UntPagamentoConta.pas' {FrmPagamentoContas},
  UntRelatorioServicosRealizados in 'Reports\UntRelatorioServicosRealizados.pas' {FrmRelatorioServicosRealizados},
  UntLancamentoContaPaga in 'Forms\UntLancamentoContaPaga.pas' {FrmLancamentoContaPaga},
  UntEstornaPagamento in 'Forms\UntEstornaPagamento.pas' {FrmEstornaPagamento},
  UntConsultaContaPaga in 'Forms\UntConsultaContaPaga.pas' {FrmConsultaContaPaga},
  UntConsultaFuncionarioServico in 'Forms\UntConsultaFuncionarioServico.pas' {FrmConsultaFuncionarioServico},
  UntRelatorioServicosResumidos in 'Reports\UntRelatorioServicosResumidos.pas' {FrmRelatorioServicoResumido},
  UntReportModule in 'DataModules\UntReportModule.pas' {DMRelatorios: TDataModule},
  UntPrintModule in 'DataModules\UntPrintModule.pas' {DMImpressos: TDataModule},
  UntRelatorioContasPagarEntrePeriodo in 'Reports\UntRelatorioContasPagarEntrePeriodo.pas' {FrmRelatorioContasPagarEntrePeriodo},
  UntRelatorioContasPagarVencidas in 'Reports\UntRelatorioContasPagarVencidas.pas' {FrmContasPagarVencidas},
  UntRelatorioContasPagasEntrePeriodo in 'Reports\UntRelatorioContasPagasEntrePeriodo.pas' {FrmContasPagasEntrePeriodo},
  UntRelatorioContasExcluidas in 'Reports\UntRelatorioContasExcluidas.pas' {FrmContasExcluidas},
  UntFichaCliente in 'Reports\UntFichaCliente.pas' {FrmFichaCliente},
  Model.Behaviors in '..\Bibliotecas\Behaviors\Model.Behaviors.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Silver');
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TFrmBase, FrmBase);
  Application.CreateForm(TFrmComponentes, FrmComponentes);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.Run;
end.
