unit UntServicos;

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
  Vcl.ComCtrls,
  Vcl.Bind.Editors,
  Vcl.Bind.DBEngExt,

  FireDAC.Stan.Param,

  UntBase,
  UntBibliotecaFuncoes,
  UntComponentesGerais,
  UntConsultaCliente,
  UntConsultaProduto,
  UntDataModule,
  UntConsultaServico,
  UntParcelamento,

  Data.DB,
  Data.Bind.EngExt,
  Data.Bind.Components,
  Data.Bind.DBScope, UntConsultaFuncionarioServico;

type
  TFrmServicos = class(TFrmBase)
    GroupBoxCabeServico: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    EditCodigo: TEdit;
    EditCodigoCliente: TEdit;
    ButtonConsultaCliente: TButton;
    DateTimePickerDataAtual: TDateTimePicker;
    GroupBoxServicos: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    LabelTotalItens: TLabel;
    LabelCodigoProduto: TLabel;
    DBGridServicos: TDBGrid;
    EditNomeItem: TEdit;
    ButtonConsultaProduto: TButton;
    EditQuantidadeItem: TEdit;
    EditValorItem: TEdit;
    EditTotal: TEdit;
    ButtonIncluirProduto: TButton;
    ButtonExcluirProduto: TButton;
    GroupBoxButtons: TGroupBox;
    Label17: TLabel;
    LabelValorTotal: TLabel;
    Label1: TLabel;
    Label19: TLabel;
    ButtonGravar: TButton;
    ButtonFinalizar: TButton;
    ButtonConsultarServico: TButton;
    ButtonAdicionar: TButton;
    ComboBoxFormaPagamento: TComboBox;
    EditObservacao: TEdit;
    EditObservacao1: TEdit;
    LabelNomeCliente: TLabel;
    Label2: TLabel;
    LabelAcao: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    Label3: TLabel;
    EditCodigoFuncionario: TEdit;
    ButtonConsultaFuncionario: TButton;
    LabelNomeFuncionario: TLabel;
    LinkControlToField6: TLinkControlToField;
    procedure ButtonExcluirProdutoClick(Sender: TObject);
    procedure ButtonConsultaClienteClick(Sender: TObject);
    procedure ButtonConsultaProdutoClick(Sender: TObject);
    procedure ButtonIncluirProdutoClick(Sender: TObject);
    procedure ButtonAdicionarClick(Sender: TObject);
    procedure ButtonGravarClick(Sender: TObject);
    procedure ButtonFinalizarClick(Sender: TObject);
    procedure ButtonConsultarServicoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure EditCodigoClienteExit(Sender: TObject);
    procedure EditQuantidadeItemExit(Sender: TObject);
    procedure EditValorItemExit(Sender: TObject);
    procedure DBGridServicosCellClick(Column: TColumn);
    procedure EditCodigoFuncionarioExit(Sender: TObject);
    procedure ButtonConsultaFuncionarioClick(Sender: TObject);
  private
    procedure LimparCampos;
    procedure LimparServico;
    procedure FecharQuerys;
    procedure PassaInfoParaQuery;
    procedure PassaInfoParaMemoryTable;
    procedure PassaInfoParaQueryCabeServico;
    procedure PassaInfoParaMemoryTableCabeServico;
    procedure CalcularValorTotalItem;
    procedure CalcularValorTotalServico;
    procedure IncluirItem;
    procedure AtualizarItem;
    procedure CalcularNumeroItem;
    procedure CarregaFormasPagamento;
    procedure GravarServico;
    procedure AtualizarServico;
    procedure BaixaEstoque;
    procedure LancaCaixa;
    procedure LancaFinanceiro;
    procedure LancaParcelado;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmServicos: TFrmServicos;

implementation

{$R *.dfm}

procedure TFrmServicos.AtualizarItem;
begin
  try
    try
      DM.FDMTServico.Edit;

      DM.FDMTServico.FieldByName('PRODUTO').AsString := LabelCodigoProduto.Caption;
      DM.FDMTServico.FieldByName('NOMEPRODUTO').AsString := EditNomeItem.Text;
      DM.FDMTServico.FieldByName('VALOR').AsString := EditValorItem.Text;

      // Se a acao for para alterar ele vai alterar tudo, se for para somar ele vai adicionar junto ao que ja existe
      if LabelAcao.Caption = 'ALTERAR' then
      begin
        DM.FDMTServico.FieldByName('QUANTIDADE').AsFloat :=  StrToFloat(EditQuantidadeItem.Text);
      end
      else
      begin
        DM.FDMTServico.FieldByName('QUANTIDADE').AsFloat :=  StrToFloat(EditQuantidadeItem.Text) + DM.FDMTServico.FieldByName('QUANTIDADE').AsFloat;

        // Joga o valor atualizado da quantidade no edit
        EditQuantidadeItem.Text := DM.FDMTServico.FieldByName('QUANTIDADE').AsString;
      end;

      CalcularValorTotalItem;
      DM.FDMTServico.FieldByName('VALORTOTALPRODUTO').AsString := EditTotal.Text;

      DM.FDMTServico.Post;

      LabelAcao.Caption := 'SOMAR';
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.AtualizarServico;
var
  ContadorServico : Integer;
begin
  try
    try
      { *** Atualiza o CabeServico *** }

      // Abre a query do CabeServico
      DM.FDQCabeServico.Close;
      DM.FDQCabeServico.SQL.Text := 'SELECT * FROM CABESERVICO WHERE CODIGO = :CODIGO';
      DM.FDQCabeServico.Params.ParamByName('CODIGO').AsString := EditCodigo.Text;
      DM.FDQCabeServico.Open;

      DM.FDQCabeServico.Edit;

      DM.FDMTCabeServico.FieldByName('VALORTOTAL').AsFloat := StrToFloat(LabelValorTotal.Caption);

      // Pega a forma de pagamento
      DM.FDQFormaPagto.Close;
      DM.FDQFormaPagto.SQL.Text := 'SELECT * FROM FORMAPAGTO WHERE DESCRICAO = :DESCRICAO';
      DM.FDQFormaPagto.Params.ParamByName('DESCRICAO').AsString := ComboBoxFormaPagamento.Text;
      DM.FDQFormaPagto.Open;

      if DM.FDQFormaPagto.Eof then
      begin
        Mensagem(2,'Forma de pagamento não encontrada');
        Exit;
      end
      else
        DM.FDMTCabeServico.FieldByName('FORMAPAGTO').AsInteger := DM.FDQFormaPagto.FieldByName('CODIGO').AsInteger;

      PassaInfoParaQueryCabeServico;

      DM.FDQCabeServico.Post;

      { *** Atualiza os Servicos *** }

      // Abre a query do Servico
      DM.FDQServico.Close;
      DM.FDQServico.SQL.Text := 'SELECT * FROM SERVICO WHERE CABESERVICO = :CABESERVICO';
      DM.FDQServico.Params.ParamByName('CABESERVICO').AsString := EditCodigo.Text;
      DM.FDQServico.Open;

      // Abre a query dos contadores
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;
      DM.FDQContadores.Locate('TABELA','SERVICO',[]);
      ContadorServico := DM.FDQContadores.FieldByName('VALOR').AsInteger;

      // Arruma o numero do CabeServico e o codigo dos produtos
      DM.FDMTServico.First;
      while not DM.FDMTServico.Eof do
      begin
        DM.FDMTServico.Edit;
        DM.FDMTServico.FieldByName('CABESERVICO').AsString := EditCodigo.Text;
        DM.FDMTServico.Post;

        DM.FDMTServico.Next;
      end;

      // Salva no banco os produtos
      DM.FDMTServico.First;
      while not DM.FDMTServico.Eof do
      begin
        // Procura se ja tem no banco o registro do produto, se tiver ele atualiza senao ele inclui
        if DM.FDQServico.Locate('PRODUTO', DM.FDMTServico.FieldByName('PRODUTO').AsString,[]) then
        begin
          DM.FDQServico.Edit;
        end
        else
        begin
          ContadorServico := ContadorServico + 1;
          DM.FDMTServico.Edit;
          DM.FDMTServico.FieldByName('CODIGO').AsInteger := ContadorServico;
          DM.FDMTServico.Post;

          DM.FDQServico.Insert;
        end;

        PassaInfoParaQuery;
        DM.FDQServico.Post;

        DM.FDMTServico.Next;
      end;

       // Atualiza os contadores
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorServico;
      DM.FDQContadores.Post;

      Mensagem(1,'Serviço atualizado com sucesso')
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.ButtonAdicionarClick(Sender: TObject);
begin
  inherited;
  try
    try
      FecharQuerys;
      LimparCampos;

      DM.FDMTCabeServico.Open;
      DM.FDMTCabeServico.Insert;
      DM.FDMTServico.Open;
      DM.FDMTServico.Insert;

      DM.FDMTCabeServico.FieldByName('DATA').AsDateTime := Date;

      EditCodigoCliente.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.ButtonConsultaClienteClick(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeCliente.Caption := '';
      FrmConsultaCliente.ShowModal;
    finally
      if not DM.FDQCliente.Eof then
      begin
        LabelNomeCliente.Caption := DM.FDQCliente.FieldByName('NOME').AsString;
        EditCodigoCliente.Text := DM.FDQCliente.FieldByName('CODIGO').AsString;
      end;

      EditCodigoCliente.SetFocus;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.ButtonConsultaFuncionarioClick(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeFuncionario.Caption := '';
      FrmConsultaFuncionarioServico.ShowModal;
    finally
      if not DM.FDQFuncionario.Eof then
      begin
        LabelNomeFuncionario.Caption := DM.FDQFuncionario.FieldByName('NOME').AsString;
        EditCodigoFuncionario.Text := DM.FDQFuncionario.FieldByName('CODIGO').AsString;
      end;

      EditCodigoFuncionario.SetFocus;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.ButtonConsultaProdutoClick(Sender: TObject);
begin
  inherited;
  try
    try
      LabelAcao.Caption := 'SOMAR';
      FrmConsultaProduto.ShowModal;
    finally
      if not (DM.FDQProduto.Eof) then
      begin
        // Pega as informações do produto
        LabelCodigoProduto.Caption := DM.FDQProduto.FieldByName('CODIGO').AsString;
        EditNomeItem.Text := DM.FDQProduto.FieldByName('DESCRICAO').AsString;
        EditQuantidadeItem.Text := '1';
        EditValorItem.Text := DM.FDQProduto.FieldByName('VALORVENDA').AsString;

        if EditValorItem.Text = EmptyStr then
            EditValorItem.Text := '0';

        // Calcula o valor total do produto
        CalcularValorTotalItem;

        EditNomeItem.SetFocus;
      end;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.ButtonConsultarServicoClick(Sender: TObject);
begin
  inherited;
  try
    try
      FecharQuerys;
      LimparCampos;
      FrmConsultaServico.ShowModal;
    finally
      if not (DM.FDQCabeServico.Eof) then
      begin
        if DM.FDQCabeServico.FieldByName('STATUS').AsString = 'F' then
        begin
          Mensagem(1,'Serviço finalizado não pode ser alterado');
          ButtonGravar.Enabled := False;
          ButtonFinalizar.Enabled := False;
        end;

        // Arruma as informaçoes do CabeServico
        DM.FDMTCabeServico.Close;
        DM.FDMTCabeServico.Open;
        DM.FDMTCabeServico.Insert;

        PassaInfoParaMemoryTableCabeServico;

        DM.FDMTCabeServico.Post;
        DM.FDMTCabeServico.Edit;

        DM.FDQFormaPagto.Close;
        DM.FDQFormaPagto.SQL.Text := 'SELECT * FROM FORMAPAGTO ';
        DM.FDQFormaPagto.Open;
        if DM.FDQFormaPagto.Locate('CODIGO',DM.FDQCabeServico.FieldByName('FORMAPAGTO').AsString,[]) then
        begin
          ComboBoxFormaPagamento.Text := DM.FDQFormaPagto.FieldByName('DESCRICAO').AsString;
        end;

        // Arruma as informaçoes do Servico
        DM.FDMTServico.Close;
        DM.FDMTServico.Open;

        DM.FDQServico.First;
        while not (DM.FDQServico.Eof) do
        begin
          DM.FDMTServico.Insert;
          PassaInfoParaMemoryTable;
          DM.FDMTServico.Post;

          DM.FDQServico.Next;
        end;

        CalcularValorTotalServico;

        EditCodigoClienteExit(Sender);
        EditCodigoFuncionarioExit(Sender);

        DM.FDMTServico.ApplyUpdates;
        DM.FDMTServico.Refresh;
        DBGridServicos.Refresh;

        // Coloca no label o total de itens que tem
        LabelTotalItens.Caption := IntToStr(DM.FDMTServico.RecordCount);
      end;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.ButtonExcluirProdutoClick(Sender: TObject);
begin
  inherited;
  try
    try
      // Se tiver selecionado algum item
      if not (DM.FDMTServico.Eof) then
      begin
        // Deleta do banco se for um item que ja estava lá
        if not (EditCodigo.Text = EmptyStr) then
        begin
          DM.FDQAuxiliar.Close;
          DM.FDQAuxiliar.SQL.Text := 'SELECT * FROM SERVICO WHERE CABESERVICO = :CABESERVICO AND PRODUTO = :PRODUTO';
          DM.FDQAuxiliar.Params.ParamByName('CABESERVICO').AsString := EditCodigo.Text;
          DM.FDQAuxiliar.Params.ParamByName('PRODUTO').AsInteger := DM.FDMTServico.FieldByName('PRODUTO').AsInteger;
          DM.FDQAuxiliar.Open;

          if not (DM.FDQAuxiliar.Eof) then
            DM.FDQAuxiliar.Delete;

          DM.FDQAuxiliar.Close;
        end;

        DM.FDMTServico.Delete;

        LabelTotalItens.Caption := IntToStr(DM.FDMTServico.RecordCount);

        // Arrumar a numeração dos itens novamente
        CalcularNumeroItem;

        CalcularValorTotalServico;

        LimparServico;
        ButtonConsultaProduto.SetFocus;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.ButtonFinalizarClick(Sender: TObject);
begin
  inherited;
  try
    try
      ButtonGravar.Enabled := False;
      ButtonFinalizar.Enabled := False;

      // Garante que esta salvo
      ButtonGravarClick(Sender);

      if DM.FDMTServico.FieldByName('CODIGO').AsString = EmptyStr then
      begin
        Exit;
      end;

      DM.FDQCabeServico.Close;
      DM.FDQCabeServico.SQL.Text := 'SELECT * FROM CABESERVICO WHERE CODIGO = :CODIGO';
      DM.FDQCabeServico.Params.ParamByName('CODIGO').AsString := EditCodigo.Text;
      DM.FDQCabeServico.Open;

      // Verifica para movimentar o financeiro
      DM.FDQFormaPagto.Close;
      DM.FDQFormaPagto.SQL.Text := 'SELECT * FROM FORMAPAGTO';
      DM.FDQFormaPagto.Open;

      // Se achar a forma de pagamento
      if DM.FDQFormaPagto.Locate('CODIGO', DM.FDQCabeServico.FieldByName('FORMAPAGTO').AsString) then
      begin
        if DM.FDQFormaPagto.FieldByName('LANCACAIXA').AsBoolean then
        begin
          LancaCaixa;
        end
        else
        if DM.FDQFormaPagto.FieldByName('LANCAFINANCEIRO').AsBoolean then
        begin
          LancaFinanceiro;
        end
        else if DM.FDQFormaPagto.FieldByName('LANCASEMCONTROLE').AsBoolean then
        begin
          // * NÃO IRA LANÇAR EM LUGAR NENHUM * \\
        end
        else if DM.FDQFormaPagto.FieldByName('LANCAPARCELADO').AsBoolean then
        begin
          LancaParcelado;

          if FrmParcelamento.LabelStatusParcelamento.Caption = 'CANCELADO' then
          begin
            ButtonGravar.Enabled := True;
            ButtonFinalizar.Enabled := True;
            Exit;
          end;
        end
      end;

      // Baixa o estoque nos produtos
      if DM.FDQParametros.FieldByName('BAIXAESTOQUEDOSERVICO').AsBoolean then
        BaixaEstoque;

      // Altera o status para finalizado
      DM.FDQCabeServico.Edit;
      DM.FDQCabeServico.FieldByName('STATUS').AsString := 'F';
      DM.FDQCabeServico.Post;

      Mensagem(1,'Serviço lançado com sucesso');

      ButtonAdicionarClick(Sender);
    finally

    end;
  Except on E:Exception do
    begin
      ButtonGravar.Enabled := True;
      ButtonFinalizar.Enabled := True;
      Mensagem(3,E.ToString);
    end;
  end;
end;

procedure TFrmServicos.ButtonGravarClick(Sender: TObject);
begin
  inherited;
  try
    try
      // Se nao tiver o cliente ele nao grava
      if DM.FDMTCabeServico.FieldByName('CLIENTE').AsString = EmptyStr then
      begin
        Mensagem(2,'Cliente Obrigatorio');
        Exit;
      end;

      // Se nao tiver nenhum item ele nao grava
      if DM.FDMTServico.Eof then
        Exit;

      // Se o codigo estiver vazio ele grava um novo registro senao ele atualiza o registro
      if EditCodigo.Text = EmptyStr then
      begin
        GravarServico;
      end
      else
      begin
        AtualizarServico;
      end;

      if ButtonFinalizar.Enabled then
        ButtonFinalizar.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.ButtonIncluirProdutoClick(Sender: TObject);
begin
  inherited;
  try
    try
      // Se nao tiver produto ele nao tenta incluir nada
      if (DM.FDQProduto.Eof) and (EditNomeItem.Text = EmptyStr) then
        Exit;

      // Se estiver atualizando um item
      if LabelAcao.Caption = 'ALTERAR' then
        AtualizarItem
      else
      begin
        // Se o produto ja estiver no memorytable ele altera o produto senao ele adiciona
        if DM.FDMTServico.Locate('PRODUTO', LabelCodigoProduto.Caption,[]) then
        begin
          // Se o produto for o 'DIVERSOS' ou estiver como lançamento individual
          // entao ele adiciona ao inves de atualizar
          if LabelCodigoProduto.Caption = '1' then
            IncluirItem
          else
            AtualizarItem;
        end
        else
        begin
          IncluirItem;
        end;
      end;

      CalcularValorTotalServico;

      CalcularNumeroItem;

      LimparServico;

      // Coloca no label o total de itens que tem
      LabelTotalItens.Caption := IntToStr(DM.FDMTServico.RecordCount);

      DM.FDMTServico.First;

      ButtonConsultaProduto.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.CalcularNumeroItem;
var
  I : Integer;
begin
  try
    try
      DM.FDMTServico.ApplyUpdates;
      DM.FDMTServico.Refresh;
      DBGridServicos.Refresh;

      I := 1;
      DM.FDMTServico.First;

      while not DM.FDMTServico.Eof do
      begin
        DM.FDMTServico.Edit;
        DM.FDMTServico.FieldByName('NUMEROITEM').AsInteger := I;
        I := I+1;
        DM.FDMTServico.Next;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.CalcularValorTotalItem;
begin
  try
    try
      if EditValorItem.Text = EmptyStr then
            EditValorItem.Text := '0';

      // Se tiver quantidade e valor
      if (not (EditQuantidadeItem.Text = EmptyStr) ) and (not (EditValorItem.Text = EmptyStr)) then
      begin
        // Se tiver quantidade valida
        if StrToFloat(EditQuantidadeItem.Text) <> 0 then
        begin
          EditTotal.Text := FloatToStr(StrToFloat(EditQuantidadeItem.Text) * StrToFloat(EditValorItem.Text))
        end
        else
        begin
          Mensagem(2,'Quantidade invalida');
          EditQuantidadeItem.SetFocus;
        end;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.CalcularValorTotalServico;
var
  ValorTotal : Double;
begin
  try
    try
      ValorTotal := 0;

      DM.FDMTServico.First;
      while not (DM.FDMTServico.Eof) do
      begin
        if DM.FDQParametros.FieldByName('CALCULARVALORPRODUTONOSERVICO').AsBoolean then
        begin
          ValorTotal := ValorTotal + DM.FDMTServico.FieldByName('VALORTOTALPRODUTO').AsFloat;
        end
        else
        begin
          // Soma apenas os valores dos serviços
          if DM.FDMTServico.FieldByName('TIPOITEM').AsString = 'SERVICO' then
            ValorTotal := ValorTotal + DM.FDMTServico.FieldByName('VALORTOTALPRODUTO').AsFloat;
        end;

        DM.FDMTServico.Next;
      end;

      LabelValorTotal.Caption := FloatToStr(ValorTotal);

      DM.FDMTServico.First;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.CarregaFormasPagamento;
begin
  try
    try
      ComboBoxFormaPagamento.Clear;
      DM.FDQFormaPagto.Close;
      DM.FDQFormaPagto.SQL.Text := 'SELECT * FROM FORMAPAGTO WHERE STATUS = :STATUS ';
      DM.FDQFormaPagto.Params.ParamByName('STATUS').AsString := 'ATIVO';
      DM.FDQFormaPagto.Open;

      DM.FDQFormaPagto.First;
      while not DM.FDQFormaPagto.Eof do
      begin
        ComboBoxFormaPagamento.Items.Add(DM.FDQFormaPagto.FieldByName('DESCRICAO').AsString);
        DM.FDQFormaPagto.Next;
      end;

      ComboBoxFormaPagamento.ItemIndex := 0;

    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.DBGridServicosCellClick(Column: TColumn);
begin
  inherited;
  try
    try
      // Se selecionar o item ele vai alterar o item inteiro
      LabelAcao.Caption := 'ALTERAR';

      // Colocar as informaçoes nos edits para alterar
      EditNomeItem.Text := DM.FDMTServico.FieldByName('NOMEPRODUTO').AsString;
      EditQuantidadeItem.Text := DM.FDMTServico.FieldByName('QUANTIDADE').AsString;
      EditValorItem.Text := DM.FDMTServico.FieldByName('VALOR').AsString;
      EditTotal.Text := DM.FDMTServico.FieldByName('VALORTOTALPRODUTO').AsString;
      LabelCodigoProduto.Caption := DM.FDMTServico.FieldByName('PRODUTO').AsString;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.EditCodigoClienteExit(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeCliente.Caption := '';

      // Se tiver colocado algum codigo ele pesquisa o cliente
      if not (EditCodigoCliente.Text = EmptyStr) then
      begin
        DM.FDQCliente.Close;
        DM.FDQCliente.SQL.Text := 'SELECT * FROM CLIENTE WHERE CODIGO = :CODIGO';
        DM.FDQCliente.Params.ParamByName('CODIGO').AsString := EditCodigoCliente.Text;
        DM.FDQCliente.Open;

        if DM.FDQCliente.Eof then
        begin
          Mensagem(2,'Cliente Não Encontrado');
          EditCodigoCliente.Clear;
          ButtonConsultaCliente.SetFocus;
          DM.FDMTCabeServico.FieldByName('CLIENTE').AsString := EmptyStr;
          Exit;
        end
        else
        begin
          LabelNomeCliente.Caption := DM.FDQCliente.FieldByName('NOME').AsString;
          EditCodigoCliente.Text := DM.FDQCliente.FieldByName('CODIGO').AsString;
          DM.FDMTCabeServico.FieldByName('CLIENTE').AsInteger := DM.FDQCliente.FieldByName('CODIGO').AsInteger;
          EditCodigoFuncionario.SetFocus;
        end;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.EditCodigoFuncionarioExit(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeFuncionario.Caption := '';

      // Se tiver colocado algum codigo ele pesquisa o cliente
      if not (EditCodigoFuncionario.Text = EmptyStr) then
      begin
        DM.FDQFuncionario.Close;
        DM.FDQFuncionario.SQL.Text := 'SELECT * FROM FUNCIONARIO WHERE CODIGO = :CODIGO';
        DM.FDQFuncionario.Params.ParamByName('CODIGO').AsString := EditCodigoFuncionario.Text;
        DM.FDQFuncionario.Open;

        if DM.FDQFuncionario.Eof then
        begin
          Mensagem(2,'Funcionario Não Encontrado');
          EditCodigoFuncionario.Clear;
          ButtonConsultaFuncionario.SetFocus;
          DM.FDMTCabeServico.FieldByName('FUNCIONARIO').AsString := EmptyStr;
          Exit;
        end
        else if not ((DM.FDQFuncionario.FieldByName('TIPO').AsInteger = 2) or (DM.FDQFuncionario.FieldByName('TIPO').AsInteger = 3)) then
        begin
          Mensagem(2,'Funcionario Não Permitido');
          EditCodigoFuncionario.Clear;
          ButtonConsultaFuncionario.SetFocus;
          DM.FDMTCabeServico.FieldByName('FUNCIONARIO').AsString := EmptyStr;
          Exit;
        end
        else
        begin
          LabelNomeFuncionario.Caption := DM.FDQFuncionario.FieldByName('NOME').AsString;
          EditCodigoFuncionario.Text := DM.FDQFuncionario.FieldByName('CODIGO').AsString;
          DM.FDMTCabeServico.FieldByName('FUNCIONARIO').AsInteger := DM.FDQFuncionario.FieldByName('CODIGO').AsInteger;
          ButtonConsultaProduto.SetFocus;
        end;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.EditQuantidadeItemExit(Sender: TObject);
begin
  inherited;
  try
    try
      CalcularValorTotalItem;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.EditValorItemExit(Sender: TObject);
begin
  inherited;
  try
    try
      CalcularValorTotalItem;
      ButtonIncluirProduto.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.FecharQuerys;
begin
  try
    try
      DM.FDMTServico.Close;
      DM.FDMTCabeServico.Close;
      DM.FDQServico.Close;
      DM.FDQCabeServico.Close;
      DM.FDQConsulta.Close;
      DM.FDQCliente.Close;
      DM.FDQContadores.Close;
      DM.FDQFormaPagto.Close;
      DM.FDQAuxiliar.Close;
      DM.FDQProduto.Close;
      DM.FDQCaixa.Close;
      DM.FDQContaReceber.Close;
      DM.FDQFuncionario.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFrmServicos.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      // Carrega o combobox das formas de pagamento
      CarregaFormasPagamento;

      ButtonAdicionarClick(Sender);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.GravarServico;
var
  ContadorCabeServico, ContadorServico : Integer;
begin
  try
    try
      { ***  Salva o CabeServico *** }

      // Abre a query do CabeServico
      DM.FDQCabeServico.Close;
      DM.FDQCabeServico.SQL.Text := 'SELECT * FROM CABESERVICO ';
      DM.FDQCabeServico.Open;

      // Abre a query dos contadores
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;
      DM.FDQContadores.Locate('TABELA','CABESERVICO',[]);
      ContadorCabeServico := DM.FDQContadores.FieldByName('VALOR').AsInteger + 1;

      // Coloca os campos faltando no memoryTable
      DM.FDMTCabeServico.FieldByName('CODIGO').AsInteger := ContadorCabeServico;
      DM.FDMTCabeServico.FieldByName('STATUS').AsString := 'G';
      DM.FDMTCabeServico.FieldByName('VALORTOTAL').AsFloat := StrToFloat(LabelValorTotal.Caption);

      // Pega a forma de pagamento
      DM.FDQFormaPagto.Close;
      DM.FDQFormaPagto.SQL.Text := 'SELECT * FROM FORMAPAGTO WHERE DESCRICAO = :DESCRICAO';
      DM.FDQFormaPagto.Params.ParamByName('DESCRICAO').AsString := ComboBoxFormaPagamento.Text;
      DM.FDQFormaPagto.Open;

      if DM.FDQFormaPagto.Eof then
      begin
        Mensagem(2,'Forma de pagamento não encontrada');
        Exit;
      end
      else
        DM.FDMTCabeServico.FieldByName('FORMAPAGTO').AsInteger := DM.FDQFormaPagto.FieldByName('CODIGO').AsInteger;

      DM.FDQCabeServico.Insert;

      PassaInfoParaQueryCabeServico;

      DM.FDQCabeServico.Post;

      // Atualiza os contadores
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorCabeServico;
      DM.FDQContadores.Post;

      { ***  Salva o Servico *** }

      // Abre a query do Servico
      DM.FDQServico.Close;
      DM.FDQServico.SQL.Text := 'SELECT * FROM SERVICO';
      DM.FDQServico.Open;

      // Abre a query dos contadores
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;
      DM.FDQContadores.Locate('TABELA','SERVICO',[]);
      ContadorServico := DM.FDQContadores.FieldByName('VALOR').AsInteger;

      // Arruma o numero do cabeservico e o codigo dos produtos
      DM.FDMTServico.First;
      while not DM.FDMTServico.Eof do
      begin
        ContadorServico := ContadorServico + 1;

        DM.FDMTServico.Edit;
        DM.FDMTServico.FieldByName('CABESERVICO').AsString := EditCodigo.Text;
        DM.FDMTServico.FieldByName('CODIGO').AsInteger := ContadorServico;
        DM.FDMTServico.Post;

        DM.FDMTServico.Next;
      end;

      // Salva no banco os produtos
      DM.FDMTServico.First;
      while not DM.FDMTServico.Eof do
      begin
        DM.FDQServico.Insert;
        PassaInfoParaQuery;
        DM.FDQServico.Post;

        DM.FDMTServico.Next;
      end;

       // Atualiza os contadores
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorServico;
      DM.FDQContadores.Post;

      Mensagem(1,'Serviço gravado com sucesso');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.IncluirItem;
begin
  try
    try
      DM.FDMTServico.Insert;

      DM.FDMTServico.FieldByName('PRODUTO').AsString := LabelCodigoProduto.Caption;
      DM.FDMTServico.FieldByName('NOMEPRODUTO').AsString := EditNomeItem.Text;
      DM.FDMTServico.FieldByName('QUANTIDADE').AsString :=  EditQuantidadeItem.Text;
      DM.FDMTServico.FieldByName('VALOR').AsString := EditValorItem.Text;
      DM.FDMTServico.FieldByName('VALORTOTALPRODUTO').AsString := EditTotal.Text;
      DM.FDMTServico.FieldByName('TIPOITEM').AsString := DM.FDQProduto.FieldByName('TIPO').AsString;

      DM.FDMTServico.Post;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.LancaCaixa;
var
  ContadorCaixa : Integer;
begin
  try
    try
      // Irá lancar o valor no caixa

      // Abre a query dos contadores
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;
      DM.FDQContadores.Locate('TABELA','CAIXA',[]);
      ContadorCaixa := DM.FDQContadores.FieldByName('VALOR').AsInteger + 1;


      DM.FDQCaixa.Close;
      DM.FDQCaixa.SQL.Text := 'SELECT * FROM CAIXA';
      DM.FDQCaixa.Open;
      DM.FDQCaixa.Insert;
      DM.FDQCaixa.FieldByName('CODIGO').AsInteger := ContadorCaixa;
      DM.FDQCaixa.FieldByName('DATA').AsDateTime := DM.FDQCabeServico.FieldByName('DATA').AsDateTime;
      DM.FDQCaixa.FieldByName('HORA').AsDateTime := Time;
      DM.FDQCaixa.FieldByName('CLIENTE').AsInteger := DM.FDMTCabeServico.FieldByName('CLIENTE').AsInteger;
      DM.FDQCaixa.FieldByName('HISTORICO').AsString := 'LANÇAMENTO DE SERVICO 1000' + EditCodigo.Text + '/1';
      DM.FDQCaixa.FieldByName('DOCUMENTO').AsString := '1000'+ EditCodigo.Text;
      DM.FDQCaixa.FieldByName('CREDITO').AsFloat := DM.FDQCabeServico.FieldByName('VALORTOTAL').AsFloat;
      DM.FDQCaixa.FieldByName('OBSERVACAO').AsString := DM.FDQCabeServico.FieldByName('OBSERVACAO').AsString;
      DM.FDQCaixa.FieldByName('OBSERVACAO1').AsString := DM.FDQCabeServico.FieldByName('OBSERVACAO1').AsString;
      DM.FDQCaixa.FieldByName('FORMAPAGTO').AsInteger := DM.FDQCabeServico.FieldByName('FORMAPAGTO').AsInteger;;
      DM.FDQCaixa.FieldByName('DATALANCAMENTO').AsDateTime := Now;
      DM.FDQCaixa.Post;

      // Atualiza os contadores
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorCaixa;
      DM.FDQContadores.Post;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.LancaFinanceiro;
var
  ContadorContaReceber : Integer;
begin
  try
    try
      // Irá lancar o valor no ContaReceber

      // Abre a query dos contadores
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;
      DM.FDQContadores.Locate('TABELA','CONTARECEBER',[]);
      ContadorContaReceber := DM.FDQContadores.FieldByName('VALOR').AsInteger + 1;


      DM.FDQContaReceber.Close;
      DM.FDQContaReceber.SQL.Text := 'SELECT * FROM CONTARECEBER';
      DM.FDQContaReceber.Open;
      DM.FDQContaReceber.Insert;

      DM.FDQContaReceber.FieldByName('CODIGO').AsInteger := ContadorContaReceber;
      DM.FDQContaReceber.FieldByName('CLIENTE').AsInteger := DM.FDQCabeServico.FieldByName('CLIENTE').AsInteger;
      DM.FDQContaReceber.FieldByName('PARCELA').AsInteger := 1;
      DM.FDQContaReceber.FieldByName('DOCUMENTO').AsString := '1000' + DM.FDQCabeServico.FieldByName('CODIGO').AsString;
      DM.FDQContaReceber.FieldByName('EMISSAO').AsDateTime := DateTimePickerDataAtual.Date;
      DM.FDQContaReceber.FieldByName('VENCIMENTO').AsDateTime := IncMonth(DateTimePickerDataAtual.Date,1);
      DM.FDQContaReceber.FieldByName('VALOR').AsFloat := DM.FDQCabeServico.FieldByName('VALORTOTAL').AsFloat;
      DM.FDQContaReceber.FieldByName('FORMAPAGTO').AsInteger := DM.FDQCabeServico.FieldByName('FORMAPAGTO').AsInteger;
      DM.FDQContaReceber.FieldByName('OBSERVACAO').AsString := DM.FDQCabeServico.FieldByName('OBSERVACAO').AsString;
      DM.FDQContaReceber.FieldByName('OBSERVACAO1').AsString := DM.FDQCabeServico.FieldByName('OBSERVACAO1').AsString;

      DM.FDQContaReceber.Post;

      // Atualiza os contadores
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorContaReceber;
      DM.FDQContadores.Post;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.LancaParcelado;
begin
  try
    try
      FrmParcelamento.LabelCodigoCliente.Caption := DM.FDQCabeServico.FieldByName('CLIENTE').AsString;
      FrmParcelamento.LabelNomeCliente.Caption := LabelNomeCliente.Caption;
      FrmParcelamento.LabelValorTotal.Caption := DM.FDQCabeServico.FieldByName('VALORTOTAL').AsString;
      FrmParcelamento.LabelStatusParcelamento.Caption := 'ABERTO';
      FrmParcelamento.LabelNumeroDocumento.Caption := '1000' + DM.FDQCabeServico.FieldByName('CODIGO').AsString;
      FrmParcelamento.LabelObservacao.Caption := DM.FDQCabeServico.FieldByName('OBSERVACAO').AsString;
      FrmParcelamento.LabelObservacao1.Caption := DM.FDQCabeServico.FieldByName('OBSERVACAO1').AsString;

      FrmParcelamento.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.BaixaEstoque;
begin
  try
    try
      // Pega os produtos do servico
      DM.FDQServico.Close;
      DM.FDQServico.SQL.Text := 'SELECT * FROM SERVICO WHERE CABESERVICO = :CABESERVICO';
      DM.FDQServico.Params.ParamByName('CABESERVICO').AsString := EditCodigo.Text;
      DM.FDQServico.Open;

      // Percorre todos os produtos
      DM.FDQServico.First;
      while not DM.FDQServico.Eof do
      begin
        // Pesquisa o produto correspondente
        DM.FDQProduto.Close;
        DM.FDQProduto.SQL.Text := 'SELECT * FROM PRODUTO WHERE CODIGO = :CODIGO';
        DM.FDQProduto.Params.ParamByName('CODIGO').AsInteger := DM.FDQServico.FieldByName('PRODUTO').AsInteger;
        DM.FDQProduto.Open;

        // Retira do estoque
        if not DM.FDQProduto.Eof then
        begin
          DM.FDQProduto.Edit;
          DM.FDQProduto.FieldByName('ESTOQUE').AsFloat := DM.FDQProduto.FieldByName('ESTOQUE').AsFloat - DM.FDQServico.FieldByName('QUANTIDADE').AsFloat;
          DM.FDQProduto.Post;
        end;

        DM.FDQServico.Next;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.LimparCampos;
var
  I : Integer;
begin
  try
    try
      for I := 0 to FrmServicos.ComponentCount - 1 do
      begin
        if Components[i] is TEdit then
          TEdit(FrmServicos.Components[i]).Clear;
        if Components[i] is TCheckBox then
          TCheckBox(FrmServicos.Components[i]).Checked := False;
        if Components[i] is TDateTimePicker then
          TDateTimePicker(FrmServicos.Components[i]).Date := Date;
        if Components[i] is TComboBox then
          TComboBox(FrmServicos.Components[i]).ItemIndex := 0;
        if Components[i] is TButton then
          TButton(FrmServicos.Components[i]).Enabled := True;
      end;

      LabelNomeCliente.Caption := '';
      LabelNomeFuncionario.Caption := '';
      LabelTotalItens.Caption := '0';
      LabelValorTotal.Caption := '0,00';
      LabelAcao.Caption := 'SOMAR';
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.LimparServico;
begin
  try
    try
      EditNomeItem.Clear;
      EditQuantidadeItem.Clear;
      EditValorItem.Clear;
      EditTotal.Clear;

      ButtonConsultaProduto.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmServicos.PassaInfoParaMemoryTable;
var
  I: Integer;
  NomeCampo: string;
begin
  // Se tiver informação ele passa para o memorytable Servico
  for I := 0 to (DM.FDQServico.FieldCount - 1) do
  begin
    NomeCampo := DM.FDQServico.Fields[I].FieldName;
    if (DM.FDMTServico.FindField(NomeCampo) <> nil) then
      DM.FDMTServico.FieldByName(NomeCampo).Value := DM.FDQServico.FieldByName(NomeCampo).Value;
  end;
end;

procedure TFrmServicos.PassaInfoParaMemoryTableCabeServico;
var
  I: Integer;
  NomeCampo: string;
begin
  // Se tiver informação ele passa para o memorytable CabeServico
  for I := 0 to (DM.FDQCabeServico.FieldCount - 1) do
  begin
    NomeCampo := DM.FDQCabeServico.Fields[I].FieldName;
    if (DM.FDMTCabeServico.FindField(NomeCampo) <> nil) then
      DM.FDMTCabeServico.FieldByName(NomeCampo).Value := DM.FDQCabeServico.FieldByName(NomeCampo).Value;
  end;
end;

procedure TFrmServicos.PassaInfoParaQuery;
var
  I: Integer;
  NomeCampo: string;
begin
  // Passa todos os campos para a query Servico
  for I := 0 to (DM.FDMTServico.FieldCount - 1) do
  begin
    NomeCampo := DM.FDMTServico.Fields[I].FieldName;
    if (DM.FDQServico.FindField(NomeCampo) <> nil) then
      DM.FDQServico.FieldByName(NomeCampo).Value := DM.FDMTServico.FieldByName(NomeCampo).Value;
  end;
end;

procedure TFrmServicos.PassaInfoParaQueryCabeServico;
var
  I: Integer;
  NomeCampo: string;
begin
  // Passa todos os campos para a query CabeServico
  for I := 0 to (DM.FDMTCabeServico.FieldCount - 1) do
  begin
    NomeCampo := DM.FDMTCabeServico.Fields[I].FieldName;
    if (DM.FDQCabeServico.FindField(NomeCampo) <> nil) then
      DM.FDQCabeServico.FieldByName(NomeCampo).Value := DM.FDMTCabeServico.FieldByName(NomeCampo).Value;
  end;
end;

end.
