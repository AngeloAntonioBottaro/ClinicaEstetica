unit UntLancamentoContaReceber;

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

  UntBase,
  UntBibliotecaFuncoes,
  UntComponentesGerais,
  UntDataModule,
  UntConsultaContaReceber,
  UntConsultaCliente,

  Data.DB,
  Data.Bind.EngExt,
  Data.Bind.Components,
  Data.Bind.DBScope;

type
  TFrmLancamentoContaReceber = class(TFrmBase)
    GroupBoxHeader: TGroupBox;
    Label1: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    EditCodigoCliente: TEdit;
    EditValor: TEdit;
    EditObservacao: TEdit;
    DateTimePickerVencimento: TDateTimePicker;
    ComboBoxFormaPagamento: TComboBox;
    EditDocumento: TEdit;
    ButtonConsultaCliente: TButton;
    DateTimePickerEmissao: TDateTimePicker;
    EditParcela: TEdit;
    EditObservacao1: TEdit;
    GroupBoxBotton: TGroupBox;
    ButtonAdicionar: TButton;
    ButtonConsultar: TButton;
    ButtonLancar: TButton;
    LabelNomeCliente: TLabel;
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
    procedure ButtonConsultarClick(Sender: TObject);
    procedure ButtonAdicionarClick(Sender: TObject);
    procedure ButtonLancarClick(Sender: TObject);
    procedure ButtonConsultaClienteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditCodigoClienteExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure LimparCampos;
    procedure FecharQuerys;
    procedure PassaInfoParaQuery;
    procedure PassaInfoParaMemoryTable;
    procedure CarregarFormasPagamento;
    procedure LancarContaReceber;
    procedure AtualizaContaReceber;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLancamentoContaReceber: TFrmLancamentoContaReceber;

implementation

{$R *.dfm}

procedure TFrmLancamentoContaReceber.AtualizaContaReceber;
begin
  try
    try
      // Abre a query com o registro da conta
      DM.FDQContaReceber.Close;
      DM.FDQContaReceber.SQL.Text := 'SELECT * FROM CONTARECEBER WHERE CODIGO = :CODIGO';
      DM.FDQContaReceber.Params.ParamByName('CODIGO').AsInteger := DM.FDMTContaReceber.FieldByName('CODIGo').AsInteger;
      DM.FDQContaReceber.Open;

      DM.FDQContaReceber.Edit;

      // Passa todos os campos para a query
      PassaInfoParaQuery;

      DM.FDQContaReceber.Post;

      Mensagem(1,'Conta a receber atualizada com sucesso');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaReceber.ButtonAdicionarClick(Sender: TObject);
begin
  inherited;
  try
    try
      LimparCampos;
      DM.FDMTContaReceber.Close;
      DM.FDMTContaReceber.Open;
      DM.FDMTContaReceber.Insert;

      DM.FDMTContaReceber.FieldByName('EMISSAO').AsDateTime := Date;
      DM.FDMTContaReceber.FieldByName('VENCIMENTO').AsDateTime := Date;

      EditCodigoCliente.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaReceber.ButtonConsultaClienteClick(
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
        LabelNomeCliente.Caption := DM.FDQCliente.FieldByName('NOME').AsString;
        DM.FDMTContaReceber.FieldByName('CLIENTE').AsInteger := DM.FDQCliente.FieldByName('CODIGO').AsInteger;
      end;

      EditCodigoCliente.SetFocus;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaReceber.ButtonConsultarClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmConsultaContaReceber.ShowModal;
    finally
      if not (DM.FDQContaReceber.Eof) then
      begin
        PassaInfoParaMemoryTable;
        DM.FDMTContaReceber.Post;
        DM.FDMTContaReceber.Edit;
      end;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaReceber.ButtonLancarClick(Sender: TObject);
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
        DM.FDMTContaReceber.FieldByName('FORMAPAGTO').AsInteger := DM.FDQFormaPagto.FieldByName('CODIGO').AsInteger;
      end
      else
      begin
        Mensagem(2,'Forma de pagamento não encontrada');
        ComboBoxFormaPagamento.SetFocus;
        ComboBoxFormaPagamento.ItemIndex := 0;
        Exit;
      end;

      // Deixa informado que foi alterado manualmente esse registro
      DM.FDMTContaReceber.FieldByName('OBSERVACAOSISTEMA').AsString := 'LANÇAMENTO MANUAL DE CONTA A RECEBER';

      // Verifica se vai gravar ou apenas atualizar
      if DM.FDMTContaReceber.FieldByName('CODIGO').AsString = EmptyStr then
      begin
        LancarContaReceber;
      end
      else
      begin
        AtualizaContaReceber;
      end;

      ButtonAdicionarClick(Sender);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaReceber.CarregarFormasPagamento;
begin
  try
    try
      DM.FDQFormaPagto.Close;
      DM.FDQFormaPagto.SQL.Text := 'SELECT * FROM FORMAPAGTO WHERE LANCAFINANCEIRO';
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

procedure TFrmLancamentoContaReceber.EditCodigoClienteExit(Sender: TObject);
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
          DM.FDMTContaReceber.FieldByName('CLIENTE').AsInteger := DM.FDQCliente.FieldByName('CODIGO').AsInteger;
        end;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaReceber.FecharQuerys;
begin
  try
    try
      DM.FDQContaReceber.Close;
      DM.FDQContadores.Close;
      DM.FDQFormaPagto.Close;
      DM.FDQCliente.Close;
      DM.FDMTContaReceber.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaReceber.FormClose(Sender: TObject;
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

procedure TFrmLancamentoContaReceber.FormShow(Sender: TObject);
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

procedure TFrmLancamentoContaReceber.LancarContaReceber;
var
  ContadorContaReceber : Integer;
begin
  try
    try
      // Abre a query do contareceber
      DM.FDQContaReceber.Close;
      DM.FDQContaReceber.SQL.Text := 'SELECT * FROM CONTARECEBER';
      DM.FDQContaReceber.Open;

      // Abre a query dos contadores
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;
      DM.FDQContadores.Locate('TABELA','CONTARECEBER',[]);
      ContadorContaReceber := DM.FDQContadores.FieldByName('VALOR').AsInteger + 1;

      // Arruma o contador
      DM.FDMTContaReceber.FieldByName('CODIGO').AsInteger := ContadorContaReceber;
      
      DM.FDQContaReceber.Insert;
      PassaInfoParaQuery;
      DM.FDQContaReceber.Post;

      // Atualiza os contadores
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorContaReceber;
      DM.FDQContadores.Post;

      Mensagem(1,'Lançamento de conta a receber realizado com sucesso');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaReceber.LimparCampos;
var
  I : Integer;
begin
  try
    try
      for I := 0 to FrmLancamentoContaReceber.ComponentCount -1 do
      begin
         if Components[i] is TEdit then
          TEdit(FrmLancamentoContaReceber.Components[i]).Clear;
        if Components[i] is TDateTimePicker then
          TDateTimePicker(FrmLancamentoContaReceber.Components[i]).Date := Date;
        if Components[i] is TComboBox then
          TComboBox(FrmLancamentoContaReceber.Components[i]).ItemIndex := 0;
      end;

      LabelNomeCliente.Caption := '';
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaReceber.PassaInfoParaMemoryTable;
var
  I: Integer;
  NomeCampo: string;
begin
  // Se tiver informação ele passa para o memorytable
  for I := 0 to (DM.FDQContaReceber.FieldCount - 1) do
  begin
    NomeCampo := DM.FDQContaReceber.Fields[I].FieldName;
    if (DM.FDMTContaReceber.FindField(NomeCampo) <> nil) then
      DM.FDMTContaReceber.FieldByName(NomeCampo).Value := DM.FDQContaReceber.FieldByName(NomeCampo).Value;
  end;
end;

procedure TFrmLancamentoContaReceber.PassaInfoParaQuery;
var
  I: Integer;
  NomeCampo: string;
begin
  // Passa todos os campos para a query
  for I := 0 to (DM.FDMTContaReceber.FieldCount - 1) do
  begin
    NomeCampo := DM.FDMTContaReceber.Fields[I].FieldName;
    if (DM.FDQContaReceber.FindField(NomeCampo) <> nil) then
      DM.FDQContaReceber.FieldByName(NomeCampo).Value := DM.FDMTContaReceber.FieldByName(NomeCampo).Value;
  end;
end;

end.
