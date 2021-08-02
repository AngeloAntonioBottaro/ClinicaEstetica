unit UntLancamentoContaPaga;

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
  Vcl.ComCtrls,

  FireDAC.Stan.Param,

  Data.DB,

  UntBase,
  UntBibliotecaFuncoes,
  UntComponentesGerais,
  UntDataModule,
  UntConsultaFornecedor, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

type
  TFrmLancamentoContaPaga = class(TFrmBase)
    GroupBoxHeader: TGroupBox;
    Label20: TLabel;
    LabelValor: TLabel;
    LabelVencimento: TLabel;
    LabelPagamento: TLabel;
    LabelDocumento: TLabel;
    LabelEmissao: TLabel;
    LabelDataPagamento: TLabel;
    LabelParcela: TLabel;
    LabelObservacao: TLabel;
    LabelNomeFornecedor: TLabel;
    EditCodigoFornecedor: TEdit;
    EditValor: TEdit;
    DateTimePickerVencimento: TDateTimePicker;
    ComboBoxFormaPagamento: TComboBox;
    EditDocumento: TEdit;
    ButtonConsultaFornecedor: TButton;
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
    procedure ButtonAdicionarClick(Sender: TObject);
    procedure ButtonConsultaFornecedorClick(Sender: TObject);
    procedure ButtonLancarClick(Sender: TObject);
    procedure EditCodigoFornecedorExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    procedure LimparCampos;
    procedure FecharQuerys;
    procedure PassaInfoParaQuery;
    procedure CarregarFormasPagamento;
    procedure LancarContaPaga;
    procedure LancarCaixa;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLancamentoContaPaga: TFrmLancamentoContaPaga;

implementation

{$R *.dfm}

{ TFrmLancamentoContaPaga }

procedure TFrmLancamentoContaPaga.ButtonAdicionarClick(Sender: TObject);
begin
  inherited;
  try
    try
      LimparCampos;
      DM.FDMTContaPaga.Close;
      DM.FDMTContaPaga.Open;
      DM.FDMTContaPaga.Insert;

      DM.FDMTContaPaga.FieldByName('EMISSAO').AsDateTime := Date;
      DM.FDMTContaPaga.FieldByName('VENCIMENTO').AsDateTime := Date;
      DM.FDMTContaPaga.FieldByName('DATAPAGAMENTO').AsDateTime := Date;

      EditCodigoFornecedor.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaPaga.ButtonConsultaFornecedorClick(
  Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeFornecedor.Caption := '';
      FrmConsultaFornecedor.ShowModal;
    finally
      if not DM.FDQFornecedor.Eof then
      begin
        DM.FDMTContaPaga.FieldByName('FORNECEDOR').AsInteger := DM.FDQFornecedor.FieldByName('CODIGO').AsInteger;
        LabelNomeFornecedor.Caption := DM.FDQFornecedor.FieldByName('NOMEFANTASIA').AsString;
      end;

      EditCodigoFornecedor.SetFocus;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaPaga.ButtonLancarClick(Sender: TObject);
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
        DM.FDMTContaPaga.FieldByName('FORMAPAGTO').AsInteger := DM.FDQFormaPagto.FieldByName('CODIGO').AsInteger;
      end
      else
      begin
        Mensagem(2,'Forma de pagamento não encontrada');
        ComboBoxFormaPagamento.SetFocus;
        ComboBoxFormaPagamento.ItemIndex := 0;
        Exit;
      end;

      LancarContaPaga;

      ButtonAdicionarClick(Sender);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaPaga.CarregarFormasPagamento;
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

procedure TFrmLancamentoContaPaga.EditCodigoFornecedorExit(Sender: TObject);
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
          Mensagem(1,'Fornecedor Não Encontrado');
          EditCodigoFornecedor.Clear;
          ButtonConsultaFornecedor.SetFocus;
          Exit;
        end
        else
        begin
          LabelNomeFornecedor.Caption := DM.FDQFornecedor.FieldByName('NOMEFANTASIA').AsString;
          DM.FDMTContaPaga.FieldByName('FORNECEDOR').AsInteger := DM.FDQFornecedor.FieldByName('CODIGO').AsInteger;
        end;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaPaga.FecharQuerys;
begin
  try
    try
      DM.FDQContaPaga.Close;
      DM.FDQContadores.Close;
      DM.FDQFormaPagto.Close;
      DM.FDQFornecedor.Close;
      DM.FDQCaixa.Close;
      DM.FDMTContaPaga.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaPaga.FormClose(Sender: TObject;
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

procedure TFrmLancamentoContaPaga.FormShow(Sender: TObject);
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

procedure TFrmLancamentoContaPaga.LancarCaixa;
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
      DM.FDQCaixa.FieldByName('FORNECEDOR').AsString := EditCodigoFornecedor.Text;
      DM.FDQCaixa.FieldByName('HISTORICO').AsString := 'LANÇAMENTO MANUAL DE CONTA RECEBIDA ' + DM.FDMTContaPaga.FieldByName('DOCUMENTO').AsString;
      DM.FDQCaixa.FieldByName('DOCUMENTO').AsString := DM.FDMTContaPaga.FieldByName('DOCUMENTO').AsString;
      DM.FDQCaixa.FieldByName('DEBITO').AsFloat := DM.FDMTContaPaga.FieldByName('VALORPAGO').AsFloat;
      DM.FDQCaixa.FieldByName('OBSERVACAO').AsString := DM.FDMTContaPaga.FieldByName('OBSERVACAO').AsString;
      DM.FDQCaixa.FieldByName('OBSERVACAO1').AsString := DM.FDMTContaPaga.FieldByName('OBSERVACAO1').AsString;
      DM.FDQCaixa.FieldByName('OBSERVACAOSISTEMA').AsString := 'LANÇAMENTO MANUAL DE CONTA PAGA';
      DM.FDQCaixa.FieldByName('FORMAPAGTO').AsInteger := DM.FDMTContaPaga.FieldByName('FORMAPAGTO').AsInteger;
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

procedure TFrmLancamentoContaPaga.LancarContaPaga;
var
  ContadorContaPaga : Integer;
begin
  try
    try
      // Abre a query do contareceber
      DM.FDQContaPaga.Close;
      DM.FDQContaPaga.SQL.Text := 'SELECT * FROM CONTAPAGA';
      DM.FDQContaPaga.Open;

      // Abre a query dos contadores
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;
      DM.FDQContadores.Locate('TABELA','CONTAPAGA',[]);
      ContadorContaPaga := DM.FDQContadores.FieldByName('VALOR').AsInteger + 1;

      LancarCaixa;

      // Arruma o contador
      DM.FDMTContaPaga.FieldByName('CODIGO').AsInteger := ContadorContaPaga;
      DM.FDMTContaPaga.FieldByName('OBSERVACAOSISTEMA').AsString := 'LANÇAMENTO MANUAL DE CONTA RECEBIDA';
      DM.FDMTContaPaga.FieldByName('CAIXA').AsInteger := DM.FDQCaixa.FieldByName('CODIGO').AsInteger;

      DM.FDQContaPaga.Insert;
      PassaInfoParaQuery;
      DM.FDQContaPaga.Post;

      // Atualiza os contadores
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorContaPaga;
      DM.FDQContadores.Post;

      Mensagem(1,'Lançamento de conta paga realizado com sucesso');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaPaga.LimparCampos;
var
  I : Integer;
begin
  try
    try
      for I := 0 to FrmLancamentoContaPaga.ComponentCount -1 do
      begin
         if Components[i] is TEdit then
          TEdit(FrmLancamentoContaPaga.Components[i]).Clear;
        if Components[i] is TDateTimePicker then
          TDateTimePicker(FrmLancamentoContaPaga.Components[i]).Date := Date;
        if Components[i] is TComboBox then
          TComboBox(FrmLancamentoContaPaga.Components[i]).ItemIndex := 0;
      end;

      LabelNomeFornecedor.Caption := '';
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaPaga.PassaInfoParaQuery;
var
  I: Integer;
  NomeCampo: string;
begin
  // Passa todos os campos para a query
  for I := 0 to (DM.FDMTContaPaga.FieldCount - 1) do
  begin
    NomeCampo := DM.FDMTContaPaga.Fields[I].FieldName;
    if (DM.FDQContaPaga.FindField(NomeCampo) <> nil) then
      DM.FDQContaPaga.FieldByName(NomeCampo).Value := DM.FDMTContaPaga.FieldByName(NomeCampo).Value;
  end;
end;

end.
