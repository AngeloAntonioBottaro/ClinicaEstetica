unit UntVenda;

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
  UntConsultaVenda,
  UntDataModule,
  UntConsultaProduto,
  UntParcelamento,
  UntConsultaFuncionario,

  Data.DB,
  Data.Bind.EngExt,
  Data.Bind.Components,
  Data.Bind.DBScope;

type
  TFrmVenda = class(TFrmBase)
    GroupBoxCabeServico: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EditCodigo: TEdit;
    EditCodigoCliente: TEdit;
    ButtonConsultaCliente: TButton;
    DateTimePickerDataAtual: TDateTimePicker;
    GroupBoxServicos: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    LabelTotalItens: TLabel;
    DBGridVendas: TDBGrid;
    EditNomeItem: TEdit;
    ButtonConsultaProduto: TButton;
    EditQuantidadeItem: TEdit;
    EditValorItem: TEdit;
    EditTotal: TEdit;
    ButtonIncluirProduto: TButton;
    ButtonExcluirProduto: TButton;
    GroupBoxButtons: TGroupBox;
    Label11: TLabel;
    Label1: TLabel;
    Label12: TLabel;
    ButtonGravar: TButton;
    ButtonFinalizar: TButton;
    ButtonConsultarVenda: TButton;
    ButtonAdicionar: TButton;
    ComboBoxFormaPagamento: TComboBox;
    EditObservacao: TEdit;
    EditObservacao1: TEdit;
    Label2: TLabel;
    LabelValorTotal: TLabel;
    LabelCodigoProduto: TLabel;
    LabelNomeCliente: TLabel;
    LabelAcao: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    Label13: TLabel;
    EditCodigoFuncionario: TEdit;
    ButtonConsultaFuncionario: TButton;
    LabelNomeFuncionario: TLabel;
    LinkControlToField6: TLinkControlToField;
    procedure ButtonConsultaClienteClick(Sender: TObject);
    procedure EditCodigoClienteExit(Sender: TObject);
    procedure ButtonConsultaProdutoClick(Sender: TObject);
    procedure ButtonIncluirProdutoClick(Sender: TObject);
    procedure EditQuantidadeItemExit(Sender: TObject);
    procedure EditValorItemExit(Sender: TObject);
    procedure DBGridVendasCellClick(Column: TColumn);
    procedure ButtonAdicionarClick(Sender: TObject);
    procedure ButtonGravarClick(Sender: TObject);
    procedure ButtonFinalizarClick(Sender: TObject);
    procedure ButtonConsultarVendaClick(Sender: TObject);
    procedure ButtonExcluirProdutoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure EditCodigoFuncionarioExit(Sender: TObject);
    procedure ButtonConsultaFuncionarioClick(Sender: TObject);
  private
    procedure LimparCampos;
    procedure LimparVenda;
    procedure FecharQuerys;
    procedure PassaInfoParaQuery;
    procedure PassaInfoParaMemoryTable;
    procedure PassaInfoParaQueryCabeVenda;
    procedure PassaInfoParaMemoryTableCabeVenda;
    procedure CalcularValorTotalItem;
    procedure CalcularValorTotalVenda;
    procedure IncluirItem;
    procedure AtualizarItem;
    procedure CalcularNumeroItem;
    procedure CarregaFormasPagamento;
    procedure GravarVenda;
    procedure AtualizarVenda;
    procedure BaixaEstoque;
    procedure LancaCaixa;
    procedure LancaFinanceiro;
    procedure LancaParcelado;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVenda: TFrmVenda;

implementation

{$R *.dfm}

{ TFrmVenda }

procedure TFrmVenda.AtualizarItem;
begin
  try
    try
      DM.FDMTVenda.Edit;

      DM.FDMTVenda.FieldByName('PRODUTO').AsString := LabelCodigoProduto.Caption;
      DM.FDMTVenda.FieldByName('NOMEPRODUTO').AsString := EditNomeItem.Text;
      DM.FDMTVenda.FieldByName('VALOR').AsString := EditValorItem.Text;

      // Se a acao for para alterar ele vai alterar tudo, se for para somar ele vai adicionar junto ao que ja existe
      if LabelAcao.Caption = 'ALTERAR' then
      begin
        DM.FDMTVenda.FieldByName('QUANTIDADE').AsFloat :=  StrToFloat(EditQuantidadeItem.Text);
      end
      else
      begin
        DM.FDMTVenda.FieldByName('QUANTIDADE').AsFloat :=  StrToFloat(EditQuantidadeItem.Text) + DM.FDMTVenda.FieldByName('QUANTIDADE').AsFloat;

        // Joga o valor atualizado da quantidade no edit
        EditQuantidadeItem.Text := DM.FDMTVenda.FieldByName('QUANTIDADE').AsString;
      end;

      CalcularValorTotalItem;
      DM.FDMTVenda.FieldByName('VALORTOTALPRODUTO').AsString := EditTotal.Text;

      DM.FDMTVenda.Post;

      LabelAcao.Caption := 'SOMAR';
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmVenda.AtualizarVenda;
var
  ContadorServico : Integer;
begin
  try
    try
      { *** Atualiza o CabeVenda *** }

      // Abre a query do CabeVenda
      DM.FDQCabeVenda.Close;
      DM.FDQCabeVenda.SQL.Text := 'SELECT * FROM CABEVENDA WHERE CODIGO = :CODIGO';
      DM.FDQCabeVenda.Params.ParamByName('CODIGO').AsString := EditCodigo.Text;
      DM.FDQCabeVenda.Open;

      DM.FDQCabeVenda.Edit;

      DM.FDMTCabeVenda.FieldByName('VALORTOTAL').AsFloat := StrToFloat(LabelValorTotal.Caption);

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
        DM.FDMTCabeVenda.FieldByName('FORMAPAGTO').AsInteger := DM.FDQFormaPagto.FieldByName('CODIGO').AsInteger;

      PassaInfoParaQueryCabeVenda;

      DM.FDQCabeVenda.Post;

      { *** Atualiza os Servicos *** }

      // Abre a query do Servico
      DM.FDQVenda.Close;
      DM.FDQVenda.SQL.Text := 'SELECT * FROM VENDA WHERE CABEVENDA = :CABEVENDA';
      DM.FDQVenda.Params.ParamByName('CABEVENDA').AsString := EditCodigo.Text;
      DM.FDQVenda.Open;

      // Abre a query dos contadores
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;
      DM.FDQContadores.Locate('TABELA','VENDA',[]);
      ContadorServico := DM.FDQContadores.FieldByName('VALOR').AsInteger;

      // Arruma o numero do CabeVenda e o codigo dos produtos
      DM.FDMTVenda.First;
      while not DM.FDMTVenda.Eof do
      begin
        DM.FDMTVenda.Edit;
        DM.FDMTVenda.FieldByName('CABEVENDA').AsString := EditCodigo.Text;
        DM.FDMTVenda.Post;

        DM.FDMTVenda.Next;
      end;

      // Salva no banco os produtos
      DM.FDMTVenda.First;
      while not DM.FDMTVenda.Eof do
      begin
        // Procura se ja tem no banco o registro do produto, se tiver ele atualiza senao ele inclui
        if DM.FDQVenda.Locate('PRODUTO', DM.FDMTVenda.FieldByName('PRODUTO').AsString,[]) then
        begin
          DM.FDQVenda.Edit;
        end
        else
        begin
          ContadorServico := ContadorServico + 1;
          DM.FDMTVenda.Edit;
          DM.FDMTVenda.FieldByName('CODIGO').AsInteger := ContadorServico;
          DM.FDMTVenda.Post;

          DM.FDQVenda.Insert;
        end;

        PassaInfoParaQuery;
        DM.FDQVenda.Post;

        DM.FDMTVenda.Next;
      end;

       // Atualiza os contadores
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorServico;
      DM.FDQContadores.Post;

      Mensagem(1,'Venda atualizada com sucesso')
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmVenda.BaixaEstoque;
begin
  try
    try
      // Pega os produtos da venda
      DM.FDQVenda.Close;
      DM.FDQVenda.SQL.Text := 'SELECT * FROM VENDA WHERE CABEVENDA = :CABEVENDA';
      DM.FDQVenda.Params.ParamByName('CABEVENDA').AsString := EditCodigo.Text;
      DM.FDQVenda.Open;

      // Percorre todos os produtos
      DM.FDQVenda.First;
      while not DM.FDQVenda.Eof do
      begin
        // Pesquisa o produto correspondente
        DM.FDQProduto.Close;
        DM.FDQProduto.SQL.Text := 'SELECT * FROM PRODUTO WHERE CODIGO = :CODIGO';
        DM.FDQProduto.Params.ParamByName('CODIGO').AsInteger := DM.FDQVenda.FieldByName('PRODUTO').AsInteger;
        DM.FDQProduto.Open;

        // Retira do estoque
        if not DM.FDQProduto.Eof then
        begin
          DM.FDQProduto.Edit;
          DM.FDQProduto.FieldByName('ESTOQUE').AsFloat := DM.FDQProduto.FieldByName('ESTOQUE').AsFloat - DM.FDQVenda.FieldByName('QUANTIDADE').AsFloat;
          DM.FDQProduto.Post;
        end;

        DM.FDQVenda.Next;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmVenda.ButtonAdicionarClick(Sender: TObject);
begin
  inherited;
  try
    try
      FecharQuerys;
      LimparCampos;

      DM.FDMTCabeVenda.Open;
      DM.FDMTCabeVenda.Insert;
      DM.FDMTVenda.Open;
      DM.FDMTVenda.Insert;

      DM.FDMTCabeVenda.FieldByName('DATA').AsDateTime := Date;

      EditCodigoCliente.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmVenda.ButtonConsultaClienteClick(Sender: TObject);
begin
  inherited;
  try
    try
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

procedure TFrmVenda.ButtonConsultaFuncionarioClick(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeFuncionario.Caption := '';
      FrmConsultaFuncionario.ShowModal;
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

procedure TFrmVenda.ButtonConsultaProdutoClick(Sender: TObject);
begin
  inherited;
  try
    try
      LabelAcao.Caption := 'SOMAR';
      FrmConsultaProduto.ShowModal;
    finally
      if not (DM.FDQProduto.Eof) then
      begin
        if not (DM.FDQProduto.FieldByName('TIPO').AsString = 'SERVICO') then
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
        end
        else
          Mensagem(2,'Itens do tipo SERVIÇO não podem ser incluidos na venda' + sLineBreak + 'Para incluir serviços favor utilizar a tela de lançamentos de serviços');
      end;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmVenda.ButtonConsultarVendaClick(Sender: TObject);
begin
  inherited;
  try
    try
      FecharQuerys;
      LimparCampos;
      FrmConsultaVenda.ShowModal;
    finally
      if not (DM.FDQCabeVenda.Eof) then
      begin
        if DM.FDQCabeVenda.FieldByName('STATUS').AsString = 'F' then
        begin
          Mensagem(1,'Venda finalizada não pode ser alterado');
          ButtonGravar.Enabled := False;
          ButtonFinalizar.Enabled := False;
        end;

        // Arruma as informaçoes do CabeVenda
        DM.FDMTCabeVenda.Close;
        DM.FDMTCabeVenda.Open;
        DM.FDMTCabeVenda.Insert;

        PassaInfoParaMemoryTableCabeVenda;

        DM.FDMTCabeVenda.Post;
        DM.FDMTCabeVenda.Edit;

        DM.FDQFormaPagto.Close;
        DM.FDQFormaPagto.SQL.Text := 'SELECT * FROM FORMAPAGTO ';
        DM.FDQFormaPagto.Open;
        if DM.FDQFormaPagto.Locate('CODIGO',DM.FDQCabeVenda.FieldByName('FORMAPAGTO').AsString,[]) then
        begin
          ComboBoxFormaPagamento.Text := DM.FDQFormaPagto.FieldByName('DESCRICAO').AsString;
        end;

        // Arruma as informaçoes da venda
        DM.FDMTVenda.Close;
        DM.FDMTVenda.Open;

        DM.FDQVenda.First;
        while not (DM.FDQVenda.Eof) do
        begin
          DM.FDMTVenda.Insert;
          PassaInfoParaMemoryTable;
          DM.FDMTVenda.Post;

          DM.FDQVenda.Next;
        end;

        CalcularValorTotalVenda;

        EditCodigoClienteExit(Sender);
        EditCodigoFuncionarioExit(Sender);

        DM.FDMTVenda.ApplyUpdates;
        DM.FDMTVenda.Refresh;
        DBGridVendas.Refresh;

        // Coloca no label o total de itens que tem
        LabelTotalItens.Caption := IntToStr(DM.FDMTServico.RecordCount);
      end;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmVenda.ButtonExcluirProdutoClick(Sender: TObject);
begin
  inherited;
  try
    try
      // Se tiver selecionado algum item
      if not (DM.FDMTVenda.Eof) then
      begin
        // Deleta do banco se for um item que ja estava lá
        if not (EditCodigo.Text = EmptyStr) then
        begin
          DM.FDQAuxiliar.Close;
          DM.FDQAuxiliar.SQL.Text := 'SELECT * FROM VENDA WHERE CABEVENDA = :CABEVENDA AND PRODUTO = :PRODUTO';
          DM.FDQAuxiliar.Params.ParamByName('CABEVENDA').AsString := EditCodigo.Text;
          DM.FDQAuxiliar.Params.ParamByName('PRODUTO').AsInteger := DM.FDMTVenda.FieldByName('PRODUTO').AsInteger;
          DM.FDQAuxiliar.Open;

          if not (DM.FDQAuxiliar.Eof) then
            DM.FDQAuxiliar.Delete;

          DM.FDQAuxiliar.Close;
        end;

        DM.FDMTVenda.Delete;

        LabelTotalItens.Caption := IntToStr(DM.FDMTVenda.RecordCount);

        // Arrumar a numeração dos itens novamente
        CalcularNumeroItem;

        CalcularValorTotalVenda;

        LimparVenda;
        ButtonConsultaProduto.SetFocus;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmVenda.ButtonFinalizarClick(Sender: TObject);
begin
  inherited;
  try
    try
      ButtonGravar.Enabled := False;
      ButtonFinalizar.Enabled := False;

      // Garante que esta salvo
      ButtonGravarClick(Sender);

      if DM.FDMTVenda.FieldByName('CODIGO').AsString = EmptyStr then
      begin
        Exit;
      end;

      DM.FDQCabeVenda.Close;
      DM.FDQCabeVenda.SQL.Text := 'SELECT * FROM CABEVENDA WHERE CODIGO = :CODIGO';
      DM.FDQCabeVenda.Params.ParamByName('CODIGO').AsString := EditCodigo.Text;
      DM.FDQCabeVenda.Open;

      // Verifica para movimentar o financeiro
      DM.FDQFormaPagto.Close;
      DM.FDQFormaPagto.SQL.Text := 'SELECT * FROM FORMAPAGTO';
      DM.FDQFormaPagto.Open;

      // Se achar a forma de pagamento
      if DM.FDQFormaPagto.Locate('CODIGO', DM.FDQCabeVenda.FieldByName('FORMAPAGTO').AsString) then
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
      if DM.FDQParametros.FieldByName('BAIXAESTOQUEDAVENDA').AsBoolean then
        BaixaEstoque;

      // Altera o status para finalizado
      DM.FDQCabeVenda.Edit;
      DM.FDQCabeVenda.FieldByName('STATUS').AsString := 'F';
      DM.FDQCabeVenda.Post;

      Mensagem(1,'Venda lançada com sucesso');

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

procedure TFrmVenda.ButtonGravarClick(Sender: TObject);
begin
  inherited;
  try
    try
      // Se nao tiver o cliente ele nao grava
      if DM.FDMTCabeVenda.FieldByName('CLIENTE').AsString = EmptyStr then
      begin
        Mensagem(2,'Cliente Obrigatorio');
        Exit;
      end;

      // Se nao tiver nenhum item ele nao grava
      if DM.FDMTVenda.Eof then
        Exit;

      // Se o codigo estiver vazio ele grava um novo registro senao ele atualiza o registro
      if EditCodigo.Text = EmptyStr then
      begin
        GravarVenda;
      end
      else
      begin
        AtualizarVenda;
      end;

      if ButtonFinalizar.Enabled then
        ButtonFinalizar.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmVenda.ButtonIncluirProdutoClick(Sender: TObject);
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
        if DM.FDMTVenda.Locate('PRODUTO', LabelCodigoProduto.Caption,[]) then
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

      CalcularValorTotalVenda;

      CalcularNumeroItem;

      LimparVenda;

      // Coloca no label o total de itens que tem
      LabelTotalItens.Caption := IntToStr(DM.FDMTVenda.RecordCount);

      DM.FDMTVenda.First;

      ButtonConsultaProduto.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmVenda.CalcularNumeroItem;
var
  I : Integer;
begin
  try
    try
      DM.FDMTVenda.ApplyUpdates;
      DM.FDMTVenda.Refresh;
      DBGridVendas.Refresh;

      I := 1;
      DM.FDMTVenda.First;

      while not DM.FDMTVenda.Eof do
      begin
        DM.FDMTVenda.Edit;
        DM.FDMTVenda.FieldByName('NUMEROITEM').AsInteger := I;
        I := I+1;
        DM.FDMTVenda.Next;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmVenda.CalcularValorTotalItem;
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

procedure TFrmVenda.CalcularValorTotalVenda;
var
  ValorTotal : Double;
begin
  try
    try
      ValorTotal := 0;

      DM.FDMTVenda.First;
      while not (DM.FDMTVenda.Eof) do
      begin
        // Soma apenas os valores dos produtos
        if DM.FDMTVenda.FieldByName('TIPOITEM').AsString = 'PRODUTO' then
          ValorTotal := ValorTotal + DM.FDMTVenda.FieldByName('VALORTOTALPRODUTO').AsFloat;

        DM.FDMTVenda.Next;
      end;

      LabelValorTotal.Caption := FloatToStr(ValorTotal);

      DM.FDMTVenda.First;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmVenda.CarregaFormasPagamento;
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

procedure TFrmVenda.DBGridVendasCellClick(Column: TColumn);
begin
  inherited;
  try
    try
      // Se selecionar o item ele vai alterar o item inteiro
      LabelAcao.Caption := 'ALTERAR';

      // Colocar as informaçoes nos edits para alterar
      EditNomeItem.Text := DM.FDMTVenda.FieldByName('NOMEPRODUTO').AsString;
      EditQuantidadeItem.Text := DM.FDMTVenda.FieldByName('QUANTIDADE').AsString;
      EditValorItem.Text := DM.FDMTVenda.FieldByName('VALOR').AsString;
      EditTotal.Text := DM.FDMTVenda.FieldByName('VALORTOTALPRODUTO').AsString;
      LabelCodigoProduto.Caption := DM.FDMTVenda.FieldByName('PRODUTO').AsString;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmVenda.EditCodigoClienteExit(Sender: TObject);
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
          DM.FDMTCabeVenda.FieldByName('CLIENTE').AsInteger := DM.FDQCliente.FieldByName('CODIGO').AsInteger;
          EditCodigoFuncionario.SetFocus;
        end;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmVenda.EditCodigoFuncionarioExit(Sender: TObject);
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
          DM.FDMTCabeVenda.FieldByName('FUNCIONARIO').AsString := EmptyStr;
          Exit;
        end
        else if not ((DM.FDQFuncionario.FieldByName('TIPO').AsInteger = 2) or (DM.FDQFuncionario.FieldByName('TIPO').AsInteger = 3)) then
        begin
          Mensagem(2,'Funcionario Não Permitido');
          EditCodigoFuncionario.Clear;
          ButtonConsultaFuncionario.SetFocus;
          DM.FDMTCabeVenda.FieldByName('FUNCIONARIO').AsString := EmptyStr;
          Exit;
        end
        else
        begin
          LabelNomeFuncionario.Caption := DM.FDQFuncionario.FieldByName('NOME').AsString;
          EditCodigoFuncionario.Text := DM.FDQFuncionario.FieldByName('CODIGO').AsString;
          DM.FDMTCabeVenda.FieldByName('FUNCIONARIO').AsInteger := DM.FDQFuncionario.FieldByName('CODIGO').AsInteger;
          ButtonConsultaProduto.SetFocus;
        end;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmVenda.EditQuantidadeItemExit(Sender: TObject);
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

procedure TFrmVenda.EditValorItemExit(Sender: TObject);
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

procedure TFrmVenda.FecharQuerys;
begin
  try
    try
      DM.FDMTVenda.Close;
      DM.FDMTCabeVenda.Close;
      DM.FDQVenda.Close;
      DM.FDQCabeVenda.Close;
      DM.FDQConsulta.Close;
      DM.FDQCliente.Close;
      DM.FDQContadores.Close;
      DM.FDQFormaPagto.Close;
      DM.FDQAuxiliar.Close;
      DM.FDQProduto.Close;
      DM.FDQCaixa.Close;
      DM.FDQContaReceber.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmVenda.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFrmVenda.FormShow(Sender: TObject);
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

procedure TFrmVenda.GravarVenda;
var
  ContadorCabeVenda, ContadorVenda : Integer;
begin
  try
    try
      { ***  Salva o CabeVenda *** }

      // Abre a query do CabeServico
      DM.FDQCabeVenda.Close;
      DM.FDQCabeVenda.SQL.Text := 'SELECT * FROM CABEVENDA ';
      DM.FDQCabeVenda.Open;

      // Abre a query dos contadores
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;
      DM.FDQContadores.Locate('TABELA','CABEVENDA',[]);
      ContadorCabeVenda := DM.FDQContadores.FieldByName('VALOR').AsInteger + 1;

      // Coloca os campos faltando no memoryTable
      DM.FDMTCabeVenda.FieldByName('CODIGO').AsInteger := ContadorCabeVenda;
      DM.FDMTCabeVenda.FieldByName('STATUS').AsString := 'G';
      DM.FDMTCabeVenda.FieldByName('VALORTOTAL').AsFloat := StrToFloat(LabelValorTotal.Caption);

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
        DM.FDMTCabeVenda.FieldByName('FORMAPAGTO').AsInteger := DM.FDQFormaPagto.FieldByName('CODIGO').AsInteger;

      DM.FDQCabeVenda.Insert;

      PassaInfoParaQueryCabeVenda;

      DM.FDQCabeVenda.Post;

      // Atualiza os contadores
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorCabeVenda;
      DM.FDQContadores.Post;

      { ***  Salva a Venda *** }

      // Abre a query do Servico
      DM.FDQVenda.Close;
      DM.FDQVenda.SQL.Text := 'SELECT * FROM VENDA';
      DM.FDQVenda.Open;

      // Abre a query dos contadores
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;
      DM.FDQContadores.Locate('TABELA','VENDA',[]);
      ContadorVenda := DM.FDQContadores.FieldByName('VALOR').AsInteger;

      // Arruma o numero do cabeservico e o codigo dos produtos
      DM.FDMTVenda.First;
      while not DM.FDMTVenda.Eof do
      begin
        ContadorVenda := ContadorVenda + 1;

        DM.FDMTVenda.Edit;
        DM.FDMTVenda.FieldByName('CABEVENDA').AsString := EditCodigo.Text;
        DM.FDMTVenda.FieldByName('CODIGO').AsInteger := ContadorVenda;
        DM.FDMTVenda.Post;

        DM.FDMTVenda.Next;
      end;

      // Salva no banco os produtos
      DM.FDMTVenda.First;
      while not DM.FDMTVenda.Eof do
      begin
        DM.FDQVenda.Insert;
        PassaInfoParaQuery;
        DM.FDQVenda.Post;

        DM.FDMTVenda.Next;
      end;

      // Atualiza os contadores
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorVenda;
      DM.FDQContadores.Post;

      Mensagem(1,'Venda gravada com sucesso');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmVenda.IncluirItem;
begin
  try
    try
      DM.FDMTVenda.Insert;

      DM.FDMTVenda.FieldByName('PRODUTO').AsString := LabelCodigoProduto.Caption;
      DM.FDMTVenda.FieldByName('NOMEPRODUTO').AsString := EditNomeItem.Text;
      DM.FDMTVenda.FieldByName('QUANTIDADE').AsString :=  EditQuantidadeItem.Text;
      DM.FDMTVenda.FieldByName('VALOR').AsString := EditValorItem.Text;
      DM.FDMTVenda.FieldByName('VALORTOTALPRODUTO').AsString := EditTotal.Text;
      DM.FDMTVenda.FieldByName('TIPOITEM').AsString := DM.FDQProduto.FieldByName('TIPO').AsString;

      DM.FDMTVenda.Post;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmVenda.LancaCaixa;
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
      DM.FDQCaixa.FieldByName('DATA').AsDateTime := DM.FDQCabeVenda.FieldByName('DATA').AsDateTime;
      DM.FDQCaixa.FieldByName('HORA').AsDateTime := Time;
      DM.FDQCaixa.FieldByName('CLIENTE').AsInteger := DM.FDMTCabeVenda.FieldByName('CLIENTE').AsInteger;
      DM.FDQCaixa.FieldByName('HISTORICO').AsString := 'LANÇAMENTO DE VENDA 2000' + EditCodigo.Text + '/1';
      DM.FDQCaixa.FieldByName('DOCUMENTO').AsString := '2000'+ EditCodigo.Text;
      DM.FDQCaixa.FieldByName('CREDITO').AsFloat := DM.FDQCabeVenda.FieldByName('VALORTOTAL').AsFloat;
      DM.FDQCaixa.FieldByName('OBSERVACAO').AsString := DM.FDQCabeVenda.FieldByName('OBSERVACAO').AsString;
      DM.FDQCaixa.FieldByName('OBSERVACAO1').AsString := DM.FDQCabeVenda.FieldByName('OBSERVACAO1').AsString;
      DM.FDQCaixa.FieldByName('FORMAPAGTO').AsInteger := DM.FDQCabeVenda.FieldByName('FORMAPAGTO').AsInteger;;
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

procedure TFrmVenda.LancaFinanceiro;
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
      DM.FDQContaReceber.FieldByName('CLIENTE').AsInteger := DM.FDQCabeVenda.FieldByName('CLIENTE').AsInteger;
      DM.FDQContaReceber.FieldByName('PARCELA').AsInteger := 1;
      DM.FDQContaReceber.FieldByName('DOCUMENTO').AsString := '2000' + DM.FDQCabeVenda.FieldByName('CODIGO').AsString;
      DM.FDQContaReceber.FieldByName('EMISSAO').AsDateTime := DateTimePickerDataAtual.Date;
      DM.FDQContaReceber.FieldByName('VENCIMENTO').AsDateTime := IncMonth(DateTimePickerDataAtual.Date,1);
      DM.FDQContaReceber.FieldByName('VALOR').AsFloat := DM.FDQCabeVenda.FieldByName('VALORTOTAL').AsFloat;
      DM.FDQContaReceber.FieldByName('FORMAPAGTO').AsInteger := DM.FDQCabeVenda.FieldByName('FORMAPAGTO').AsInteger;
      DM.FDQContaReceber.FieldByName('OBSERVACAO').AsString := DM.FDQCabeVenda.FieldByName('OBSERVACAO').AsString;
      DM.FDQContaReceber.FieldByName('OBSERVACAO1').AsString := DM.FDQCabeVenda.FieldByName('OBSERVACAO1').AsString;

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

procedure TFrmVenda.LancaParcelado;
begin
  try
    try
      FrmParcelamento.LabelCodigoCliente.Caption := DM.FDQCabeVenda.FieldByName('CLIENTE').AsString;
      FrmParcelamento.LabelNomeCliente.Caption := LabelNomeCliente.Caption;
      FrmParcelamento.LabelValorTotal.Caption := DM.FDQCabeVenda.FieldByName('VALORTOTAL').AsString;
      FrmParcelamento.LabelStatusParcelamento.Caption := 'ABERTO';
      FrmParcelamento.LabelNumeroDocumento.Caption := '2000' + DM.FDQCabeVenda.FieldByName('CODIGO').AsString;
      FrmParcelamento.LabelObservacao.Caption := DM.FDQCabeVenda.FieldByName('OBSERVACAO').AsString;
      FrmParcelamento.LabelObservacao1.Caption := DM.FDQCabeVenda.FieldByName('OBSERVACAO1').AsString;

      FrmParcelamento.ShowModal;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmVenda.LimparCampos;
var
  I : Integer;
begin
  try
    try
      for I := 0 to FrmVenda.ComponentCount - 1 do
      begin
        if Components[i] is TEdit then
          TEdit(FrmVenda.Components[i]).Clear;
        if Components[i] is TCheckBox then
          TCheckBox(FrmVenda.Components[i]).Checked := False;
        if Components[i] is TDateTimePicker then
          TDateTimePicker(FrmVenda.Components[i]).Date := Date;
        if Components[i] is TComboBox then
          TComboBox(FrmVenda.Components[i]).ItemIndex := 0;
        if Components[i] is TButton then
          TButton(FrmVenda.Components[i]).Enabled := True;
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

procedure TFrmVenda.LimparVenda;
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

procedure TFrmVenda.PassaInfoParaMemoryTable;
var
  I: Integer;
  NomeCampo: string;
begin
  // Se tiver informação ele passa para o memorytable Venda
  for I := 0 to (DM.FDQVenda.FieldCount - 1) do
  begin
    NomeCampo := DM.FDQVenda.Fields[I].FieldName;
    if (DM.FDMTVenda.FindField(NomeCampo) <> nil) then
      DM.FDMTVenda.FieldByName(NomeCampo).Value := DM.FDQVenda.FieldByName(NomeCampo).Value;
  end;
end;

procedure TFrmVenda.PassaInfoParaMemoryTableCabeVenda;
var
  I: Integer;
  NomeCampo: string;
begin
  // Se tiver informação ele passa para o memorytable CabeVenda
  for I := 0 to (DM.FDQCabeVenda.FieldCount - 1) do
  begin
    NomeCampo := DM.FDQCabeVenda.Fields[I].FieldName;
    if (DM.FDMTCabeVenda.FindField(NomeCampo) <> nil) then
      DM.FDMTCabeVenda.FieldByName(NomeCampo).Value := DM.FDQCabeVenda.FieldByName(NomeCampo).Value;
  end;
end;

procedure TFrmVenda.PassaInfoParaQuery;
var
  I: Integer;
  NomeCampo: string;
begin
  // Se tiver informação ele passa para o memorytable Venda
  for I := 0 to (DM.FDMTVenda.FieldCount - 1) do
  begin
    NomeCampo := DM.FDMTVenda.Fields[I].FieldName;
    if (DM.FDQVenda.FindField(NomeCampo) <> nil) then
      DM.FDQVenda.FieldByName(NomeCampo).Value := DM.FDMTVenda.FieldByName(NomeCampo).Value;
  end;
end;

procedure TFrmVenda.PassaInfoParaQueryCabeVenda;
var
  I: Integer;
  NomeCampo: string;
begin
  // Se tiver informação ele passa para o query CabeVenda
  for I := 0 to (DM.FDMTCabeVenda.FieldCount - 1) do
  begin
    NomeCampo := DM.FDMTCabeVenda.Fields[I].FieldName;
    if (DM.FDQCabeVenda.FindField(NomeCampo) <> nil) then
      DM.FDQCabeVenda.FieldByName(NomeCampo).Value := DM.FDMTCabeVenda.FieldByName(NomeCampo).Value;
  end;
end;

end.
