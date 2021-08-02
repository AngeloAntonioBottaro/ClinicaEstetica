unit UntParcelamento;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,

  FireDAC.Stan.Param,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ComCtrls,

  Data.DB,

  UntBase,
  UntComponentesGerais,
  UntDataModule,
  UntPrintModule;

type
  TFrmParcelamento = class(TFrmBase)
    GroupBoxClient: TGroupBox;
    GroupBoxTop: TGroupBox;
    GroupBoxButtons: TGroupBox;
    ButtonLancarParcelamento: TButton;
    ButtonCancelarParcelamento: TButton;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    ComboBox1: TComboBox;
    DateTimePicker2: TDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Label6: TLabel;
    ComboBox2: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DateTimePicker3: TDateTimePicker;
    Edit3: TEdit;
    ComboBox3: TComboBox;
    Label10: TLabel;
    DateTimePicker4: TDateTimePicker;
    Edit4: TEdit;
    ComboBox4: TComboBox;
    Label11: TLabel;
    DateTimePicker5: TDateTimePicker;
    Edit5: TEdit;
    ComboBox5: TComboBox;
    Label12: TLabel;
    DateTimePicker6: TDateTimePicker;
    Edit6: TEdit;
    ComboBox6: TComboBox;
    Label13: TLabel;
    DateTimePicker7: TDateTimePicker;
    Edit7: TEdit;
    ComboBox7: TComboBox;
    Label14: TLabel;
    DateTimePicker8: TDateTimePicker;
    Edit8: TEdit;
    ComboBox8: TComboBox;
    Label15: TLabel;
    DateTimePicker9: TDateTimePicker;
    Edit9: TEdit;
    ComboBox9: TComboBox;
    Label16: TLabel;
    DateTimePicker10: TDateTimePicker;
    Edit10: TEdit;
    ComboBox10: TComboBox;
    Label17: TLabel;
    DateTimePicker11: TDateTimePicker;
    Edit11: TEdit;
    ComboBox11: TComboBox;
    Label18: TLabel;
    DateTimePicker12: TDateTimePicker;
    Edit12: TEdit;
    ComboBox12: TComboBox;
    Label35: TLabel;
    LabelValorTotal: TLabel;
    Label20: TLabel;
    EditParcelas: TEdit;
    Label21: TLabel;
    EditValorEntrada: TEdit;
    Label19: TLabel;
    LabelValorPorParcela: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    LabelNumeroDocumento: TLabel;
    Label24: TLabel;
    LabelNomeCliente: TLabel;
    LabelStatusParcelamento: TLabel;
    LabelCodigoCliente: TLabel;
    LabelObservacao: TLabel;
    LabelObservacao1: TLabel;
    ComboBoxFormaPagtoEntrada: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditParcelasExit(Sender: TObject);
    procedure EditValorEntradaExit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure Edit7Exit(Sender: TObject);
    procedure Edit8Exit(Sender: TObject);
    procedure Edit9Exit(Sender: TObject);
    procedure Edit10Exit(Sender: TObject);
    procedure Edit11Exit(Sender: TObject);
    procedure Edit12Exit(Sender: TObject);
    procedure ButtonCancelarParcelamentoClick(Sender: TObject);
    procedure ButtonLancarParcelamentoClick(Sender: TObject);
  private
    procedure LimparCampos;
    procedure LimparParcelas;
    procedure CalcularParcelas;
    procedure AtualizarValorParcelas(Index : Integer);
    procedure ValidarValorParcelas;
    procedure ImprimirCarne;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmParcelamento: TFrmParcelamento;

implementation

{$R *.dfm}

uses UntBibliotecaFuncoes;

procedure TFrmParcelamento.AtualizarValorParcelas(Index : Integer);
Var
  Componente : TComponent;
  I,J, ParcelasRestantes : Integer;
  ValorAtribuido, ValorRestante, NovoValorParcelas : Double;
begin
  try
    try
      // Se mudar o valor da ultima parcela ele nao faz nada
      if Index = StrToInt(EditParcelas.Text) then
        Exit;

      // Arruma o campo de origem com a formataçao correta
      Componente := FindComponent('Edit' + IntToStr(Index));
      TEdit(Componente).Text := 'R$ ' + RemoveInvalid(ConstArrayNumeroMonetario,TEdit(Componente).Text);

      // Passar todos os campos seguintes ate o ultimo liberado ajustando o valor
      Index := Index +1;

      for I := Index to StrToInt(EditParcelas.Text) do
      begin
         ValorAtribuido := 0;
        // Soma a entrada
        if not (EditValorEntrada.Text = EmptyStr) then
          ValorAtribuido := StrToFloat(EditValorEntrada.Text);

        // Soma as parcelas
        for J := 1 to (I-1) do
        begin
          Componente := FindComponent('Edit' + IntToStr(J));
          ValorAtribuido := ValorAtribuido + StrToFloat(RemoveInvalid(ConstArrayNumeroMonetario,TEdit(Componente).Text));
        end;

        // Calcula o novo valor da parcela
        ValorRestante := StrToFloat(LabelValorTotal.Caption) - ValorAtribuido;
        ParcelasRestantes := StrToInt(EditParcelas.Text) - (I-1);
        NovoValorParcelas := ValorRestante / ParcelasRestantes;

        // Coloca no campo o valor calculado
        Componente := FindComponent('Edit' + IntToStr(I));
        TEdit(Componente).Visible := True;
        TEdit(Componente).Clear;
        TEdit(Componente).Text := FloatToStrF(NovoValorParcelas,ffCurrency,10,2);
      end;

      ValidarValorParcelas;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmParcelamento.ButtonCancelarParcelamentoClick(Sender: TObject);
begin
  inherited;
  try
    try
      LimparCampos;
      LabelStatusParcelamento.Caption := 'CANCELADO';
      FrmParcelamento.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmParcelamento.ButtonLancarParcelamentoClick(Sender: TObject);
Var
  I, IdContaReceber, IdCaixa : Integer;
  ComponenteEdit, ComponenteDateTime, ComponenteComboBox : TComponent;
begin
  inherited;
  try
    try
      // Lanca Entrada no Caixa

      // Formapagto
      DM.FDQFormaPagto.Close;
      DM.FDQFormaPagto.SQL.Text := 'SELECT * FROM FORMAPAGTO';
      DM.FDQFormaPagto.Open;

      if not (EditValorEntrada.Text = EmptyStr) then
      begin
        // Pega o valor do id do Caixa
        DM.FDQContadores.Close;
        DM.FDQContadores.SQL.Text := 'SELECT * FROM CONTADORES';
        DM.FDQContadores.Open;
        DM.FDQContadores.Locate('TABELA','CAIXA',[]);
        IdCaixa := DM.FDQContadores.FieldByName('VALOR').AsInteger + 1;

        DM.FDQCaixa.Close;
        DM.FDQCaixa.Open;
        DM.FDQCaixa.Insert;

        DM.FDQCaixa.FieldByName('CODIGO').AsInteger := IdCaixa;
        DM.FDQCaixa.FieldByName('DATA').AsDateTime := Date;
        DM.FDQCaixa.FieldByName('HORA').AsDateTime := Time;
        DM.FDQCaixa.FieldByName('CLIENTE').AsString := LabelCodigoCliente.Caption;
        DM.FDQCaixa.FieldByName('HISTORICO').AsString := 'LANÇAMENTO DE ENTRADA DO PARCELAMENTO ' + LabelNumeroDocumento.Caption + '/ENT';
        DM.FDQCaixa.FieldByName('DOCUMENTO').AsString := LabelNumeroDocumento.Caption;
        DM.FDQCaixa.FieldByName('DATALANCAMENTO').AsDateTime := Now;
        DM.FDQCaixa.FieldByName('CREDITO').AsFloat := StrToFloat(RemoveInvalid(ConstArrayNumeroMonetario,EditValorEntrada.Text));

        DM.FDQFormaPagto.Locate('DESCRICAO', ComboBoxFormaPagtoEntrada.Text,[]);
        DM.FDQCaixa.FieldByName('FORMAPAGTO').AsInteger := DM.FDQFormaPagto.FieldByName('CODIGO').AsInteger;

        DM.FDQCaixa.FieldByName('OBSERVACAO').AsString := LabelObservacao.Caption;
        DM.FDQCaixa.FieldByName('OBSERVACAO1').AsString := LabelObservacao1.Caption;

        DM.FDQCaixa.Post;
        DM.FDQCaixa.Close;

        // Atualiza os contadores
        DM.FDQContadores.Edit;
        DM.FDQContadores.FieldByName('VALOR').AsInteger := IdCaixa;
        DM.FDQContadores.Post;
        DM.FDQContadores.Close;
      end;

      // Lanca as Parcelas
      // contador
      DM.FDQContadores.Close;
      DM.FDQContadores.SQL.Text := 'SELECT * FROM CONTADORES';
      DM.FDQContadores.Open;
      DM.FDQContadores.Locate('TABELA', 'CONTARECEBER',[]);

      IdContaReceber := DM.FDQContadores.FieldByName('VALOR').AsInteger;

      // ContaReceber
      DM.FDQContaReceber.Close;
      DM.FDQContaReceber.SQL.Text := 'SELECT * FROM CONTARECEBER';
      DM.FDQContaReceber.Open;

      for I := 1 to StrToInt(EditParcelas.Text) do
      begin
        IdContaReceber := IdContaReceber +1;

        ComponenteDateTime := FindComponent('DateTimePicker' + IntToStr(I));
        ComponenteEdit := FindComponent('Edit' + IntToStr(I));
        ComponenteComboBox := FindComponent('ComboBox' + IntToStr(I));

        DM.FDQContaReceber.Insert;

        DM.FDQContaReceber.FieldByName('CODIGO').AsInteger := IdContaReceber;
        DM.FDQContaReceber.FieldByName('CLIENTE').AsString := LabelCodigoCliente.Caption;
        DM.FDQContaReceber.FieldByName('PARCELA').AsString := IntToStr(I);
        DM.FDQContaReceber.FieldByName('DOCUMENTO').AsString := LabelNumeroDocumento.Caption;
        DM.FDQContaReceber.FieldByName('EMISSAO').AsDateTime := Date;
        DM.FDQContaReceber.FieldByName('VENCIMENTO').AsDateTime := TDateTimePicker(ComponenteDateTime).Date;
        DM.FDQContaReceber.FieldByName('VALOR').AsFloat := StrToFloat(RemoveInvalid(ConstArrayNumeroMonetario,TEdit(ComponenteEdit).Text));

        DM.FDQFormaPagto.Locate('DESCRICAO', TComboBox(ComponenteComboBox).Text,[]);
        DM.FDQContaReceber.FieldByName('FORMAPAGTO').AsInteger := DM.FDQFormaPagto.FieldByName('CODIGO').AsInteger;

        DM.FDQContaReceber.FieldByName('OBSERVACAO').AsString := LabelObservacao.Caption;
        DM.FDQContaReceber.FieldByName('OBSERVACAO1').AsString := LabelObservacao1.Caption;

        DM.FDQContaReceber.Post;
      end;

      DM.FDQContadores.Locate('TABELA', 'CONTARECEBER',[]);
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := IdContaReceber;
      DM.FDQContadores.Post;

      LabelStatusParcelamento.Caption := 'FINALIZADO';

      if DM.FDQParametros.State in [dsInactive] then
        DM.FDQParametros.Open;

      if DM.FDQParametros.FieldByName('IMPRIMECARNE').AsBoolean then
      begin
        // Impressao de carnê
        if Application.MessageBox('Deseja Imprimir Carnê','Confirmação',mb_yesno + mb_iconquestion) = id_yes then
        begin
         // se Desejar Imprimir o carnê
          ImprimirCarne;
        end
      end;

      FrmParcelamento.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmParcelamento.CalcularParcelas;
Var
  NumeroParcelas, I : Integer;
  VlrTotal, VlrParcela, VlrResto : Double;
  ComponenteEdit, ComponenteDateTime, ComponenteComboBox : TComponent;
begin
  try
    try
      VlrResto := 0;
      VlrTotal := StrToFloat(LabelValorTotal.Caption);
      NumeroParcelas := StrToInt(EditParcelas.Text);

      // Verifica se tem o valor de entrada
      if not (EditValorEntrada.Text = EmptyStr) then
        VlrTotal := VlrTotal - StrToFloat(EditValorEntrada.Text);

      VlrParcela := VlrTotal / NumeroParcelas;

      LabelValorPorParcela.Caption := 'R$ ' + FloatToStrF(VlrParcela,ffCurrency,10,2);

      // Pega os componentes correspondente aos numeros das parcelas
      for I := 1 to NumeroParcelas do
      begin
         ComponenteDateTime := FindComponent('DateTimePicker' + IntToStr(I));
         TDateTimePicker(ComponenteDateTime).Visible := True;
         TDateTimePicker(ComponenteDateTime).Date := IncMonth(Date,I);

         ComponenteEdit := FindComponent('Edit' + IntToStr(I));
         TEdit(ComponenteEdit).Visible := True;
         TEdit(ComponenteEdit).Text := FloatToStrF(VlrParcela,ffCurrency,10,2);

         ComponenteComboBox := FindComponent('ComboBox' + IntToStr(I));
         TComboBox(ComponenteComboBox).Visible := True;
         TComboBox(ComponenteComboBox).ItemIndex := 0;
      end;

      ValidarValorParcelas;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmParcelamento.Edit10Exit(Sender: TObject);
begin
  inherited;
  try
    try
      AtualizarValorParcelas(10);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmParcelamento.Edit11Exit(Sender: TObject);
begin
  inherited;
  try
    try
      AtualizarValorParcelas(11);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmParcelamento.Edit12Exit(Sender: TObject);
begin
  inherited;
  try
    try
      AtualizarValorParcelas(12);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmParcelamento.Edit1Exit(Sender: TObject);
begin
  inherited;
  try
    try
      AtualizarValorParcelas(1);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmParcelamento.Edit2Exit(Sender: TObject);
begin
  inherited;
  try
    try
      AtualizarValorParcelas(2);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmParcelamento.Edit3Exit(Sender: TObject);
begin
  inherited;
  try
    try
      AtualizarValorParcelas(3);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmParcelamento.Edit4Exit(Sender: TObject);
begin
  inherited;
  try
    try
      AtualizarValorParcelas(4);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmParcelamento.Edit5Exit(Sender: TObject);
begin
  inherited;
  try
    try
      AtualizarValorParcelas(5);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmParcelamento.Edit6Exit(Sender: TObject);
begin
  inherited;
  try
    try
      AtualizarValorParcelas(6);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmParcelamento.Edit7Exit(Sender: TObject);
begin
  inherited;
  try
    try
      AtualizarValorParcelas(7);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmParcelamento.Edit8Exit(Sender: TObject);
begin
  inherited;
  try
    try
      AtualizarValorParcelas(8);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmParcelamento.Edit9Exit(Sender: TObject);
begin
  inherited;
  try
    try
      AtualizarValorParcelas(9);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmParcelamento.EditParcelasExit(Sender: TObject);
begin
  inherited;
  try
    try
      LimparParcelas;

      // Se o valor das parcelas não estiver vazio
      if not (EditParcelas.Text = EmptyStr) then
      begin
        // Valida se o numero de parcelas é valido
        if (StrToInt(EditParcelas.Text) > 12) or (StrToInt(EditParcelas.Text) = 0) then
        begin
          Mensagem(2,'Numero de Parcelas Invalido');
          EditParcelas.SetFocus;
          Exit;
        end
        else
          CalcularParcelas;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;

end;

procedure TFrmParcelamento.EditValorEntradaExit(Sender: TObject);
begin
  inherited;
  try
    try
      // se tiver valor de entrada
      if not (EditValorEntrada.Text = EmptyStr) then
      begin
        // verifica se tem as parcelas
        if EditParcelas.Text = EmptyStr then
          EditParcelas.SetFocus
        else
          EditParcelasExit(Sender);
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmParcelamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  try
    try
      LimparCampos;

      LabelValorTotal.Caption := 'R$ 0,00';
      LabelValorPorParcela.Caption := 'R$ 0,00';
      LabelNomeCliente.Caption := '';
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmParcelamento.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      // Zerar Todos os Valores exceto o label do valor total
      LimparCampos;

      LabelStatusParcelamento.Caption := 'ABERTO';
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmParcelamento.ImprimirCarne;
begin
  try
    try
      DMImpressos.FDQCarne.Close;
      DMImpressos.FDQCarne.SQL.Text := 'SELECT A.*, B.NOME FROM CONTARECEBER AS A JOIN CLIENTE AS B ON A.CLIENTE = B.CODIGO WHERE CLIENTE = :CLIENTE AND DOCUMENTO = :DOCUMENTO ORDER BY VENCIMENTO';
      DMImpressos.FDQCarne.Params.ParamByName('CLIENTE').AsString := LabelCodigoCliente.Caption;
      DMImpressos.FDQCarne.Params.ParamByName('DOCUMENTO').AsString := LabelNumeroDocumento.Caption;
      DMImpressos.FDQCarne.Open;

      DMImpressos.FDMTCarne.Insert;
      DMImpressos.FDMTCarne.FieldByName('TOTALPARCELAS').AsString := EditParcelas.Text;
      DMImpressos.FDMTCarne.Post;

      GerarRelatorio(DMImpressos.ImpressaoCarne);
      DMImpressos.FDQCarne.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmParcelamento.LimparParcelas;
Var
  I : Integer;
  ComponenteEdit, ComponenteDateTime, ComponenteComboBox : TComponent;
begin
  try
    try
      for I := 1 to 12 do
      begin
         ComponenteDateTime := FindComponent('DateTimePicker' + IntToStr(I));
         TDateTimePicker(ComponenteDateTime).Date := Date;
         TDateTimePicker(ComponenteDateTime).Visible := False;

         ComponenteEdit := FindComponent('Edit' + IntToStr(I));
         TEdit(ComponenteEdit).Clear;
         TEdit(ComponenteEdit).Visible := False;

         ComponenteComboBox := FindComponent('ComboBox' + IntToStr(I));
         TComboBox(ComponenteComboBox).ItemIndex := 0;
         TComboBox(ComponenteComboBox).Visible := False;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmParcelamento.ValidarValorParcelas;
Var
  I : Integer;
  ComponenteEdit : TComponent;
  ValorTotal, Diferenca, vlr : Double;
begin
  try
    try
      // Somar Todos os valores
      ValorTotal := 0;

      if not (EditValorEntrada.Text = EmptyStr) then
        ValorTotal := StrToFloat(EditValorEntrada.Text);

      for I := 1 to StrToInt(EditParcelas.Text) do
      begin
         ComponenteEdit := FindComponent('Edit' + IntToStr(I));
         ValorTotal := ValorTotal + StrToFloat(RemoveInvalid(ConstArrayNumeroMonetario,TEdit(ComponenteEdit).Text));
      end;

      Diferenca := StrToFloat(LabelValorTotal.Caption) - ValorTotal;

      if Diferenca <> 0 then
      begin
        ComponenteEdit := FindComponent('Edit' + IntToStr(1));
        vlr := StrToFloat(RemoveInvalid(ConstArrayNumeroMonetario,TEdit(ComponenteEdit).Text));
        TEdit(ComponenteEdit).Text := 'R$ ' + FloatToStr(vlr + Diferenca);
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmParcelamento.LimparCampos;
var
  I: Integer;
begin
  try
    try
      // Limpa todos os componentes
      LimparParcelas;

      for I := 0 to FrmParcelamento.ComponentCount - 1 do
      begin
        if Components[i] is TEdit then
        begin
          TEdit(FrmParcelamento.Components[i]).Clear;
          TEdit(FrmParcelamento.Components[i]).Visible := False;
        end;
        if Components[i] is TDateTimePicker then
        begin
          TDateTimePicker(FrmParcelamento.Components[i]).Date := Date;
          TDateTimePicker(FrmParcelamento.Components[i]).Visible := False;
        end;
        if Components[i] is TComboBox then
        begin
          // Limpar o que ja tem
          TComboBox(FrmParcelamento.Components[i]).Clear;

          // Preenche os combobox com as formas de pagamento
          DM.FDQFormaPagto.Close;
          DM.FDQFormaPagto.SQL.Text := 'SELECT * FROM FORMAPAGTO WHERE STATUS = :STATUS AND LANCAFINANCEIRO = TRUE';
          DM.FDQFormaPagto.Params.ParamByName('STATUS').AsString := 'ATIVO';
          DM.FDQFormaPagto.Open;

          DM.FDQFormaPagto.First;
          while not (DM.FDQFormaPagto.Eof) do
          begin
            TComboBox(FrmParcelamento.Components[i]).Items.Add(DM.FDQFormaPagto.FieldByName('DESCRICAO').AsString);
            DM.FDQFormaPagto.Next;
          end;

          TComboBox(FrmParcelamento.Components[i]).Visible := False;
          TComboBox(FrmParcelamento.Components[i]).ItemIndex := 0;
        end;
      end;

      EditValorEntrada.Visible := True;
      EditParcelas.Visible := True;

      // Arruma o comboBox da entrada
      // Preenche os combobox com as formas de pagamento
      DM.FDQFormaPagto.Close;
      DM.FDQFormaPagto.SQL.Text := 'SELECT * FROM FORMAPAGTO WHERE STATUS = :STATUS AND LANCACAIXA = TRUE';
      DM.FDQFormaPagto.Params.ParamByName('STATUS').AsString := 'ATIVO';
      DM.FDQFormaPagto.Open;

      ComboBoxFormaPagtoEntrada.Clear;

      DM.FDQFormaPagto.First;
      while not (DM.FDQFormaPagto.Eof) do
      begin
        ComboBoxFormaPagtoEntrada.Items.Add(DM.FDQFormaPagto.FieldByName('DESCRICAO').AsString);
        DM.FDQFormaPagto.Next;
      end;
      ComboBoxFormaPagtoEntrada.ItemIndex := 0;
      ComboBoxFormaPagtoEntrada.Visible := True;

      EditValorEntrada.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
