unit UntLancamentoContaPagar;

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

  Data.DB,
  Data.Bind.EngExt,
  Data.Bind.Components,
  Data.Bind.DBScope,

  FireDAC.Stan.Param,

  UntBase,
  UntBibliotecaFuncoes,
  UntComponentesGerais,
  UntDataModule,
  UntConsultaFornecedor,
  UntConsultaContaPagar;

type
  TFrmLancamentoContaPagar = class(TFrmBase)
    GroupBoxBotton: TGroupBox;
    ButtonAdicionar: TButton;
    ButtonConsultar: TButton;
    ButtonLancar: TButton;
    GroupBoxHeader: TGroupBox;
    Label1: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    LabelNomeFornecedor: TLabel;
    EditCodigoFornecedor: TEdit;
    EditValor: TEdit;
    EditObservacao: TEdit;
    DateTimePickerVencimento: TDateTimePicker;
    ComboBoxFormaPagamento: TComboBox;
    EditDocumento: TEdit;
    ButtonConsultaFornecedor: TButton;
    DateTimePickerEmissao: TDateTimePicker;
    EditParcela: TEdit;
    EditObservacao1: TEdit;
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
    procedure ButtonAdicionarClick(Sender: TObject);
    procedure ButtonConsultaFornecedorClick(Sender: TObject);
    procedure ButtonConsultarClick(Sender: TObject);
    procedure ButtonLancarClick(Sender: TObject);
    procedure EditCodigoFornecedorExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure EditObservacao1Exit(Sender: TObject);
  private
    procedure LimparCampos;
    procedure FecharQuerys;
    procedure PassaInfoParaQuery;
    procedure PassaInfoParaMemoryTable;
    procedure CarregarFormasPagamento;
    procedure LancarContaPagar;
    procedure AtualizaContaPagar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLancamentoContaPagar: TFrmLancamentoContaPagar;

implementation

{$R *.dfm}

{ TFrmLancamentoContaPagar }

procedure TFrmLancamentoContaPagar.AtualizaContaPagar;
begin
  try
    try
      // Abre a query com o registro da conta
      DM.FDQContaPagar.Close;
      DM.FDQContaPagar.SQL.Text := 'SELECT * FROM CONTAPAGAR WHERE CODIGO = :CODIGO';
      DM.FDQContaPagar.Params.ParamByName('CODIGO').AsInteger := DM.FDMTContaPagar.FieldByName('CODIGo').AsInteger;
      DM.FDQContaPagar.Open;

      DM.FDQContaPagar.Edit;

      // Passa todos os campos para a query
      PassaInfoParaQuery;

      DM.FDQContaPagar.Post;

      Mensagem(1,'Conta a pagar atualizada com sucesso');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaPagar.ButtonAdicionarClick(Sender: TObject);
begin
  inherited;
  try
    try
      LimparCampos;
      DM.FDMTContaPagar.Close;
      DM.FDMTContaPagar.Open;
      DM.FDMTContaPagar.Insert;

      DM.FDMTContaPagar.FieldByName('EMISSAO').AsDateTime := Date;
      DM.FDMTContaPagar.FieldByName('VENCIMENTO').AsDateTime := Date;

      EditCodigoFornecedor.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaPagar.ButtonConsultaFornecedorClick(
  Sender: TObject);
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
        DM.FDMTContaPaga.FieldByName('FORNECEDOR').AsInteger := DM.FDQFornecedor.FieldByName('CODIGO').AsInteger;
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

procedure TFrmLancamentoContaPagar.ButtonConsultarClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmConsultaContaPagar.ShowModal
    finally
      if not (DM.FDQContaPagar.Eof) then
      begin
        PassaInfoParaMemoryTable;
        DM.FDMTContaPagar.Post;
        DM.FDMTContaPagar.Edit;
      end;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaPagar.ButtonLancarClick(Sender: TObject);
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
        DM.FDMTContaPagar.FieldByName('FORMAPAGTO').AsInteger := DM.FDQFormaPagto.FieldByName('CODIGO').AsInteger;
      end
      else
      begin
        Mensagem(2,'Forma de pagamento não encontrada');
        ComboBoxFormaPagamento.SetFocus;
        ComboBoxFormaPagamento.ItemIndex := 0;
        Exit;
      end;

      // Deixa informado que foi alterado manualmente esse registro
      DM.FDMTContaPagar.FieldByName('OBSERVACAOSISTEMA').AsString := 'LANÇAMENTO MANUAL DE CONTA A PAGAR';

      // Verifica se vai gravar ou apenas atualizar
      if DM.FDMTContaPagar.FieldByName('CODIGO').AsString = EmptyStr then
      begin
        LancarContaPagar;
      end
      else
      begin
        AtualizaContaPagar;
      end;

      ButtonAdicionarClick(Sender);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaPagar.CarregarFormasPagamento;
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

procedure TFrmLancamentoContaPagar.EditCodigoFornecedorExit(Sender: TObject);
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
          Mensagem(1,'Fornecedor Não Encontrado');
          EditCodigoFornecedor.Clear;
          ButtonConsultaFornecedor.SetFocus;
        end
        else
        begin
          DM.FDMTContaPagar.FieldByName('FORNECEDOR').AsInteger := DM.FDQFornecedor.FieldByName('CODIGO').AsInteger;
          EditCodigoFornecedor.Text := DM.FDQFornecedor.FieldByName('CODIGO').AsString;
          LabelNomeFornecedor.Caption := DM.FDQFornecedor.FieldByName('NOMEFANTASIA').AsString;
        end;

        DM.FDQFornecedor.Close;
      end
      else
        ButtonConsultaFornecedor.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaPagar.EditObservacao1Exit(Sender: TObject);
begin
  inherited;
  try
    try
      ButtonLancar.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaPagar.FecharQuerys;
begin
  try
    try
      DM.FDQContaPagar.Close;
      DM.FDQContadores.Close;
      DM.FDQConsulta.Close;
      DM.FDQFormaPagto.Close;
      DM.FDQFornecedor.Close;
      DM.FDMTContaPagar.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaPagar.FormClose(Sender: TObject;
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

procedure TFrmLancamentoContaPagar.FormShow(Sender: TObject);
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

procedure TFrmLancamentoContaPagar.LancarContaPagar;
var
  ContadorContaPagar : Integer;
begin
  try
    try
      // Abre a query do contareceber
      DM.FDQContaPagar.Close;
      DM.FDQContaPagar.SQL.Text := 'SELECT * FROM CONTAPAGAR';
      DM.FDQContaPagar.Open;

      // Abre a query dos contadores
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;
      DM.FDQContadores.Locate('TABELA','CONTAPAGAR',[]);
      ContadorContaPagar := DM.FDQContadores.FieldByName('VALOR').AsInteger + 1;

      // Arruma o contador
      DM.FDMTContaPagar.FieldByName('CODIGO').AsInteger := ContadorContaPagar;

      DM.FDQContaPagar.Insert;
      PassaInfoParaQuery;
      DM.FDQContaPagar.Post;

      // Atualiza os contadores
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorContaPagar;
      DM.FDQContadores.Post;

      Mensagem(1,'Lançamento de conta a pagar realizado com sucesso');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaPagar.LimparCampos;
var
  I : Integer;
begin
  try
    try
      for I := 0 to FrmLancamentoContaPagar.ComponentCount -1 do
      begin
         if Components[i] is TEdit then
          TEdit(FrmLancamentoContaPagar.Components[i]).Clear;
        if Components[i] is TDateTimePicker then
          TDateTimePicker(FrmLancamentoContaPagar.Components[i]).Date := Date;
        if Components[i] is TComboBox then
          TComboBox(FrmLancamentoContaPagar.Components[i]).ItemIndex := 0;
      end;

      LabelNomeFornecedor.Caption := '';
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoContaPagar.PassaInfoParaMemoryTable;
var
  I: Integer;
  NomeCampo: string;
begin
  // Se tiver informação ele passa para o memorytable
  for I := 0 to (DM.FDQContaPagar.FieldCount - 1) do
  begin
    NomeCampo := DM.FDQContaPagar.Fields[I].FieldName;
    if (DM.FDMTContaPagar.FindField(NomeCampo) <> nil) then
      DM.FDMTContaPagar.FieldByName(NomeCampo).Value := DM.FDQContaPagar.FieldByName(NomeCampo).Value;
  end;
end;

procedure TFrmLancamentoContaPagar.PassaInfoParaQuery;
var
  I: Integer;
  NomeCampo: string;
begin
  // Passa todos os campos para a query
  for I := 0 to (DM.FDMTContaPagar.FieldCount - 1) do
  begin
    NomeCampo := DM.FDMTContaPagar.Fields[I].FieldName;
    if (DM.FDQContaPagar.FindField(NomeCampo) <> nil) then
      DM.FDQContaPagar.FieldByName(NomeCampo).Value := DM.FDMTContaPagar.FieldByName(NomeCampo).Value;
  end;
end;

end.
