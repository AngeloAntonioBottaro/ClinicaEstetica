unit UntCadastroFormaPagamento;

interface

uses

  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Rtti,
  System.Bindings.Outputs,

  Vcl.Bind.Editors,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
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
  TFrmCadastroFormaPagamento = class(TFrmBase)
    GroupBoxGrid: TGroupBox;
    DBGridFormaPagamento: TDBGrid;
    GroupBoxInformacoes: TGroupBox;
    LabelCodigo: TLabel;
    LabelDescricao: TLabel;
    LabelStatus: TLabel;
    EditCodigo: TEdit;
    EditDescricao: TEdit;
    GroupBoxTipoLancamento: TGroupBox;
    RadioButtonCaixa: TRadioButton;
    RadioButtonFinanceiro: TRadioButton;
    RadioButtonSemControle: TRadioButton;
    RadioButtonLancaParcelado: TRadioButton;
    ComboBoxStatus: TComboBox;
    GroupBoxBotton: TGroupBox;
    ButtonAdicionar: TButton;
    ButtonGravar: TButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    procedure FormShow(Sender: TObject);
    procedure ButtonAdicionarClick(Sender: TObject);
    procedure ButtonGravarClick(Sender: TObject);
    procedure DBGridFormaPagamentoCellClick(Column: TColumn);
    procedure DBGridFormaPagamentoColEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure LimparCampos;
    procedure FecharQuerys;
    procedure ConsultaFormasPagamento;
    procedure PassaInfoParaQuery;
    procedure PassaInfoParaMemoryTable;
    procedure GravarFormaPagamento;
    procedure AtualizarFormaPagamento;
    function VerificaFormaPagamentoCadastrado : Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroFormaPagamento: TFrmCadastroFormaPagamento;

implementation

{$R *.dfm}

procedure TFrmCadastroFormaPagamento.AtualizarFormaPagamento;
begin
  try
    try
      // Abre a query com o registro da forma de pagamento
      DM.FDQFormaPagto.Close;
      DM.FDQFormaPagto.SQL.Text := 'SELECT * FROM FORMAPAGTO WHERE CODIGO = :CODIGO';
      DM.FDQFormaPagto.Params.ParamByName('CODIGO').AsInteger := StrToInt(EditCodigo.Text);
      DM.FDQFormaPagto.Open;

      DM.FDQFormaPagto.Edit;

      // Passa todos os campos para a query
      PassaInfoParaQuery;

      DM.FDQFormaPagto.Post;

      Mensagem(1,'Forma de pagamento atualizada com sucesso');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFormaPagamento.ButtonAdicionarClick(Sender: TObject);
begin
  inherited;
  try
    try
      LimparCampos;

      DM.FDMTFormaPagto.First;
      DM.FDMTFormaPagto.Insert;

      EditDescricao.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFormaPagamento.ButtonGravarClick(Sender: TObject);
begin
  inherited;
  try
    try
      // Se nao tiver nome entao nao vai gravar
      if EditDescricao.Text = EmptyStr then
        Exit;

      // Se o codigo estiver vazio ele grava um novo registro senao ele atualiza o registro
      if EditCodigo.Text = EmptyStr then
      begin
        // Se nao encontrar a forma de pagamento ele cadastra
        if VerificaFormaPagamentoCadastrado then
        begin
          GravarFormaPagamento;
        end;
      end
      else
      begin
        AtualizarFormaPagamento;
      end;

      DBGridFormaPagamento.Refresh;
      DM.FDMTFormaPagto.ApplyUpdates;
      DM.FDMTFormaPagto.Refresh;

      ButtonAdicionar.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFormaPagamento.ConsultaFormasPagamento;
begin
  try
    try
      DM.FDQFormaPagto.Close;
      DM.FDQFormaPagto.SQL.Text := 'SELECT * FROM FORMAPAGTO ORDER BY CODIGO';
      DM.FDQFormaPagto.Open;

      DM.FDMTFormaPagto.Close;
      DM.FDMTFormaPagto.Open;

      DM.FDQFormaPagto.First;
      while not (DM.FDQFormaPagto.Eof)do
      begin
        DM.FDMTFormaPagto.Insert;
        PassaInfoParaMemoryTable;
        DM.FDMTFormaPagto.Post;

        DM.FDQFormaPagto.Next;
      end;

      DBGridFormaPagamento.Refresh;
      DM.FDMTFormaPagto.ApplyUpdates;
      DM.FDMTFormaPagto.Refresh;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFormaPagamento.DBGridFormaPagamentoCellClick(
  Column: TColumn);
begin
  inherited;
  try
    try
      RadioButtonCaixa.checked := DM.FDMTFormaPagto.FieldByName('LANCACAIXA').AsBoolean;
	    RadioButtonFinanceiro.checked := DM.FDMTFormaPagto.FieldByName('LANCAFINANCEIRO').AsBoolean;
	    RadioButtonSemControle.checked := DM.FDMTFormaPagto.FieldByName('LANCASEMCONTROLE').AsBoolean;
	    RadioButtonLancaParcelado.checked := DM.FDMTFormaPagto.FieldByName('LANCAPARCELADO').AsBoolean;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFormaPagamento.DBGridFormaPagamentoColEnter(
  Sender: TObject);
begin
  inherited;
  try
    try
      RadioButtonCaixa.checked := DM.FDMTFormaPagto.FieldByName('LANCACAIXA').AsBoolean;
	    RadioButtonFinanceiro.checked := DM.FDMTFormaPagto.FieldByName('LANCAFINANCEIRO').AsBoolean;
	    RadioButtonSemControle.checked := DM.FDMTFormaPagto.FieldByName('LANCASEMCONTROLE').AsBoolean;
	    RadioButtonLancaParcelado.checked := DM.FDMTFormaPagto.FieldByName('LANCAPARCELADO').AsBoolean;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFormaPagamento.FecharQuerys;
begin
  try
    try
      DM.FDQFormaPagto.Close;
      DM.FDQContadores.Close;
      DM.FDQConsulta.Close;
      DM.FDMTFormaPagto.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFormaPagamento.FormClose(Sender: TObject;
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

procedure TFrmCadastroFormaPagamento.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      FecharQuerys;
      ConsultaFormasPagamento;
      ButtonAdicionarClick(Sender);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFormaPagamento.GravarFormaPagamento;
var
  ContadorFormapagto : Integer;
begin
  try
    try
      // Abre a query da forma de pagamento
      DM.FDQFormaPagto.Close;
      DM.FDQFormaPagto.SQL.Text := 'SELECT * FROM FORMAPAGTO';
      DM.FDQFormaPagto.Open;
      DM.FDQFormaPagto.Insert;

      // Abre a query dos contadores
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;
      DM.FDQContadores.Locate('TABELA','FORMAPAGTO',[]);
      ContadorFormapagto := DM.FDQContadores.FieldByName('VALOR').AsInteger + 1;

      // Coloca os campos faltando no memoryTable
      DM.FDMTFormaPagto.FieldByName('CODIGO').AsInteger := ContadorFormapagto;
      DM.FDMTFormaPagto.FieldByName('LANCACAIXA').AsBoolean := RadioButtonCaixa.checked;
      DM.FDMTFormaPagto.FieldByName('LANCAFINANCEIRO').AsBoolean := RadioButtonFinanceiro.checked;
      DM.FDMTFormaPagto.FieldByName('LANCASEMCONTROLE').AsBoolean := RadioButtonSemControle.checked;
      DM.FDMTFormaPagto.FieldByName('LANCAPARCELADO').AsBoolean := RadioButtonLancaParcelado.checked;

      if ComboBoxStatus.Text = EmptyStr then
        DM.FDMTFormaPagto.FieldByName('STATUS').AsString := 'ATIVO'
      else
        DM.FDMTFormaPagto.FieldByName('STATUS').AsString := ComboBoxStatus.Text;

      PassaInfoParaQuery;

      // Salva o registro
      DM.FDQFormaPagto.Post;

      // Atualiza os contadores
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorFormapagto;
      DM.FDQContadores.Post;

      Mensagem(1,'Forma de pagamento cadastrada com sucesso');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFormaPagamento.LimparCampos;
var
  I : Integer;
begin
  try
    try
      for I := 0 to FrmCadastroFormaPagamento.ComponentCount - 1 do
      begin
        if Components[i] is TEdit then
          TEdit(FrmCadastroFormaPagamento.Components[i]).Clear;
        if Components[i] is TRadioButton then
          TRadioButton(FrmCadastroFormaPagamento.Components[i]).Checked := False;
        if Components[i] is TComboBox then
          TComboBox(FrmCadastroFormaPagamento.Components[i]).ItemIndex := 0;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFormaPagamento.PassaInfoParaMemoryTable;
var
  I: Integer;
  NomeCampo: string;
begin
  // Passa todos os campos para o memorytable
  for I := 0 to (DM.FDQFormaPagto.FieldCount - 1) do
  begin
    NomeCampo := DM.FDQFormaPagto.Fields[I].FieldName;
    if (DM.FDMTFormaPagto.FindField(NomeCampo) <> nil) then
      DM.FDMTFormaPagto.FieldByName(NomeCampo).Value := DM.FDQFormaPagto.FieldByName(NomeCampo).Value;
  end;

  RadioButtonCaixa.checked := DM.FDQFormaPagto.FieldByName('LANCACAIXA').AsBoolean;
	RadioButtonFinanceiro.checked := DM.FDQFormaPagto.FieldByName('LANCAFINANCEIRO').AsBoolean;
	RadioButtonSemControle.checked := DM.FDQFormaPagto.FieldByName('LANCASEMCONTROLE').AsBoolean;
	RadioButtonLancaParcelado.checked := DM.FDQFormaPagto.FieldByName('LANCAPARCELADO').AsBoolean;
end;

procedure TFrmCadastroFormaPagamento.PassaInfoParaQuery;
var
  I: Integer;
  NomeCampo: string;
begin
  // Passa todos os campos para a query
  for I := 0 to (DM.FDMTFormaPagto.FieldCount - 1) do
  begin
    NomeCampo := DM.FDMTFormaPagto.Fields[I].FieldName;
    if (DM.FDQFormaPagto.FindField(NomeCampo) <> nil) then
      DM.FDQFormaPagto.FieldByName(NomeCampo).Value := DM.FDMTFormaPagto.FieldByName(NomeCampo).Value;
  end;

  DM.FDQFormaPagto.FieldByName('LANCACAIXA').AsBoolean := RadioButtonCaixa.checked;
  DM.FDQFormaPagto.FieldByName('LANCAFINANCEIRO').AsBoolean := RadioButtonFinanceiro.checked;
  DM.FDQFormaPagto.FieldByName('LANCASEMCONTROLE').AsBoolean := RadioButtonSemControle.checked;
  DM.FDQFormaPagto.FieldByName('LANCAPARCELADO').AsBoolean := RadioButtonLancaParcelado.checked;
end;

function TFrmCadastroFormaPagamento.VerificaFormaPagamentoCadastrado: Boolean;
begin
  try
    try
      DM.FDQConsulta.Close;
      DM.FDQConsulta.SQL.Text := 'SELECT * FROM FORMAPAGTO WHERE DESCRICAO = :DESCRICAO ';
      DM.FDQConsulta.Params.ParamByName('DESCRICAO').AsString := EditDescricao.Text;
      DM.FDQConsulta.Open;

      if DM.FDQConsulta.Eof then
      begin
        Result := True
      end
      else
      begin
        Mensagem(2,'Forma de pagamento já cadastrada' + sLineBreak + 'Codigo da forma de pagamento: ' + DM.FDQConsulta.FieldByName('CODIGO').AsString);
        Result := False;
      end;
    finally

    end;
  Except on E:Exception do
    begin
      Result := False;
      Mensagem(3,E.ToString);
    end;
  end;
end;

end.
