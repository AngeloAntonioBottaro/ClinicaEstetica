unit UntPagamentoConta;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Grids,
  Vcl.DBGrids,

  Data.DB,

  FireDAC.Stan.Param,

  UntBase,
  UntBibliotecaFuncoes,
  UntComponentesGerais,
  UntDataModule,
  UntConsultaContaPagar,
  UntConsultaFornecedor;

type
  TFrmPagamentoContas = class(TFrmBase)
    GroupBoxTop: TGroupBox;
    Label1: TLabel;
    LabelNomeFornecedor: TLabel;
    DBGridPagamento: TDBGrid;
    EditCodigoFornecedor: TEdit;
    ButtonConsultaFornecedor: TButton;
    ButtonConsultar: TButton;
    RadioButtonVencimento: TRadioButton;
    RadioButtonEmissao: TRadioButton;
    GroupBoxClient: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    LabelTotalContas: TLabel;
    LabelValorTotalContas: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    LabelNumeroDocumento: TLabel;
    LabelValorContaSelecionada: TLabel;
    ButtonRecebimento: TButton;
    EditValorAReceber: TEdit;
    RadioButtonBaixa: TRadioButton;
    RadioButtonAmortizacaoIndividual: TRadioButton;
    RadioButtonAmortizacaoGeral: TRadioButton;
    PanelTroco: TPanel;
    Label7: TLabel;
    LabelTroco: TLabel;
    Label9: TLabel;
    procedure ButtonConsultaFornecedorClick(Sender: TObject);
    procedure ButtonConsultarClick(Sender: TObject);
    procedure ButtonRecebimentoClick(Sender: TObject);
    procedure DBGridPagamentoCellClick(Column: TColumn);
    procedure EditCodigoFornecedorExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RadioButtonAmortizacaoGeralClick(Sender: TObject);
  private
    procedure LimparCampos;
    procedure FecharQuerys;
    procedure CalcularInformacoesGerais;
    procedure InformacoesDocumentoSelecionado;
    procedure Baixa(Valor : Double);
    procedure AmortizacaoIndividual(Valor : Double);
    procedure AmortizacaoGeral(Valor : Double);
    procedure LancaCaixa;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPagamentoContas: TFrmPagamentoContas;

implementation

{$R *.dfm}

{ TFrmPagamentoContas }

procedure TFrmPagamentoContas.AmortizacaoGeral(Valor: Double);
var
  VConta : Double;
begin
  try
    try
      // Enquanto ainda tiver algum valor para amortizar
      while valor > 0 do
      begin
        DM.FDQContaPagar.First;

        VConta := DM.FDQContaPagar.FieldByName('VALOR').AsFloat;

        // Se acabou as contas ele encerra
        if not (VConta > 0) then
          exit;

        // Se o valor é maior ou igual ao valor da conta entao ele vai baixar senao vai amortizar a conta
        if valor >= VConta then
        begin
          Baixa(VConta);
        end
        else if valor < VConta then
        begin
          AmortizacaoIndividual(Valor);
        end;

        Valor := Valor - VConta;

        DM.FDQContaPagar.Refresh;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmPagamentoContas.AmortizacaoIndividual(Valor: Double);
var
  NomeCampo : string;
  I,Codigo : Integer;
begin
  try
    try
      DM.FDQContaPaga.Close;
      DM.FDQContaPaga.SQL.Text := 'SELECT * FROM CONTAPAGA';
      DM.FDQContaPaga.Open;
      DM.FDQContaPaga.Insert;

      for I := 0 to (DM.FDQContaPagar.FieldCount - 1) do
      begin
        NomeCampo := DM.FDQContaPagar.Fields[I].FieldName;
        if (DM.FDQContaPaga.FindField(NomeCampo)) <> nil then
          DM.FDQContaPaga.FieldByName(NomeCampo).Value := DM.FDQContaPagar.FieldByName(NomeCampo).Value;
      end;

      DM.FDQContaPaga.FieldByName('VALORORIGINAL').AsFloat := DM.FDQContaPagar.FieldByName('VALOR').AsFloat;
      DM.FDQContaPaga.FieldByName('VALORRECEBIDO').AsFloat := Valor;
      DM.FDQContaPaga.FieldByName('DATAPAGAMENTO').AsDateTime := Date;

      // CONTADORES
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;

      DM.FDQContadores.Locate('TABELA', 'CONTAPAGA',[]);
      Codigo := DM.FDQContadores.FieldByName('VALOR').AsInteger +1;
      DM.FDQContaPaga.FieldByName('CODIGO').AsInteger := Codigo;

      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := Codigo;
      DM.FDQContadores.Post;

      // Arruma o novo valor do contaPagar
      DM.FDQContaPagar.Edit;
      DM.FDQContaPagar.FieldByName('PARCELA').AsString := DM.FDQContaPaga.FieldByName('PARCELA').AsString + 'A';
      DM.FDQContaPagar.FieldByName('VALOR').AsFloat :=  DM.FDQContaPaga.FieldByName('VALORORIGINAL').AsFloat - DM.FDQContaPaga.FieldByName('VALORRECEBIDO').AsFloat;

      LancaCaixa;

      // Salva o contarecebida e o contaPagar
      DM.FDQContaPaga.Post;
      DM.FDQContaPagar.Post;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmPagamentoContas.Baixa(Valor: Double);
var
  NomeCampo : string;
  I,ContadorContaPaga : Integer;
begin
  try
    try
      DM.FDQContaPaga.Close;
      DM.FDQContaPaga.SQL.Text := 'SELECT * FROM CONTAPAGA';
      DM.FDQContaPaga.Open;
      DM.FDQContaPaga.Insert;

      for I := 0 to (DM.FDQContaPagar.FieldCount - 1) do
      begin
        NomeCampo := DM.FDQContaPagar.Fields[I].FieldName;
        if (DM.FDQContaPaga.FindField(NomeCampo)) <> nil then
          DM.FDQContaPaga.FieldByName(NomeCampo).Value := DM.FDQContaPagar.FieldByName(NomeCampo).Value;
      end;

      DM.FDQContaPaga.FieldByName('VALORORIGINAL').AsFloat := DM.FDQContaPagar.FieldByName('VALOR').AsFloat;
      DM.FDQContaPaga.FieldByName('VALORRECEBIDO').AsFloat := Valor;
      DM.FDQContaPaga.FieldByName('DATAPAGAMENTO').AsDateTime := Date;

      // CONTADORES
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;

      // Pega o valor do id do contapaga
      DM.FDQContadores.Locate('TABELA', 'CONTARECEBIDA',[]);
      ContadorContaPaga := DM.FDQContadores.FieldByName('VALOR').AsInteger +1;
      DM.FDQContaPaga.FieldByName('CODIGO').AsInteger := ContadorContaPaga;

      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorContaPaga;
      DM.FDQContadores.Post;

      LancaCaixa;

      // Salva o contapaga e exclui o contapagar
      DM.FDQContaPaga.Post;
      DM.FDQContaPagar.Delete;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmPagamentoContas.ButtonConsultaFornecedorClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmConsultaFornecedor.ShowModal;
    finally
      if not DM.FDQFornecedor.Eof then
      begin
        LabelNomeFornecedor.Caption := DM.FDQFornecedor.FieldByName('NOMEFANTASIA').AsString;
        EditCodigoFornecedor.Text := DM.FDQFornecedor.FieldByName('CODIGO').AsString;
      end;

      EditCodigoFornecedor.SetFocus;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmPagamentoContas.ButtonConsultarClick(Sender: TObject);
begin
  inherited;
  try
    try
      // Verifica o Cliente
      if EditCodigoFornecedor.Text = EmptyStr then
      begin
        Mensagem(2,'Fornecedor Obrigatorio');
        EditCodigoFornecedor.SetFocus;
        Exit;
      end;

      DM.FDQContaPagar.close;

      DM.FDQContaPagar.SQL.Text := 'SELECT * FROM CONTAPAGAR WHERE FORNECEDOR = :FORNECEDOR ';

      if RadioButtonEmissao.Checked then
      begin
        DM.FDQContaPagar.SQL.Text := DM.FDQContaPagar.SQL.Text + ' ORDER BY EMISSAO, DOCUMENTO, VENCIMENTO, PARCELA';
      end
      else if RadioButtonVencimento.Checked then
      begin
        DM.FDQContaPagar.SQL.Text := DM.FDQContaPagar.SQL.Text + ' ORDER BY VENCIMENTO, DOCUMENTO, PARCELA';
      end;

      DM.FDQContaPagar.Params.ParamByName('FORNECEDOR').AsString := EditCodigoFornecedor.Text;

      DM.FDQContaPagar.Open;

      CalcularInformacoesGerais;
      DM.FDQContaPagar.First;
      InformacoesDocumentoSelecionado;

      DBGridPagamento.Refresh;
      DBGridPagamento.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmPagamentoContas.ButtonRecebimentoClick(Sender: TObject);
var
  ValorReceber, ValorConta, Troco : Double;
begin
  inherited;
  Troco := 0;
  try
    try
      if EditValorAReceber.Text = EmptyStr then
        Exit;

      // Verifica se foi pesquisado alguma conta
      if DM.FDQContaPagar.Eof then
      begin
        Mensagem(2,'É necessario consultar uma conta para fazer o pagamento');
        ButtonConsultar.SetFocus;
        Exit;
      end;

      // Pega os valores e formata eles
      ValorReceber := StrToFloat(EditValorAReceber.Text);
      ValorReceber := StrToFloat(FormatFloat('#0.00',ValorReceber));
      ValorConta := DM.FDQContaPagar.FieldByName('VALOR').AsFloat;
      ValorConta := StrToFloat(FormatFloat('#0.00',ValorConta));

      // Confirma para fazer o recebimento
      if Mensagem(4,'Deseja pagar a conta selecionada?') then
      begin
        // Caso for Sim

        // Verificar o tipo de baixa
        if RadioButtonBaixa.Checked then
        begin
          // Verifica se o Valor é maior que o da conta
          if ValorReceber > ValorConta then
          begin
            if DM.FDQParametros.FieldByName('CALCULARTROCORECEBIMENTO').AsBoolean then
            begin
              // Calcula o troco
              Troco := ValorReceber - ValorConta;
              LabelTroco.Caption := FloatToStr(Troco);

              // Vai passar so o valor total, sem o troco
              ValorReceber := ValorReceber - Troco;

              // Faz a Baixa
              Baixa(ValorReceber);
            end
            else
            begin
              Mensagem(2,'Valor pago nao pode ser maior que o valor da conta');
              EditValorAReceber.SetFocus;
              Exit;
            end;
          end
          else
          begin
            // Faz a Baixa
            Baixa(ValorReceber);
          end;
        end
        else if RadioButtonAmortizacaoIndividual.Checked then
        begin
          // Verifica se o valor é maior ou igual que o da conta
          if ValorReceber >= ValorConta then
          begin
            if DM.FDQParametros.FieldByName('CALCULARTROCORECEBIMENTO').AsBoolean then
            begin
              // Calcula o troco
              Troco := ValorReceber - ValorConta;
              LabelTroco.Caption := FloatToStr(Troco);

              // Vai passar so o valor total, sem o troco
              ValorReceber := ValorReceber - Troco;

              // Faz a Amortizaçao
              AmortizacaoIndividual(ValorReceber);
            end
            else
            begin
              Mensagem(2,'Para amortização individual o valor deve ser menor que o valor da conta');
              EditValorAReceber.SetFocus;
              Exit;
            end;
          end;

          // Faz a Amortizaçao
          AmortizacaoIndividual(ValorReceber);
        end
        else if RadioButtonAmortizacaoGeral.Checked then
        begin
          if DM.FDQParametros.FieldByName('CALCULARTROCORECEBIMENTO').AsBoolean then
          begin
            // Calcula se tem troco
            Troco := ValorReceber - StrToFloat(RemoveInvalid(ConstArrayNumeroMonetario,LabelValorTotalContas.Caption));

            LabelTroco.Caption := FloatToStr(Troco);
            PanelTroco.Visible := True;

            // Vai passar so o valor total, sem o troco
            ValorReceber := ValorReceber - Troco;
          end;

          AmortizacaoGeral(ValorReceber);
        end;

        Mensagem(1,'Conta(s) paga(s) com sucesso');
      end
      else
      begin
        // Caso for nao
      end;

      if Troco > 0 then
      begin
        PanelTroco.Visible := True;
      end;

      // Atualiza a consulta
      EditValorAReceber.Text := EmptyStr;
      ButtonConsultarClick(Sender);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmPagamentoContas.CalcularInformacoesGerais;
var
  ValorTotal : Double;
  TotalContas : Integer;
begin
  try
    try
      ValorTotal := 0;
      TotalContas := 0;

      // Calcula quantas contas tem e o valor de todas elas juntas
      if not (DM.FDQContaPagar.Eof) then
      begin
        DM.FDQContaPagar.First;
        while not (DM.FDQContaPagar.Eof) do
        begin
          ValorTotal := ValorTotal + DM.FDQContaPagar.FieldByName('VALOR').AsFloat;
          TotalContas := TotalContas + 1;
          DM.FDQContaPagar.Next;
        end;
      end;

      LabelTotalContas.Caption := IntToStr(TotalContas);
      LabelValorTotalContas.Caption := 'R$ ' + FloatToStr(ValorTotal);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmPagamentoContas.DBGridPagamentoCellClick(Column: TColumn);
begin
  inherited;
  try
    try
      // Pega as informaçoes do documento selecionado
      InformacoesDocumentoSelecionado;

      PanelTroco.Visible := False;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmPagamentoContas.EditCodigoFornecedorExit(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeFornecedor.Caption := '';

      // Se tiver colocado algum codigo ele pesquisa o cliente
      if not (EditCodigoFornecedor.Text = EmptyStr) then
      begin
        DM.FDQFornecedor.Close;
        DM.FDQFornecedor.SQL.Text := 'SELECT * FROM FORNECEDOR WHERE CODIGO = :CODIGO';
        DM.FDQFornecedor.Params.ParamByName('CODIGO').AsString := EditCodigoFornecedor.Text;
        DM.FDQFornecedor.Open;

        if DM.FDQFornecedor.Eof then
        begin
          Mensagem(2,'Fornecedor Não Encontrado');
          EditCodigoFornecedor.Clear;
          ButtonConsultaFornecedor.SetFocus;
          Exit;
        end
        else
        begin
          LabelNomeFornecedor.Caption := DM.FDQFornecedor.FieldByName('NOMEFANTASIA').AsString;
          EditCodigoFornecedor.Text := DM.FDQFornecedor.FieldByName('CODIGO').AsString;
          ButtonConsultar.SetFocus;
        end;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmPagamentoContas.FecharQuerys;
begin
  try
    try
      DM.FDQContaPagar.Close;
      DM.FDQCaixa.Close;
      DM.FDQContadores.Close;
      DM.FDQContaPaga.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmPagamentoContas.FormClose(Sender: TObject;
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

procedure TFrmPagamentoContas.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      FecharQuerys;
      LimparCampos;
      EditCodigoFornecedor.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmPagamentoContas.InformacoesDocumentoSelecionado;
begin
  try
    try
      if DM.FDQContaPagar.Eof then
      begin
        LabelNumeroDocumento.Caption := '-';
        LabelValorContaSelecionada.Caption := 'R$ 0,00';
        EditValorAReceber.Clear;

      end;

      LabelNumeroDocumento.Caption := DM.FDQContaPagar.FieldByName('DOCUMENTO').AsString;
      LabelValorContaSelecionada.Caption := 'R$ ' + DM.FDQContaPagar.FieldByName('VALOR').AsString;
      EditValorAReceber.Text := DM.FDQContaPagar.FieldByName('VALOR').AsString;
      RadioButtonBaixa.Checked := True;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmPagamentoContas.LancaCaixa;
var
  ContadorCaixa : Integer;
begin
  try
    try
      // Pega o valor do id do Caixa
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;
      DM.FDQContadores.Locate('TABELA','CAIXA',[]);
      ContadorCaixa := DM.FDQContadores.FieldByName('VALOR').AsInteger + 1;

      DM.FDQCaixa.Close;
      DM.FDQCaixa.Open;
      DM.FDQCaixa.Insert;

      DM.FDQCaixa.FieldByName('CODIGO').AsInteger := ContadorCaixa;
      DM.FDQCaixa.FieldByName('DATA').AsDateTime := DM.FDQContaPaga.FieldByName('DATAPAGAMENTO').AsDateTime;
      DM.FDQCaixa.FieldByName('HORA').AsDateTime := Time;
      DM.FDQCaixa.FieldByName('FORNECEDOR').AsInteger := DM.FDQContaPaga.FieldByName('FORNECEDOR').AsInteger;
      DM.FDQCaixa.FieldByName('HISTORICO').AsString := 'PAGAMENTO DA CONTA ' + DM.FDQContaPaga.FieldByName('DOCUMENTO').AsString +'/'+ DM.FDQContaPaga.FieldByName('PARCELA').AsString;
      DM.FDQCaixa.FieldByName('DOCUMENTO').AsString := DM.FDQContaPaga.FieldByName('DOCUMENTO').AsString;
      DM.FDQCaixa.FieldByName('DEBITO').AsFloat := DM.FDQContaPaga.FieldByName('VALORRECEBIDO').AsFloat;
      DM.FDQCaixa.FieldByName('FORMAPAGTO').AsInteger := DM.FDQContaPaga.FieldByName('FORMAPAGTO').AsInteger;
      DM.FDQCaixa.FieldByName('OBSERVACAO').AsString := DM.FDQContaPaga.FieldByName('OBSERVACAO').AsString;
      DM.FDQCaixa.FieldByName('OBSERVACAO1').AsString := DM.FDQContaPaga.FieldByName('OBSERVACAO1').AsString;
      DM.FDQCaixa.FieldByName('DATALANCAMENTO').AsDateTime := Now;

      DM.FDQCaixa.Post;
      DM.FDQCaixa.Close;

      // Atualiza os contadores
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorCaixa;
      DM.FDQContadores.Post;
      DM.FDQContadores.Close;

      // coloca a referencia do lancamento do caixa
      DM.FDQContaPaga.FieldByName('CAIXA').AsInteger := ContadorCaixa;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmPagamentoContas.LimparCampos;
var
  I : Integer;
begin
  try
    try
      for I := 0 to FrmPagamentoContas.ComponentCount -1 do
      begin
         if Components[i] is TEdit then
          TEdit(FrmPagamentoContas.Components[i]).Clear;
        if Components[i] is TComboBox then
          TComboBox(FrmPagamentoContas.Components[i]).ItemIndex := 0;
      end;

      LabelNomeFornecedor.Caption := '';
      RadioButtonVencimento.Checked := True;
      RadioButtonBaixa.Checked := True;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmPagamentoContas.RadioButtonAmortizacaoGeralClick(Sender: TObject);
begin
  inherited;
  try
    try
      EditValorAReceber.Clear;
      EditValorAReceber.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
