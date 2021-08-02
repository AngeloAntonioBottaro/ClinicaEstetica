unit UntRecebimentoConta;

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
  Vcl.StdCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.ExtCtrls,

  Data.DB,

  FireDAC.Stan.Param,

  UntBase,
  UntBibliotecaFuncoes,
  UntComponentesGerais,
  UntConsultaCliente,
  UntDataModule;

type
  TFrmRecebimentoConta = class(TFrmBase)
    GroupBoxTop: TGroupBox;
    Label1: TLabel;
    LabelNomeCliente: TLabel;
    DBGridRecebimento: TDBGrid;
    EditCodigoCliente: TEdit;
    ButtonConsultaCliente: TButton;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ButtonConsultaClienteClick(Sender: TObject);
    procedure ButtonConsultarClick(Sender: TObject);
    procedure ButtonRecebimentoClick(Sender: TObject);
    procedure DBGridRecebimentoCellClick(Column: TColumn);
    procedure EditCodigoClienteExit(Sender: TObject);
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
  FrmRecebimentoConta: TFrmRecebimentoConta;

implementation

{$R *.dfm}

procedure TFrmRecebimentoConta.AmortizacaoGeral(Valor: Double);
var
  VConta : Double;
begin
  try
    try
      // Enquanto ainda tiver algum valor para amortizar
      while valor > 0 do
      begin
        DM.FDQContaReceber.First;

        VConta := DM.FDQContaReceber.FieldByName('VALOR').AsFloat;

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

        DM.FDQContaReceber.Refresh;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRecebimentoConta.AmortizacaoIndividual(Valor: Double);
var
  NomeCampo : string;
  I,Codigo : Integer;
begin
  try
    try
      DM.FDQContaRecebida.Close;
      DM.FDQContaRecebida.SQL.Text := 'SELECT * FROM CONTARECEBIDA';
      DM.FDQContaRecebida.Open;
      DM.FDQContaRecebida.Insert;

      for I := 0 to (DM.FDQContaReceber.FieldCount - 1) do
      begin
        NomeCampo := DM.FDQContaReceber.Fields[I].FieldName;
        if (DM.FDQContaRecebida.FindField(NomeCampo)) <> nil then
          DM.FDQContaRecebida.FieldByName(NomeCampo).Value := DM.FDQContaReceber.FieldByName(NomeCampo).Value;
      end;

      DM.FDQContaRecebida.FieldByName('VALORORIGINAL').AsFloat := DM.FDQContaReceber.FieldByName('VALOR').AsFloat;
      DM.FDQContaRecebida.FieldByName('VALORRECEBIDO').AsFloat := Valor;
      DM.FDQContaRecebida.FieldByName('DATAPAGAMENTO').AsDateTime := Date;

      // CONTADORES
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;

      DM.FDQContadores.Locate('TABELA', 'CONTARECEBIDA',[]);
      Codigo := DM.FDQContadores.FieldByName('VALOR').AsInteger +1;
      DM.FDQContaRecebida.FieldByName('CODIGO').AsInteger := Codigo;

      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := Codigo;
      DM.FDQContadores.Post;

      // Arruma o novo valor do contaReceber
      DM.FDQContaReceber.Edit;
      DM.FDQContaReceber.FieldByName('PARCELA').AsString := DM.FDQContaRecebida.FieldByName('PARCELA').AsString + 'A';
      DM.FDQContaReceber.FieldByName('VALOR').AsFloat :=  DM.FDQContaRecebida.FieldByName('VALORORIGINAL').AsFloat - DM.FDQContaRecebida.FieldByName('VALORRECEBIDO').AsFloat;

      LancaCaixa;

      // Salva o contarecebida e o contareceber
      DM.FDQContaRecebida.Post;
      DM.FDQContaReceber.Post;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRecebimentoConta.Baixa(Valor: Double);
var
  NomeCampo : string;
  I,ContadorContaRecebida : Integer;
begin
  try
    try
      DM.FDQContaRecebida.Close;
      DM.FDQContaRecebida.SQL.Text := 'SELECT * FROM CONTARECEBIDA';
      DM.FDQContaRecebida.Open;
      DM.FDQContaRecebida.Insert;

      for I := 0 to (DM.FDQContaReceber.FieldCount - 1) do
      begin
        NomeCampo := DM.FDQContaReceber.Fields[I].FieldName;
        if (DM.FDQContaRecebida.FindField(NomeCampo)) <> nil then
          DM.FDQContaRecebida.FieldByName(NomeCampo).Value := DM.FDQContaReceber.FieldByName(NomeCampo).Value;
      end;

      DM.FDQContaRecebida.FieldByName('VALORORIGINAL').AsFloat := DM.FDQContaReceber.FieldByName('VALOR').AsFloat;
      DM.FDQContaRecebida.FieldByName('VALORRECEBIDO').AsFloat := Valor;
      DM.FDQContaRecebida.FieldByName('DATAPAGAMENTO').AsDateTime := Date;

      // CONTADORES
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;

      // Pega o valor do id do CONTARECEBIDA
      DM.FDQContadores.Locate('TABELA', 'CONTARECEBIDA',[]);
      ContadorContaRecebida := DM.FDQContadores.FieldByName('VALOR').AsInteger +1;
      DM.FDQContaRecebida.FieldByName('CODIGO').AsInteger := ContadorContaRecebida;

      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorContaRecebida;
      DM.FDQContadores.Post;

      LancaCaixa;

      // Salva o contarecebida e exclui o contareceber
      DM.FDQContaRecebida.Post;
      DM.FDQContaReceber.Delete;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRecebimentoConta.ButtonConsultaClienteClick(Sender: TObject);
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

procedure TFrmRecebimentoConta.ButtonConsultarClick(Sender: TObject);
begin
  inherited;
  try
    try
      // Verifica o Cliente
      if EditCodigoCliente.Text = EmptyStr then
      begin
        Mensagem(2,'Cliente Obrigatorio');
        EditCodigoCliente.SetFocus;
        Exit;
      end;

      DM.FDQContaReceber.close;

      DM.FDQContaReceber.SQL.Text := 'SELECT * FROM CONTARECEBER WHERE CLIENTE = :CLIENTE ';

      if RadioButtonEmissao.Checked then
      begin
        DM.FDQContaReceber.SQL.Text := DM.FDQContaReceber.SQL.Text + ' ORDER BY EMISSAO, DOCUMENTO, VENCIMENTO, PARCELA';
      end
      else if RadioButtonVencimento.Checked then
      begin
        DM.FDQContaReceber.SQL.Text := DM.FDQContaReceber.SQL.Text + ' ORDER BY VENCIMENTO, DOCUMENTO, PARCELA';
      end;

      DM.FDQContaReceber.Params.ParamByName('CLIENTE').AsString := EditCodigoCliente.Text;

      DM.FDQContaReceber.Open;

      CalcularInformacoesGerais;
      DM.FDQContaReceber.First;
      InformacoesDocumentoSelecionado;

      DBGridRecebimento.Refresh;
      DBGridRecebimento.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRecebimentoConta.ButtonRecebimentoClick(Sender: TObject);
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
      if DM.FDQContaReceber.Eof then
      begin
        Mensagem(2,'É necessario consultar uma conta para fazer o recebimento');
        ButtonConsultar.SetFocus;
        Exit;
      end;

      // Pega os valores e formata eles
      ValorReceber := StrToFloat(EditValorAReceber.Text);
      ValorReceber := StrToFloat(FormatFloat('#0.00',ValorReceber));
      ValorConta := DM.FDQContaReceber.FieldByName('VALOR').AsFloat;
      ValorConta := StrToFloat(FormatFloat('#0.00',ValorConta));

      // Confirma para fazer o recebimento
      if Mensagem(4,'Deseja receber a conta selecionada?') then
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
              Mensagem(2,'Valor recebido nao pode ser maior que o valor da conta');
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

        Mensagem(1,'Conta(s) recebida(s) com sucesso');
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

procedure TFrmRecebimentoConta.CalcularInformacoesGerais;
var
  ValorTotal : Double;
  TotalContas : Integer;
begin
  try
    try
      ValorTotal := 0;
      TotalContas := 0;

      // Calcula quantas contas tem e o valor de todas elas juntas
      if not (DM.FDQContaReceber.Eof) then
      begin
        DM.FDQContaReceber.First;
        while not (DM.FDQContaReceber.Eof) do
        begin
          ValorTotal := ValorTotal + DM.FDQContaReceber.FieldByName('VALOR').AsFloat;
          TotalContas := TotalContas + 1;
          DM.FDQContaReceber.Next;
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

procedure TFrmRecebimentoConta.DBGridRecebimentoCellClick(Column: TColumn);
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

procedure TFrmRecebimentoConta.EditCodigoClienteExit(Sender: TObject);
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
          Mensagem(1,'Cliente Não Encontrado');
          EditCodigoCliente.Clear;
          ButtonConsultaCliente.SetFocus;
          Exit;
        end
        else
        begin
          LabelNomeCliente.Caption := DM.FDQCliente.FieldByName('NOME').AsString;
          EditCodigoCliente.Text := DM.FDQCliente.FieldByName('CODIGO').AsString;
          ButtonConsultar.SetFocus;
        end;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRecebimentoConta.FecharQuerys;
begin
  try
    try
      DM.FDQContaReceber.Close;
      DM.FDQCaixa.Close;
      DM.FDQContadores.Close;
      DM.FDQContaRecebida.Close;
      DM.FDQCliente.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRecebimentoConta.FormClose(Sender: TObject;
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

procedure TFrmRecebimentoConta.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      FecharQuerys;
      LimparCampos;
      EditCodigoCliente.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRecebimentoConta.InformacoesDocumentoSelecionado;
begin
  try
    try
      if DM.FDQContaReceber.Eof then
      begin
        LabelNumeroDocumento.Caption := '-';
        LabelValorContaSelecionada.Caption := 'R$ 0,00';
        EditValorAReceber.Clear;

      end;

      LabelNumeroDocumento.Caption := DM.FDQContaReceber.FieldByName('DOCUMENTO').AsString;
      LabelValorContaSelecionada.Caption := 'R$ ' + DM.FDQContaReceber.FieldByName('VALOR').AsString;
      EditValorAReceber.Text := DM.FDQContaReceber.FieldByName('VALOR').AsString;
      RadioButtonBaixa.Checked := True;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRecebimentoConta.LancaCaixa;
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
      DM.FDQCaixa.FieldByName('DATA').AsDateTime := DM.FDQContaRecebida.FieldByName('DATAPAGAMENTO').AsDateTime;
      DM.FDQCaixa.FieldByName('HORA').AsDateTime := Time;
      DM.FDQCaixa.FieldByName('CLIENTE').AsInteger := DM.FDQContaRecebida.FieldByName('CLIENTE').AsInteger;
      DM.FDQCaixa.FieldByName('HISTORICO').AsString := 'RECEBIMENTO DA CONTA ' + DM.FDQContaRecebida.FieldByName('DOCUMENTO').AsString +'/'+ DM.FDQContaRecebida.FieldByName('PARCELA').AsString;
      DM.FDQCaixa.FieldByName('DOCUMENTO').AsString := DM.FDQContaRecebida.FieldByName('DOCUMENTO').AsString;
      DM.FDQCaixa.FieldByName('CREDITO').AsFloat := DM.FDQContaRecebida.FieldByName('VALORRECEBIDO').AsFloat;
      DM.FDQCaixa.FieldByName('FORMAPAGTO').AsInteger := DM.FDQContaRecebida.FieldByName('FORMAPAGTO').AsInteger;
      DM.FDQCaixa.FieldByName('OBSERVACAO').AsString := DM.FDQContaRecebida.FieldByName('OBSERVACAO').AsString;
      DM.FDQCaixa.FieldByName('OBSERVACAO1').AsString := DM.FDQContaRecebida.FieldByName('OBSERVACAO1').AsString;
      DM.FDQCaixa.FieldByName('DATALANCAMENTO').AsDateTime := Now;

      DM.FDQCaixa.Post;
      DM.FDQCaixa.Close;

      // Atualiza os contadores
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorCaixa;
      DM.FDQContadores.Post;
      DM.FDQContadores.Close;

      // coloca a referencia do lancamento do caixa
      DM.FDQContaRecebida.FieldByName('CAIXA').AsInteger := ContadorCaixa;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRecebimentoConta.LimparCampos;
var
  I : Integer;
begin
  try
    try
      for I := 0 to FrmRecebimentoConta.ComponentCount -1 do
      begin
         if Components[i] is TEdit then
          TEdit(FrmRecebimentoConta.Components[i]).Clear;
        if Components[i] is TComboBox then
          TComboBox(FrmRecebimentoConta.Components[i]).ItemIndex := 0;
      end;

      LabelNomeCliente.Caption := '';
      RadioButtonVencimento.Checked := True;
      RadioButtonBaixa.Checked := True;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRecebimentoConta.RadioButtonAmortizacaoGeralClick(
  Sender: TObject);
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
