unit UntLancamentoContaRecebida;

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
  Vcl.ComCtrls,
  Vcl.Bind.Editors,
  Vcl.Bind.DBEngExt,

  FireDAC.Stan.Param,

  Data.DB,
  Data.Bind.Components,
  Data.Bind.DBScope,
  Data.Bind.EngExt,

  UntBase,
  UntBibliotecaFuncoes,
  UntComponentesGerais,
  UntDataModule,
  UntConsultaCliente,
  UntConsultaContaRecebida;

type
  TFrmLancamentoContaRecebida = class(TFrmBase)
    GroupBoxHeader: TGroupBox;
    LabelCliente: TLabel;
    LabelValor: TLabel;
    LabelVencimento: TLabel;
    LabelPagamento: TLabel;
    LabelDocumento: TLabel;
    LabelEmissao: TLabel;
    LabelDataPagamento: TLabel;
    LabelParcela: TLabel;
    LabelObservacao: TLabel;
    EditCodigoCliente: TEdit;
    EditValor: TEdit;
    DateTimePickerVencimento: TDateTimePicker;
    ComboBoxFormaPagamento: TComboBox;
    EditDocumento: TEdit;
    ButtonConsultaCliente: TButton;
    DateTimePickerEmissao: TDateTimePicker;
    DateTimePickerDataPagamento: TDateTimePicker;
    EditParcela: TEdit;
    EditObservacao: TEdit;
    EditObservacao1: TEdit;
    GroupBoxBotton: TGroupBox;
    ButtonAdicionar: TButton;
    ButtonLancar: TButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    LinkControlToField8: TLinkControlToField;
    LinkControlToField9: TLinkControlToField;
    LabelNomeCliente: TLabel;
    procedure ButtonConsultaClienteClick(Sender: TObject);
    procedure ButtonAdicionarClick(Sender: TObject);
    procedure ButtonLancarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure EditCodigoClienteExit(Sender: TObject);
  private
    procedure LimparCampos;
    procedure FecharQuerys;
    procedure PassaInfoParaQuery;
    procedure CarregarFormasPagamento;
    procedure LancarContaRecebida;
    procedure LancarCaixa;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLancamentoContaRecebida: TFrmLancamentoContaRecebida;

implementation

{$R *.dfm}

procedure TFrmLancamentoContaRecebida.ButtonAdicionarClick(Sender: TObject);
begin
  inherited;
  try
    try
      LimparCampos;
      DM.FDMTContaRecebida.Close;
      DM.FDMTContaRecebida.Open;
      DM.FDMTContaRecebida.Insert;

      DM.FDMTContaRecebida.FieldByName('EMISSAO').AsDateTime := Date;
      DM.FDMTContaRecebida.FieldByName('VENCIMENTO').AsDateTime := Date;
      DM.FDMTContaRecebida.FieldByName('DATAPAGAMENTO').AsDateTime := Date;

      EditCodigoCliente.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaRecebida.ButtonConsultaClienteClick(
  Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeCliente.Caption := '';
      FrmConsultaCliente.ShowModal;
    finally
      if not DM.FDQCliente.Eof then
      begin
        DM.FDMTContaRecebida.FieldByName('CLIENTE').AsInteger := DM.FDQCliente.FieldByName('CODIGO').AsInteger;
        LabelNomeCliente.Caption := DM.FDQCliente.FieldByName('NOME').AsString;
      end;

      EditCodigoCliente.SetFocus;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaRecebida.ButtonLancarClick(Sender: TObject);
begin
  inherited;
  try
    try
      // Achar a forma de pagamento
      DM.FDQFormaPagto.Close;
      DM.FDQFormaPagto.SQL.Text := 'SELECT * FROM FORMAPAGTO WHERE STATUS = :STATUS ';
      DM.FDQFormaPagto.Params.ParamByName('STATUS').AsString := 'ATIVO';
      DM.FDQFormaPagto.Open;

      // Se achou a forma de pagamento
      if DM.FDQFormaPagto.Locate('DESCRICAO',ComboBoxFormaPagamento.Text,[]) then
      begin
        DM.FDMTContaRecebida.FieldByName('FORMAPAGTO').AsInteger := DM.FDQFormaPagto.FieldByName('CODIGO').AsInteger;
      end
      else
      begin
        Mensagem(2,'Forma de pagamento não encontrada');
        ComboBoxFormaPagamento.SetFocus;
        ComboBoxFormaPagamento.ItemIndex := 0;
        Exit;
      end;

      LancarContaRecebida;

      ButtonAdicionarClick(Sender);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaRecebida.CarregarFormasPagamento;
begin
  try
    try
      DM.FDQFormaPagto.Close;
      DM.FDQFormaPagto.SQL.Text := 'SELECT * FROM FORMAPAGTO WHERE LANCACAIXA';
      DM.FDQFormaPagto.Open;

      DM.FDQFormaPagto.First;
      ComboBoxFormaPagamento.Clear;

      while not (DM.FDQFormaPagto.Eof) do
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

procedure TFrmLancamentoContaRecebida.EditCodigoClienteExit(Sender: TObject);
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
          DM.FDMTContaRecebida.FieldByName('CLIENTE').AsInteger := DM.FDQCliente.FieldByName('CODIGO').AsInteger;
        end;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaRecebida.FecharQuerys;
begin
  try
    try
      DM.FDQContaRecebida.Close;
      DM.FDQContadores.Close;
      DM.FDQFormaPagto.Close;
      DM.FDQCliente.Close;
      DM.FDQCaixa.Close;
      DM.FDMTContaRecebida.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaRecebida.FormClose(Sender: TObject;
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

procedure TFrmLancamentoContaRecebida.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      FecharQuerys;
      CarregarFormasPagamento;
      LimparCampos;

      ButtonAdicionarClick(Sender);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaRecebida.LancarCaixa;
var
  ContadorCaixa : Integer;
begin
  try
    try
      // Abre a query do caixa
      DM.FDQCaixa.Close;
      DM.FDQCaixa.SQL.Text := 'SELECT * FROM CAIXA ';
      DM.FDQCaixa.Open;

      // Abre a query dos contadores
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;
      DM.FDQContadores.Locate('TABELA','CAIXA',[]);
      ContadorCaixa := DM.FDQContadores.FieldByName('VALOR').AsInteger + 1;

      DM.FDQCaixa.Insert;

      // Arruma as informaçoes no caixa
      DM.FDQCaixa.FieldByName('CODIGO').AsInteger := ContadorCaixa;
      DM.FDQCaixa.FieldByName('DATA').AsDateTime := DateTimePickerDataPagamento.Date;
      DM.FDQCaixa.FieldByName('HORA').AsDateTime := Time;
      DM.FDQCaixa.FieldByName('CLIENTE').AsString := EditCodigoCliente.Text;
      DM.FDQCaixa.FieldByName('HISTORICO').AsString := 'LANÇAMENTO MANUAL DE CONTA RECEBIDA ' + DM.FDMTContaRecebida.FieldByName('DOCUMENTO').AsString;
      DM.FDQCaixa.FieldByName('DOCUMENTO').AsString := DM.FDMTContaRecebida.FieldByName('DOCUMENTO').AsString;
      DM.FDQCaixa.FieldByName('CREDITO').AsFloat := DM.FDMTContaRecebida.FieldByName('VALORRECEBIDO').AsFloat;
      DM.FDQCaixa.FieldByName('OBSERVACAO').AsString := DM.FDMTContaRecebida.FieldByName('OBSERVACAO').AsString;
      DM.FDQCaixa.FieldByName('OBSERVACAO1').AsString := DM.FDMTContaRecebida.FieldByName('OBSERVACAO1').AsString;
      DM.FDQCaixa.FieldByName('OBSERVACAOSISTEMA').AsString := 'LANÇAMENTO MANUAL DE CONTA RECEBIDA';
      DM.FDQCaixa.FieldByName('FORMAPAGTO').AsInteger := DM.FDMTContaRecebida.FieldByName('FORMAPAGTO').AsInteger;
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

procedure TFrmLancamentoContaRecebida.LancarContaRecebida;
var
  ContadorContaRecebida : Integer;
begin
  try
    try
      // Abre a query do contareceber
      DM.FDQContaRecebida.Close;
      DM.FDQContaRecebida.SQL.Text := 'SELECT * FROM CONTARECEBIDA';
      DM.FDQContaRecebida.Open;

      // Abre a query dos contadores
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;
      DM.FDQContadores.Locate('TABELA','CONTARECEBIDA',[]);
      ContadorContaRecebida := DM.FDQContadores.FieldByName('VALOR').AsInteger + 1;

      LancarCaixa;

      // Arruma o contador
      DM.FDMTContaRecebida.FieldByName('CODIGO').AsInteger := ContadorContaRecebida;
      DM.FDMTContaRecebida.FieldByName('OBSERVACAOSISTEMA').AsString := 'LANÇAMENTO MANUAL DE CONTA RECEBIDA';
      DM.FDMTContaRecebida.FieldByName('CAIXA').AsInteger := DM.FDQCaixa.FieldByName('CODIGO').AsInteger;

      DM.FDQContaRecebida.Insert;
      PassaInfoParaQuery;
      DM.FDQContaRecebida.Post;

      // Atualiza os contadores
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorContaRecebida;
      DM.FDQContadores.Post;

      Mensagem(1,'Lançamento de conta recebida realizado com sucesso');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaRecebida.LimparCampos;
var
  I : Integer;
begin
  try
    try
      for I := 0 to FrmLancamentoContaRecebida.ComponentCount -1 do
      begin
         if Components[i] is TEdit then
          TEdit(FrmLancamentoContaRecebida.Components[i]).Clear;
        if Components[i] is TDateTimePicker then
          TDateTimePicker(FrmLancamentoContaRecebida.Components[i]).Date := Date;
        if Components[i] is TComboBox then
          TComboBox(FrmLancamentoContaRecebida.Components[i]).ItemIndex := 0;
      end;

      LabelNomeCliente.Caption := '';
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaRecebida.PassaInfoParaQuery;
var
  I: Integer;
  NomeCampo: string;
begin
  // Passa todos os campos para a query
  for I := 0 to (DM.FDMTContaRecebida.FieldCount - 1) do
  begin
    NomeCampo := DM.FDMTContaRecebida.Fields[I].FieldName;
    if (DM.FDQContaRecebida.FindField(NomeCampo) <> nil) then
      DM.FDQContaRecebida.FieldByName(NomeCampo).Value := DM.FDMTContaRecebida.FieldByName(NomeCampo).Value;
  end;
end;

end.
