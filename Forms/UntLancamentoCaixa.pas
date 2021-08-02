unit UntLancamentoCaixa;

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
  Vcl.ComCtrls,
  Vcl.StdCtrls,
  Vcl.Bind.Editors,
  Vcl.Bind.DBEngExt,

  FireDAC.Stan.Param,

  UntBase,
  UntBibliotecaFuncoes,
  UntComponentesGerais,
  UntDataModule,

  Data.DB,
  Data.Bind.EngExt,
  Data.Bind.Components,
  Data.Bind.DBScope;

type
  TFrmLancamentoCaixa = class(TFrmBase)
    GroupBoxBotton: TGroupBox;
    ButtonAdicionar: TButton;
    ButtonLancar: TButton;
    GroupBoxLancaCaixa: TGroupBox;
    LabelHistorico: TLabel;
    LabelValor: TLabel;
    LabelTipo: TLabel;
    LabelObservacao: TLabel;
    LabelData: TLabel;
    LabelPagamento: TLabel;
    EditValor: TEdit;
    ComboBoxHistorico: TComboBox;
    DateTimePickerData: TDateTimePicker;
    EditObservacao: TEdit;
    EditObservacao1: TEdit;
    ComboBoxFormaPagamento: TComboBox;
    ComboBoxTipoLanca: TComboBox;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    procedure ButtonAdicionarClick(Sender: TObject);
    procedure ButtonLancarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure LimparCampos;
    procedure FecharQuerys;
    procedure PassaInfoParaQuery;
    procedure CarregarFormasPagamento;
    procedure CarregarHistoricos;
    procedure LancarCaixa;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLancamentoCaixa: TFrmLancamentoCaixa;

implementation

{$R *.dfm}

procedure TFrmLancamentoCaixa.ButtonAdicionarClick(Sender: TObject);
begin
  inherited;
  try
    try
      LimparCampos;
      DM.FDMTCaixa.close;
      DM.FDMTCaixa.Open;
      DM.FDMTCaixa.Insert;

      DM.FDMTCaixa.FieldByName('DATA').AsDateTime := Date;
      DM.FDMTCaixa.FieldByName('CLIENTE').AsInteger := 1;
      DM.FDMTCaixa.FieldByName('DATALANCAMENTO').AsDateTime := Date;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoCaixa.ButtonLancarClick(Sender: TObject);
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
        DM.FDMTCaixa.FieldByName('FORMAPAGTO').AsInteger := DM.FDQFormaPagto.FieldByName('CODIGO').AsInteger;
      end
      else
      begin
        Mensagem(2,'Forma de pagamento não encontrada');
        ComboBoxFormaPagamento.SetFocus;
        ComboBoxFormaPagamento.ItemIndex := 0;
        Exit;
      end;

      // Coloca o valor a ser lançado
      if not (ComboBoxTipoLanca.Text = EmptyStr) then
        DM.FDMTCaixa.FieldByName(ComboBoxTipoLanca.Text).AsFloat := StrToFloat(EditValor.Text)
      else
      begin
        Mensagem(2,'Tipo de lançamento obrigatotio.' + sLineBreak + 'Favor escolher entre Credito ou Debito');
        ComboBoxTipoLanca.ItemIndex := 0;
        Exit;
      end;

      LancarCaixa;

      ButtonAdicionarClick(Sender);

    finally
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoCaixa.CarregarFormasPagamento;
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

procedure TFrmLancamentoCaixa.CarregarHistoricos;
begin
  try
    try
      ComboBoxHistorico.Clear;

      DM.FDQHistoCaixa.Close;
      DM.FDQHistoCaixa.SQL.Text := 'SELECT * FROM HISTOCAIXA ';
      DM.FDQHistoCaixa.Open;

      DM.FDQHistoCaixa.First;
      while not DM.FDQHistoCaixa.Eof do
      begin
        ComboBoxHistorico.Items.Add(DM.FDQHistoCaixa.FieldByName('DESCRICAO').AsString);
        DM.FDQHistoCaixa.Next;
      end;

      ComboBoxHistorico.ItemIndex := 0;

    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoCaixa.FecharQuerys;
begin
  try
    try
      DM.FDQCaixa.Close;
      DM.FDQContadores.Close;
      DM.FDMTCaixa.Close;
      DM.FDQFormaPagto.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoCaixa.FormClose(Sender: TObject;
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

procedure TFrmLancamentoCaixa.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      FecharQuerys;
      LimparCampos;

      CarregarFormasPagamento;
      CarregarHistoricos;

      ButtonAdicionarClick(Sender);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoCaixa.LancarCaixa;
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

      // Arruma o codigo novo do caixa
      DM.FDMTCaixa.FieldByName('CODIGO').AsInteger := ContadorCaixa;
      DM.FDMTCaixa.FieldByName('DOCUMENTO').AsString := '3000' + ContadorCaixa.ToString;
      DM.FDMTCaixa.FieldByName('HORA').AsDateTime := Time;
      DM.FDMTCaixa.FieldByName('OBSERVACAOSISTEMA').AsString := 'LANÇAMENTO MANUAL DE CAIXA';
      DM.FDMTCaixa.FieldByName('DATALANCAMENTO').AsDateTime := Now;

      // Grava as informações
      DM.FDQCaixa.Insert;
      PassaInfoParaQuery;
      DM.FDQCaixa.Post;

      // Atualiza os contadores
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorCaixa;
      DM.FDQContadores.Post;

      Mensagem(1,'Lançamento de caixa realizado com sucesso');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoCaixa.LimparCampos;
var
  I : Integer;
begin
  try
    try
      for I := 0 to FrmLancamentoCaixa.ComponentCount -1 do
      begin  
         if Components[i] is TEdit then
          TEdit(FrmLancamentoCaixa.Components[i]).Clear;
        if Components[i] is TDateTimePicker then
          TDateTimePicker(FrmLancamentoCaixa.Components[i]).Date := Date;
        if Components[i] is TComboBox then
          TComboBox(FrmLancamentoCaixa.Components[i]).ItemIndex := 0;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmLancamentoCaixa.PassaInfoParaQuery;
var
  I: Integer;
  NomeCampo: string;
begin
  // Passa todos os campos para a query
  for I := 0 to (DM.FDMTCaixa.FieldCount - 1) do
  begin
    NomeCampo := DM.FDMTCaixa.Fields[I].FieldName;
    if (DM.FDQCaixa.FindField(NomeCampo) <> nil) then
      DM.FDQCaixa.FieldByName(NomeCampo).Value := DM.FDMTCaixa.FieldByName(NomeCampo).Value;
  end;
end;

end.
