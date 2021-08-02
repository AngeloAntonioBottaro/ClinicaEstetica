unit UntEntradaEstoque;

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
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.ComCtrls,

  FireDAC.Stan.Param,

  Data.DB,
  Data.Bind.Components,
  Data.Bind.DBScope,
  Data.Bind.EngExt,

  UntBase,
  UntBibliotecaFuncoes,
  UntComponentesGerais,
  UntDataModule,
  UntConsultaProduto,
  UntConsultaEntradaEstoque,
  UntConsultaFornecedor;

type
  TFrmEntradaEstoque = class(TFrmBase)
    GroupBoxCabeEntrada: TGroupBox;
    Label30: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    Label3: TLabel;
    EditCodigo: TEdit;
    DateTimePickerDataLancamento: TDateTimePicker;
    DateTimePickerDataCompra: TDateTimePicker;
    DateTimePickerDataRecebimento: TDateTimePicker;
    GroupBoxEntrada: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    LabelTotalItens: TLabel;
    DBGridEntrada: TDBGrid;
    EditNomeItem: TEdit;
    ButtonConsultaProduto: TButton;
    EditQuantidadeItem: TEdit;
    EditValorItem: TEdit;
    EditTotal: TEdit;
    ButtonIncluirProduto: TButton;
    ButtonExcluirProduto: TButton;
    GroupBoxBotton: TGroupBox;
    Label11: TLabel;
    Label1: TLabel;
    Label9: TLabel;
    ButtonGravar: TButton;
    ButtonFinalizar: TButton;
    ButtonConsultar: TButton;
    ButtonAdicionar: TButton;
    ComboBoxFormaPagamento: TComboBox;
    EditObservacao: TEdit;
    EditObservacao1: TEdit;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    LabelAcao: TLabel;
    LabelValorTotal: TLabel;
    Label12: TLabel;
    LabelCodigoProduto: TLabel;
    Label13: TLabel;
    EditCodigoFornecedor: TEdit;
    ButtonConsultaFornecedor: TButton;
    LabelNomeFornecedor: TLabel;
    LinkControlToField6: TLinkControlToField;
    procedure ButtonAdicionarClick(Sender: TObject);
    procedure ButtonGravarClick(Sender: TObject);
    procedure ButtonFinalizarClick(Sender: TObject);
    procedure ButtonConsultarClick(Sender: TObject);
    procedure ButtonConsultaProdutoClick(Sender: TObject);
    procedure ButtonIncluirProdutoClick(Sender: TObject);
    procedure ButtonExcluirProdutoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure EditQuantidadeItemExit(Sender: TObject);
    procedure EditValorItemExit(Sender: TObject);
    procedure DBGridEntradaCellClick(Column: TColumn);
    procedure EditObservacaoKeyPress(Sender: TObject; var Key: Char);
    procedure EditObservacao1KeyPress(Sender: TObject; var Key: Char);
    procedure ButtonConsultaFornecedorClick(Sender: TObject);
    procedure EditCodigoFornecedorExit(Sender: TObject);
  private
    procedure LimparCampos;
    procedure LimparEntrada;
    procedure FecharQuerys;
    procedure PassaInfoParaQuery;
    procedure PassaInfoParaMemoryTable;
    procedure PassaInfoParaQueryCabeEntrada;
    procedure PassaInfoParaMemoryTableCabeEntrada;
    procedure CalcularValorTotalItem;
    procedure CalcularValorTotalEntrada;
    procedure IncluirItem;
    procedure AtualizarItem;
    procedure CalcularNumeroItem;
    procedure CarregaFormasPagamento;
    procedure GravarEntrada;
    procedure AtualizarEntrada;
    procedure LancaEstoque;
    procedure LancaCaixa;
    procedure LancaFinanceiro;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEntradaEstoque: TFrmEntradaEstoque;

implementation

{$R *.dfm}

procedure TFrmEntradaEstoque.AtualizarEntrada;
var
  ContadorEntrada : Integer;
begin
  try
    try
      { *** Atualiza o CabeEntrada *** }

      // Abre a query do CabeEntrada
      DM.FDQCabeEntrada.Close;
      DM.FDQCabeEntrada.SQL.Text := 'SELECT * FROM CABEENTRADA WHERE CODIGO = :CODIGO';
      DM.FDQCabeEntrada.Params.ParamByName('CODIGO').AsString := EditCodigo.Text;
      DM.FDQCabeEntrada.Open;

      DM.FDQCabeEntrada.Edit;

      DM.FDMTCabeEntrada.FieldByName('VALORTOTAL').AsFloat := StrToFloat(LabelValorTotal.Caption);
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
        DM.FDMTCabeEntrada.FieldByName('FORMAPAGTO').AsInteger := DM.FDQFormaPagto.FieldByName('CODIGO').AsInteger;

      PassaInfoParaQueryCabeEntrada;

      DM.FDQCabeEntrada.Post;

      { *** Atualiza a Entrada *** }

      // Abre a query do Entrada
      DM.FDQEntrada.Close;
      DM.FDQEntrada.SQL.Text := 'SELECT * FROM ENTRADA WHERE CABEENTRADA = :CABEENTRADA';
      DM.FDQEntrada.Params.ParamByName('CABEENTRADA').AsString := EditCodigo.Text;
      DM.FDQEntrada.Open;

      // Abre a query dos contadores
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;
      DM.FDQContadores.Locate('TABELA','ENTRADA',[]);
      ContadorEntrada := DM.FDQContadores.FieldByName('VALOR').AsInteger;

      // Arruma o numero do cabeentrada e o codigo dos produtos
      DM.FDMTEntrada.First;
      while not DM.FDMTEntrada.Eof do
      begin
        DM.FDMTEntrada.Edit;
        DM.FDMTEntrada.FieldByName('CABEENTRADA').AsString := EditCodigo.Text;
        DM.FDMTEntrada.Post;

        DM.FDMTEntrada.Next;
      end;

      // Salva no banco os produtos
      DM.FDMTEntrada.First;
      while not DM.FDMTEntrada.Eof do
      begin
        // Procura se ja tem no banco o registro do produto, se tiver ele atualiza senao ele inclui
        if DM.FDQEntrada.Locate('PRODUTO', DM.FDMTEntrada.FieldByName('PRODUTO').AsString,[]) then
        begin
          DM.FDQEntrada.Edit;
        end
        else
        begin
          ContadorEntrada := ContadorEntrada + 1;
          DM.FDMTEntrada.Edit;
          DM.FDMTEntrada.FieldByName('CODIGO').AsInteger := ContadorEntrada;
          DM.FDMTEntrada.Post;


          DM.FDQEntrada.Insert;
        end;

        PassaInfoParaQuery;
        DM.FDQEntrada.Post;

        DM.FDMTEntrada.Next;
      end;

       // Atualiza os contadores
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorEntrada;
      DM.FDQContadores.Post;

      Mensagem(1,'Entrada atualizada com sucesso')
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmEntradaEstoque.AtualizarItem;
begin
  try
    try
      DM.FDMTEntrada.Edit;

      DM.FDMTEntrada.FieldByName('PRODUTO').AsString := LabelCodigoProduto.Caption;
      DM.FDMTEntrada.FieldByName('NOMEPRODUTO').AsString := EditNomeItem.Text;
      DM.FDMTEntrada.FieldByName('VALORCOMPRA').AsString := EditValorItem.Text;

      // Se a acao for para alterar ele vai alterar tudo, se for para somar ele vai adicionar junto ao que ja existe
      if LabelAcao.Caption = 'ALTERAR' then
      begin
        DM.FDMTEntrada.FieldByName('QUANTIDADE').AsString :=  EditQuantidadeItem.Text;
      end
      else
      begin
        DM.FDMTEntrada.FieldByName('QUANTIDADE').AsFloat :=  StrToFloat(EditQuantidadeItem.Text) + DM.FDMTEntrada.FieldByName('QUANTIDADE').AsFloat;
        // Joga o valor atualizado da quantidade no edit
        EditQuantidadeItem.Text := DM.FDMTEntrada.FieldByName('QUANTIDADE').AsString;
      end;

      CalcularValorTotalItem;
      DM.FDMTEntrada.FieldByName('VALORTOTALPRODUTO').AsString := EditTotal.Text;

      DM.FDMTEntrada.Post;

      LabelAcao.Caption := 'SOMAR';
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmEntradaEstoque.ButtonAdicionarClick(Sender: TObject);
begin
  inherited;
  try
    try
      FecharQuerys;
      LimparCampos;

      DM.FDMTCabeEntrada.Open;
      DM.FDMTCabeEntrada.Insert;
      DM.FDMTEntrada.Open;
      DM.FDMTEntrada.Insert;

      DM.FDMTCabeEntrada.FieldByName('DATALANCAMENTO').AsDateTime := Date;
      DM.FDMTCabeEntrada.FieldByName('DATACOMPRA').AsDateTime := Date;
      DM.FDMTCabeEntrada.FieldByName('DATARECEBIMENTO').AsDateTime := Date;

      DateTimePickerDataCompra.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmEntradaEstoque.ButtonConsultaFornecedorClick(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeFornecedor.Caption := '';
      FrmConsultaFornecedor.ShowModal;
    finally
      if not (DM.FDQFornecedor.Eof) then
      begin
        // Arruma as informaçoes do CabeEntrada
        DM.FDMTCabeEntrada.FieldByName('FORNECEDOR').AsInteger := DM.FDQFornecedor.FieldByName('CODIGO').AsInteger;
        EditCodigoFornecedor.Text := DM.FDQFornecedor.FieldByName('CODIGO').AsString;
        LabelNomeFornecedor.Caption := DM.FDQFornecedor.FieldByName('NOMEFANTASIA').AsString;
      end;

      DM.FDQFornecedor.Close;
      EditCodigoFornecedor.SetFocus;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmEntradaEstoque.ButtonConsultaProdutoClick(Sender: TObject);
begin
  inherited;
  try
    try
      LabelAcao.Caption := 'SOMAR';
      FrmConsultaProduto.ShowModal;
    finally
      if not (DM.FDQProduto.Eof) then
      begin
        // Se for um produto ele permite faze a entrada
        if DM.FDQProduto.FieldByName('TIPO').AsString = 'PRODUTO' then
        begin

          // Pega as informações do produto
          LabelCodigoProduto.Caption := DM.FDQProduto.FieldByName('CODIGO').AsString;
          EditNomeItem.Text := DM.FDQProduto.FieldByName('DESCRICAO').AsString;
          EditQuantidadeItem.Text := '1';
          EditValorItem.Text := DM.FDQProduto.FieldByName('VALORCOMPRA').AsString;

          // Calcula o valor total do produto
          CalcularValorTotalItem;
          EditNomeItem.SetFocus;
        end
        else
        begin
          Mensagem(2,'Itens do tipo ' + DM.FDQProduto.FieldByName('TIPO').AsString + ' não podem ser incluidos na entrada')
        end;
      end;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmEntradaEstoque.ButtonConsultarClick(Sender: TObject);
begin
  inherited;
  try
    try
      FecharQuerys;
      LimparCampos;
      FrmConsultaEntradaEstoque.ShowModal;
    finally
      if not (DM.FDQCabeEntrada.Eof) then
      begin
        // Arruma as informaçoes do CabeEntrada
        DM.FDMTCabeEntrada.Close;
        DM.FDMTCabeEntrada.Open;
        DM.FDMTCabeEntrada.Insert;

        PassaInfoParaMemoryTableCabeEntrada;

        DM.FDMTCabeEntrada.Post;
        DM.FDMTCabeEntrada.Edit;

        DM.FDQFormaPagto.Close;
        DM.FDQFormaPagto.SQL.Text := 'SELECT * FROM FORMAPAGTO ';
        DM.FDQFormaPagto.Open;
        if DM.FDQFormaPagto.Locate('CODIGO',DM.FDQCabeEntrada.FieldByName('FORMAPAGTO').AsString,[]) then
        begin
          ComboBoxFormaPagamento.Text := DM.FDQFormaPagto.FieldByName('DESCRICAO').AsString;
        end;

        // Arruma as informaçoes da Entrada
        DM.FDMTEntrada.Close;
        DM.FDMTEntrada.Open;

        DM.FDQEntrada.First;
        while not (DM.FDQEntrada.Eof) do
        begin
          DM.FDMTEntrada.Insert;
          PassaInfoParaMemoryTable;
          DM.FDMTEntrada.Post;

          DM.FDQEntrada.Next;
        end;

        CalcularValorTotalEntrada;

        // Coloca no label o total de itens que tem
        LabelTotalItens.Caption := IntToStr(DM.FDMTEntrada.RecordCount);
        EditCodigoFornecedorExit(Sender);
      end;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmEntradaEstoque.ButtonExcluirProdutoClick(Sender: TObject);
begin
  inherited;
  try
    try
      // Deleta do banco se for um item que ja estava lá
      if not (EditCodigo.Text = EmptyStr) then
      begin
        DM.FDQAuxiliar.Close;
        DM.FDQAuxiliar.SQL.Text := 'SELECT * FROM ENTRADA WHERE CABEENTRADA = :CABEENTRADA AND PRODUTO = :PRODUTO';
        DM.FDQAuxiliar.Params.ParamByName('CABEENTRADA').AsString := EditCodigo.Text;
        DM.FDQAuxiliar.Params.ParamByName('PRODUTO').AsInteger := DM.FDMTEntrada.FieldByName('PRODUTO').AsInteger;
        DM.FDQAuxiliar.Open;

        if not (DM.FDQAuxiliar.Eof) then
          DM.FDQAuxiliar.Delete;

        DM.FDQAuxiliar.Close;
      end;

      DM.FDMTEntrada.Delete;

      LabelTotalItens.Caption := IntToStr(DM.FDMTEntrada.RecordCount);

      // Arrumar a numeração dos itens novamente
      CalcularNumeroItem;

      CalcularValorTotalEntrada;

      LimparEntrada;
      ButtonConsultaProduto.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmEntradaEstoque.ButtonFinalizarClick(Sender: TObject);
begin
  inherited;
  try
    try
      ButtonGravar.Enabled := False;
      ButtonFinalizar.Enabled := False;

      // Garante que esta salvo
      ButtonGravarClick(Sender);

      // Altera o status para finalizado
      DM.FDQCabeEntrada.Close;
      DM.FDQCabeEntrada.SQL.Text := 'SELECT * FROM CABEENTRADA WHERE CODIGO = :CODIGO';
      DM.FDQCabeEntrada.Params.ParamByName('CODIGO').AsString := EditCodigo.Text;
      DM.FDQCabeEntrada.Open;
      DM.FDQCabeEntrada.Edit;
      DM.FDQCabeEntrada.FieldByName('STATUS').AsString := 'F';
      DM.FDQCabeEntrada.Post;

      // Lança o estoque nos produtos
      LancaEstoque;

      // Verifica para movimentar o financeiro
      DM.FDQFormaPagto.Close;
      DM.FDQFormaPagto.SQL.Text := 'SELECT * FROM FORMAPAGTO';
      DM.FDQFormaPagto.Open;

      // Se achar a forma de pagamento
      if DM.FDQFormaPagto.Locate('CODIGO', DM.FDQCabeEntrada.FieldByName('FORMAPAGTO').AsString) then
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
          LancaFinanceiro;
        end
      end;

      Mensagem(1,'Entrada lançada com sucesso');

      ButtonAdicionar.SetFocus;
    finally

    end;
  Except on E:Exception do
    begin
      Mensagem(3,E.ToString);
      ButtonGravar.Enabled := True;
      ButtonFinalizar.Enabled := True;
    end;
  end;
end;

procedure TFrmEntradaEstoque.ButtonGravarClick(Sender: TObject);
begin
  inherited;
  try
    try
      // Se o codigo estiver vazio ele grava um novo registro senao ele atualiza o registro
      if EditCodigo.Text = EmptyStr then
      begin
        GravarEntrada;
      end
      else
      begin
        AtualizarEntrada;
      end;

      ButtonAdicionar.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmEntradaEstoque.ButtonIncluirProdutoClick(Sender: TObject);
begin
  inherited;
  try
    try
      // se o produto ja estiver no memorytable ele altera o produto senao ele adiciona
      if DM.FDMTEntrada.Locate('PRODUTO', LabelCodigoProduto.Caption,[]) then
      begin
        AtualizarItem;
      end
      else
      begin
        IncluirItem;
      end;

      CalcularValorTotalEntrada;

      CalcularNumeroItem;

      LimparEntrada;

      // Coloca no label o total de itens que tem
      LabelTotalItens.Caption := IntToStr(DM.FDMTEntrada.RecordCount);

      DM.FDMTEntrada.First;

      ButtonConsultaProduto.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmEntradaEstoque.CalcularNumeroItem;
var
  I : Integer;
begin
  try
    try
      DM.FDMTEntrada.ApplyUpdates;
      DM.FDMTEntrada.Refresh;
      DBGridEntrada.Refresh;

      I := 1;
      DM.FDMTEntrada.First;

      while not DM.FDMTEntrada.Eof do
      begin
        DM.FDMTEntrada.Edit;
        DM.FDMTEntrada.FieldByName('NUMEROITEM').AsInteger := I;
        I := I+1;
        DM.FDMTEntrada.Next;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmEntradaEstoque.CalcularValorTotalEntrada;
var
  ValorTotal : Double;
begin
  try
    try
      ValorTotal := 0;

      DM.FDMTEntrada.First;
      while not (DM.FDMTEntrada.Eof) do
      begin
        ValorTotal := ValorTotal + DM.FDMTEntrada.FieldByName('VALORTOTALPRODUTO').AsFloat;
        DM.FDMTEntrada.Next;
      end;

      LabelValorTotal.Caption := FloatToStr(ValorTotal);

      DM.FDMTEntrada.First;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmEntradaEstoque.CalcularValorTotalItem;
begin
  try
    try
      // Se tiver quantidade e valor
      if (not (EditQuantidadeItem.Text = EmptyStr) ) and (not (EditValorItem.Text = EmptyStr)) then
      begin
        // Se tiver quantidade valida
        if StrToFloat(EditQuantidadeItem.Text) <> 0 then
        begin
          // Se tiver valor valido
          if StrToFloat(EditValorItem.Text) <> 0 then
            EditTotal.Text := FloatToStr(StrToFloat(EditQuantidadeItem.Text) * StrToFloat(EditValorItem.Text))
          else
          begin
            Mensagem(2,'Valor invalido');
            EditValorItem.SetFocus;
          end;
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

procedure TFrmEntradaEstoque.CarregaFormasPagamento;
begin
  try
    try
      ComboBoxFormaPagamento.Clear;
      DM.FDQFormaPagto.Close;
      DM.FDQFormaPagto.SQL.Text := 'SELECT * FROM FORMAPAGTO WHERE STATUS = :STATUS AND LANCAPARCELADO = FALSE ';
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

procedure TFrmEntradaEstoque.DBGridEntradaCellClick(Column: TColumn);
begin
  inherited;
  try
    try
      // Se selecionar o item ele vai alterar o item inteiro
      LabelAcao.Caption := 'ALTERAR';

      // Colocar as informaçoes nos edits para alterar
      EditNomeItem.Text := DM.FDMTEntrada.FieldByName('NOMEPRODUTO').AsString;
      EditQuantidadeItem.Text := DM.FDMTEntrada.FieldByName('QUANTIDADE').AsString;
      EditValorItem.Text := DM.FDMTEntrada.FieldByName('VALORCOMPRA').AsString;
      EditTotal.Text := DM.FDMTEntrada.FieldByName('VALORTOTALPRODUTO').AsString;
      LabelCodigoProduto.Caption := DM.FDMTEntrada.FieldByName('PRODUTO').AsString;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmEntradaEstoque.EditCodigoFornecedorExit(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeFornecedor.Caption := '';

      if not (EditCodigoFornecedor.Text = EmptyStr) then
      begin
        DM.FDQFornecedor.Close;
        DM.FDQFornecedor.SQL.Text := 'SELECT * FROM FORNECEDOR WHERE CODIGO = :CODIGO ';
        DM.FDQFornecedor.Params.ParamByName('CODIGO').AsString := EditCodigoFornecedor.Text;
        DM.FDQFornecedor.Open;

        if DM.FDQFornecedor.Eof then
        begin
          Mensagem(2,'Fornecedor Não Encontrado');
          EditCodigoFornecedor.Clear;
          ButtonConsultaFornecedor.SetFocus;
          DM.FDMTCabeEntrada.FieldByName('FORNECEDOR').AsString := EmptyStr;
          Exit;
        end
        else
        begin
          // Arruma as informaçoes do CabeEntrada
          DM.FDMTCabeEntrada.FieldByName('FORNECEDOR').AsInteger := DM.FDQFornecedor.FieldByName('CODIGO').AsInteger;
          EditCodigoFornecedor.Text := DM.FDQFornecedor.FieldByName('CODIGO').AsString;
          LabelNomeFornecedor.Caption := DM.FDQFornecedor.FieldByName('NOMEFANTASIA').AsString;
        end;

        DM.FDQFornecedor.Close;

        ButtonConsultaProduto.SetFocus;
      end
      else
        ButtonConsultaFornecedor.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmEntradaEstoque.EditObservacao1KeyPress(Sender: TObject;
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

procedure TFrmEntradaEstoque.EditObservacaoKeyPress(Sender: TObject;
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

procedure TFrmEntradaEstoque.EditQuantidadeItemExit(Sender: TObject);
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

procedure TFrmEntradaEstoque.EditValorItemExit(Sender: TObject);
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

procedure TFrmEntradaEstoque.FecharQuerys;
begin
  try
    try
      DM.FDMTEntrada.Close;
      DM.FDMTCabeEntrada.Close;
      DM.FDQEntrada.Close;
      DM.FDQCabeEntrada.Close;
      DM.FDQConsulta.Close;
      DM.FDQContadores.Close;
      DM.FDQFormaPagto.Close;
      DM.FDQAuxiliar.Close;
      DM.FDQProduto.Close;
      DM.FDQCaixa.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmEntradaEstoque.FormClose(Sender: TObject;
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

procedure TFrmEntradaEstoque.FormShow(Sender: TObject);
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

procedure TFrmEntradaEstoque.GravarEntrada;
var
  ContadorCabeEntrada, ContadorEntrada : Integer;
begin
  try
    try
      { ***  Salva o CabeEntrada *** }

      // Abre a query do CabeEntrada
      DM.FDQCabeEntrada.Close;
      DM.FDQCabeEntrada.SQL.Text := 'SELECT * FROM CABEENTRADA';
      DM.FDQCabeEntrada.Open;

      // Abre a query dos contadores
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;
      DM.FDQContadores.Locate('TABELA','CABEENTRADA',[]);
      ContadorCabeEntrada := DM.FDQContadores.FieldByName('VALOR').AsInteger + 1;

      // Coloca os campos faltando no memoryTable
      DM.FDMTCabeEntrada.FieldByName('CODIGO').AsInteger := ContadorCabeEntrada;
      DM.FDMTCabeEntrada.FieldByName('STATUS').AsString := 'G';
      DM.FDMTCabeEntrada.FieldByName('VALORTOTAL').AsFloat := StrToFloat(LabelValorTotal.Caption);

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
        DM.FDMTCabeEntrada.FieldByName('FORMAPAGTO').AsInteger := DM.FDQFormaPagto.FieldByName('CODIGO').AsInteger;

      DM.FDQCabeEntrada.Insert;

      PassaInfoParaQueryCabeEntrada;

      DM.FDQCabeEntrada.Post;

      // Atualiza os contadores
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorCabeEntrada;
      DM.FDQContadores.Post;

      { ***  Salva a Entrada *** }

      // Abre a query do Entrada
      DM.FDQEntrada.Close;
      DM.FDQEntrada.SQL.Text := 'SELECT * FROM ENTRADA';
      DM.FDQEntrada.Open;

      // Abre a query dos contadores
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;
      DM.FDQContadores.Locate('TABELA','ENTRADA',[]);
      ContadorEntrada := DM.FDQContadores.FieldByName('VALOR').AsInteger;

      // Arruma o numero do cabeentrada e o codigo dos produtos
      DM.FDMTEntrada.First;
      while not DM.FDMTEntrada.Eof do
      begin
        ContadorEntrada := ContadorEntrada + 1;

        DM.FDMTEntrada.Edit;
        DM.FDMTEntrada.FieldByName('CABEENTRADA').AsString := EditCodigo.Text;
        DM.FDMTEntrada.FieldByName('CODIGO').AsInteger := ContadorEntrada;
        DM.FDMTEntrada.Post;

        DM.FDMTEntrada.Next;
      end;

      // Salva no banco os produtos
      DM.FDMTEntrada.First;
      while not DM.FDMTEntrada.Eof do
      begin
        DM.FDQEntrada.Insert;
        PassaInfoParaQuery;
        DM.FDQEntrada.Post;

        DM.FDMTEntrada.Next;
      end;

       // Atualiza os contadores
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorEntrada;
      DM.FDQContadores.Post;

      Mensagem(1,'Entrada gravada com sucesso');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmEntradaEstoque.IncluirItem;
begin
  try
    try
      DM.FDMTEntrada.Insert;

      DM.FDMTEntrada.FieldByName('PRODUTO').AsString := LabelCodigoProduto.Caption;
      DM.FDMTEntrada.FieldByName('NOMEPRODUTO').AsString := EditNomeItem.Text;
      DM.FDMTEntrada.FieldByName('QUANTIDADE').AsString :=  EditQuantidadeItem.Text;
      DM.FDMTEntrada.FieldByName('VALORCOMPRA').AsString := EditValorItem.Text;
      DM.FDMTEntrada.FieldByName('VALORTOTALPRODUTO').AsString := EditTotal.Text;
      DM.FDMTEntrada.FieldByName('TIPOITEM').AsString := DM.FDQProduto.FieldByName('TIPO').AsString;

      DM.FDMTEntrada.Post;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmEntradaEstoque.LancaCaixa;
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
      DM.FDQCaixa.FieldByName('DATA').AsDateTime := DM.FDMTCabeEntrada.FieldByName('DATALANCAMENTO').AsDateTime;
      DM.FDQCaixa.FieldByName('HORA').AsDateTime := Time;
      DM.FDQCaixa.FieldByName('FORNECEDOR').AsInteger := DM.FDQCabeEntrada.FieldByName('FORNECEDOR').AsInteger;
      DM.FDQCaixa.FieldByName('HISTORICO').AsString := 'LANÇAMENTO DE ENTRADA DE ESTOQUE 4000' + EditCodigo.Text  + '/1';
      DM.FDQCaixa.FieldByName('DOCUMENTO').AsString := '4000'+ EditCodigo.Text;
      DM.FDQCaixa.FieldByName('DEBITO').AsFloat := DM.FDQCabeEntrada.FieldByName('VALORTOTAL').AsFloat;
      DM.FDQCaixa.FieldByName('OBSERVACAO').AsString := DM.FDQCabeEntrada.FieldByName('OBSERVACAO').AsString;
      DM.FDQCaixa.FieldByName('OBSERVACAO1').AsString := DM.FDQCabeEntrada.FieldByName('OBSERVACAO1').AsString;
      DM.FDQCaixa.FieldByName('FORMAPAGTO').AsInteger := DM.FDQCabeEntrada.FieldByName('FORMAPAGTO').AsInteger;;
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

procedure TFrmEntradaEstoque.LancaEstoque;
begin
  try
    try
      // Pega os produtos da entrada
      DM.FDQEntrada.Close;
      DM.FDQEntrada.SQL.Text := 'SELECT * FROM ENTRADA WHERE CABEENTRADA = :CABEENTRADA';
      DM.FDQEntrada.Params.ParamByName('CABEENTRADA').AsString := EditCodigo.Text;
      DM.FDQEntrada.Open;

      // Percorre todos os produtos
      DM.FDQEntrada.First;
      while not DM.FDQEntrada.Eof do
      begin
        // Pesquisa o produto correspondente
        DM.FDQProduto.Close;
        DM.FDQProduto.SQL.Text := 'SELECT * FROM PRODUTO WHERE CODIGO = :CODIGO';
        DM.FDQProduto.Params.ParamByName('CODIGO').AsInteger := DM.FDQEntrada.FieldByName('PRODUTO').AsInteger;
        DM.FDQProduto.Open;
        // Atualiza as informações
        if not DM.FDQProduto.Eof then
        begin
          DM.FDQProduto.Edit;
          DM.FDQProduto.FieldByName('ESTOQUE').AsFloat := DM.FDQProduto.FieldByName('ESTOQUE').AsFloat + DM.FDQEntrada.FieldByName('QUANTIDADE').AsFloat;
          DM.FDQProduto.FieldByName('VALORCOMPRA').AsFloat := DM.FDQEntrada.FieldByName('VALORCOMPRA').AsFloat;
          DM.FDQProduto.Post;
        end;

        DM.FDQEntrada.Next;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmEntradaEstoque.LancaFinanceiro;
var
  ContadorContaPagar : Integer;
begin
  try
    try
      // Irá lancar o valor no ContaPagar

      // Abre a query dos contadores
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;
      DM.FDQContadores.Locate('TABELA','CONTAPAGAR',[]);
      ContadorContaPagar := DM.FDQContadores.FieldByName('VALOR').AsInteger + 1;


      DM.FDQContaPagar.Close;
      DM.FDQContaPagar.SQL.Text := 'SELECT * FROM CONTAPAGAR';
      DM.FDQContaPagar.Open;
      DM.FDQContaPagar.Insert;

      DM.FDQContaPagar.FieldByName('CODIGO').AsInteger := ContadorContaPagar;
      DM.FDQContaPagar.FieldByName('FORNECEDOR').AsInteger := DM.FDQCabeEntrada.FieldByName('FORNECEDOR').AsInteger;
      DM.FDQContaPagar.FieldByName('PARCELA').AsInteger := 1;
      DM.FDQContaPagar.FieldByName('DOCUMENTO').AsString := '4000' + DM.FDQCabeEntrada.FieldByName('CODIGO').AsString;
      DM.FDQContaPagar.FieldByName('EMISSAO').AsDateTime := DateTimePickerDataLancamento.Date;
      DM.FDQContaPagar.FieldByName('VENCIMENTO').AsDateTime := IncMonth(DateTimePickerDataLancamento.Date,1);
      DM.FDQContaPagar.FieldByName('VALOR').AsFloat := DM.FDQCabeEntrada.FieldByName('VALORTOTAL').AsFloat;
      DM.FDQContaPagar.FieldByName('FORMAPAGTO').AsInteger := DM.FDQCabeEntrada.FieldByName('FORMAPAGTO').AsInteger;
      DM.FDQContaPagar.FieldByName('OBSERVACAO').AsString := DM.FDQCabeEntrada.FieldByName('OBSERVACAO').AsString;
      DM.FDQContaPagar.FieldByName('OBSERVACAO1').AsString := DM.FDQCabeEntrada.FieldByName('OBSERVACAO1').AsString;

      DM.FDQContaPagar.Post;

      // Atualiza os contadores
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorContaPagar;
      DM.FDQContadores.Post;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmEntradaEstoque.LimparCampos;
var
  I : Integer;
begin
  try
    try
      for I := 0 to FrmEntradaEstoque.ComponentCount - 1 do
      begin
        if Components[i] is TEdit then
          TEdit(FrmEntradaEstoque.Components[i]).Clear;
        if Components[i] is TCheckBox then
          TCheckBox(FrmEntradaEstoque.Components[i]).Checked := False;
        if Components[i] is TDateTimePicker then
          TDateTimePicker(FrmEntradaEstoque.Components[i]).Date := Date;
        if Components[i] is TComboBox then
          TComboBox(FrmEntradaEstoque.Components[i]).ItemIndex := 0;
        if Components[i] is TButton then
          TButton(FrmEntradaEstoque.Components[i]).Enabled := True;;
      end;

      LabelTotalItens.Caption := '0';
      LabelValorTotal.Caption := '0,00';
      LabelAcao.Caption := 'SOMAR';
      LabelNomeFornecedor.Caption := '';
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmEntradaEstoque.LimparEntrada;
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

procedure TFrmEntradaEstoque.PassaInfoParaMemoryTable;
var
  I: Integer;
  NomeCampo: string;
begin
  // Se tiver informação ele passa para o memorytable Entrada
  for I := 0 to (DM.FDQEntrada.FieldCount - 1) do
  begin
    NomeCampo := DM.FDQEntrada.Fields[I].FieldName;
    if (DM.FDMTEntrada.FindField(NomeCampo) <> nil) then
      DM.FDMTEntrada.FieldByName(NomeCampo).Value := DM.FDQEntrada.FieldByName(NomeCampo).Value;
  end;
end;

procedure TFrmEntradaEstoque.PassaInfoParaMemoryTableCabeEntrada;
var
  I: Integer;
  NomeCampo: string;
begin
  // Se tiver informação ele passa para o memorytable CabeEntrada
  for I := 0 to (DM.FDQCabeEntrada.FieldCount - 1) do
  begin
    NomeCampo := DM.FDQCabeEntrada.Fields[I].FieldName;
    if (DM.FDMTCabeEntrada.FindField(NomeCampo) <> nil) then
      DM.FDMTCabeEntrada.FieldByName(NomeCampo).Value := DM.FDQCabeEntrada.FieldByName(NomeCampo).Value;
  end;
end;

procedure TFrmEntradaEstoque.PassaInfoParaQuery;
var
  I: Integer;
  NomeCampo: string;
begin
  // Passa todos os campos para a query Entrada
  for I := 0 to (DM.FDMTEntrada.FieldCount - 1) do
  begin
    NomeCampo := DM.FDMTEntrada.Fields[I].FieldName;
    if (DM.FDQEntrada.FindField(NomeCampo) <> nil) then
      DM.FDQEntrada.FieldByName(NomeCampo).Value := DM.FDMTEntrada.FieldByName(NomeCampo).Value;
  end;
end;

procedure TFrmEntradaEstoque.PassaInfoParaQueryCabeEntrada;
var
  I: Integer;
  NomeCampo: string;
begin
  // Passa todos os campos para a query CabeEntrada
  for I := 0 to (DM.FDMTCabeEntrada.FieldCount - 1) do
  begin
    NomeCampo := DM.FDMTCabeEntrada.Fields[I].FieldName;
    if (DM.FDQCabeEntrada.FindField(NomeCampo) <> nil) then
      DM.FDQCabeEntrada.FieldByName(NomeCampo).Value := DM.FDMTCabeEntrada.FieldByName(NomeCampo).Value;
  end;
end;

end.
