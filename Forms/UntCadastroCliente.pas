unit UntCadastroCliente;

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
  Vcl.Bind.DBEngExt,
  Vcl.Bind.Editors,

  FireDAC.Stan.Param,

  UntBase,
  UntBibliotecaFuncoes,
  UntComponentesGerais,
  UntDataModule,
  UntConsultaCliente,

  Data.DB,
  Data.Bind.EngExt,
  Data.Bind.Components,
  Data.Bind.DBScope, UntReportModule;

type
  TFrmCadastroCliente = class(TFrmBase)
    GroupBoxClient: TGroupBox;
    Label1: TLabel;
    Label16: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label13: TLabel;
    Label17: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    LabelIdade: TLabel;
    Label18: TLabel;
    EditCodigo: TEdit;
    EditEmail: TEdit;
    EditRG: TEdit;
    EditCPF: TEdit;
    EditQueixa: TEdit;
    EditNome: TEdit;
    EditEndereco: TEdit;
    EditCep: TEdit;
    EditBairro: TEdit;
    EditTelefone: TEdit;
    EditCelular: TEdit;
    EditProfissao: TEdit;
    DateTimePickerDataNascimento: TDateTimePicker;
    ComboBoxStatus: TComboBox;
    ComboBoxEstadoCivil: TComboBox;
    EditObservacao: TEdit;
    GroupBoxInformacoesAdicionais: TGroupBox;
    PageControl: TPageControl;
    TabSheet1: TTabSheet;
    Label19: TLabel;
    Label20: TLabel;
    CheckBoxAntPatCardiaco: TCheckBox;
    CheckBoxAntPatAnticoncepcional: TCheckBox;
    CheckBoxAntPatCancer: TCheckBox;
    CheckBoxAntPatHipertensao: TCheckBox;
    CheckBoxAntPatDiabetico: TCheckBox;
    CheckBoxAntPatGestante: TCheckBox;
    CheckBoxAntPatOvarioPolicistico: TCheckBox;
    CheckBoxAntPatHipertirioidismo: TCheckBox;
    CheckBoxAntPatHipotireoidismo: TCheckBox;
    CheckBoxAntPatExposicaoSolar: TCheckBox;
    CheckBoxAntPatLenteContato: TCheckBox;
    CheckBoxAntPatImplanteDentario: TCheckBox;
    CheckBoxAntPatAparelhoOdontologico: TCheckBox;
    CheckBoxAntPatCirurgiaRecente: TCheckBox;
    CheckBoxAntPatPreenchimento: TCheckBox;
    CheckBoxAntPatDietaBalanceada: TCheckBox;
    CheckBoxAntPatFuma: TCheckBox;
    CheckBoxAntPatBotox: TCheckBox;
    EditOutrosAntecedentesPatologicos: TEdit;
    EditEstadoEmocional: TEdit;
    TabShee2: TTabSheet;
    Label21: TLabel;
    CheckBoxAntAlergicosCosmeticos: TCheckBox;
    CheckBoxAntAlergicosMaquiagem: TCheckBox;
    CheckBoxAntAlergicosAlimentacao: TCheckBox;
    EditOutrosAntecedentesAlergicos: TEdit;
    GroupBoxTiposDePele: TGroupBox;
    CheckBoxTipoPeleNormal: TCheckBox;
    CheckBoxTipoPeleMista: TCheckBox;
    CheckBoxTipoPeleSeca: TCheckBox;
    CheckBoxTipoPeleOleosa: TCheckBox;
    CheckBoxTipoPeleAcneica: TCheckBox;
    TabSheet3: TTabSheet;
    CheckBoxInteresseTratamentoRugasContornoOlhos: TCheckBox;
    CheckBoxInteresseTratamentoOlheiras: TCheckBox;
    CheckBoxInteresseTratamentoVasinhos: TCheckBox;
    CheckBoxInteresseTratamentoSardas: TCheckBox;
    CheckBoxInteresseTratamentoVerrugas: TCheckBox;
    CheckBoxInteresseTratamentoExcessoOleosidade: TCheckBox;
    CheckBoxInteresseTratamentoPapada: TCheckBox;
    CheckBoxInteresseTratamentoRessecamentoPele: TCheckBox;
    CheckBoxInteresseTratamentoFlacidez: TCheckBox;
    CheckBoxInteresseTratamentoPescocoColo: TCheckBox;
    CheckBoxInteresseTratamentoRugasTesta: TCheckBox;
    CheckBoxInteresseTratamentoManchas: TCheckBox;
    TabSheet4: TTabSheet;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    CheckBoxTonusMuscularNormal: TCheckBox;
    CheckBoxTonusMuscularDiminuido: TCheckBox;
    EditTratamentosEsteticosAnteriores: TEdit;
    CheckBoxHigieneFacialUmaOuDuasVezes: TCheckBox;
    CheckBoxHigieneFacialTresOuMais: TCheckBox;
    EditProdutosFaciais: TEdit;
    CheckBoxMaquiagemBase: TCheckBox;
    CheckBoxMaquiagemPo: TCheckBox;
    CheckBoxMaquiagemPoCompacto: TCheckBox;
    EditProtetorSolar: TEdit;
    EditHidratanteNoturno: TEdit;
    EditHidratanteDiurno: TEdit;
    EditObservacao1: TEdit;
    GroupBoxBotton: TGroupBox;
    ButtonAdicionar: TButton;
    ButtonConsultar: TButton;
    ButtonGravar: TButton;
    ComboBoxCidade: TComboBox;
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
    LinkControlToField10: TLinkControlToField;
    LinkControlToField11: TLinkControlToField;
    LinkFillControlToField1: TLinkFillControlToField;
    LinkFillControlToField2: TLinkFillControlToField;
    LinkFillControlToField3: TLinkFillControlToField;
    LinkControlToField12: TLinkControlToField;
    LinkControlToField13: TLinkControlToField;
    LinkControlToField14: TLinkControlToField;
    LinkControlToField15: TLinkControlToField;
    LinkControlToField16: TLinkControlToField;
    LinkControlToField17: TLinkControlToField;
    LinkControlToField18: TLinkControlToField;
    LinkControlToField19: TLinkControlToField;
    LinkControlToField20: TLinkControlToField;
    LinkControlToField21: TLinkControlToField;
    LinkControlToField22: TLinkControlToField;
    LinkControlToField23: TLinkControlToField;
    LinkControlToField24: TLinkControlToField;
    LinkControlToField25: TLinkControlToField;
    LinkControlToField26: TLinkControlToField;
    LinkControlToField27: TLinkControlToField;
    LinkControlToField28: TLinkControlToField;
    LinkControlToField29: TLinkControlToField;
    LinkControlToField31: TLinkControlToField;
    LinkControlToField32: TLinkControlToField;
    LinkControlToField33: TLinkControlToField;
    LinkControlToField34: TLinkControlToField;
    LinkControlToField35: TLinkControlToField;
    LinkControlToField36: TLinkControlToField;
    LinkControlToField37: TLinkControlToField;
    LinkControlToField38: TLinkControlToField;
    LinkControlToField39: TLinkControlToField;
    LinkControlToField40: TLinkControlToField;
    LinkControlToField41: TLinkControlToField;
    LinkControlToField42: TLinkControlToField;
    LinkControlToField43: TLinkControlToField;
    LinkControlToField45: TLinkControlToField;
    LinkControlToField46: TLinkControlToField;
    LinkControlToField47: TLinkControlToField;
    LinkControlToField48: TLinkControlToField;
    LinkControlToField49: TLinkControlToField;
    LinkControlToField50: TLinkControlToField;
    LinkControlToField51: TLinkControlToField;
    LinkControlToField52: TLinkControlToField;
    LinkControlToField53: TLinkControlToField;
    LinkControlToField54: TLinkControlToField;
    LinkControlToField55: TLinkControlToField;
    LinkControlToField56: TLinkControlToField;
    LinkControlToField57: TLinkControlToField;
    LinkControlToField58: TLinkControlToField;
    LinkControlToField59: TLinkControlToField;
    LinkControlToField60: TLinkControlToField;
    LinkControlToField61: TLinkControlToField;
    LinkControlToField62: TLinkControlToField;
    LinkControlToField63: TLinkControlToField;
    LinkControlToField64: TLinkControlToField;
    LinkControlToField65: TLinkControlToField;
    LinkControlToField66: TLinkControlToField;
    LinkControlToField67: TLinkControlToField;
    LinkControlToField68: TLinkControlToField;
    LinkControlToField30: TLinkControlToField;
    LinkControlToField44: TLinkControlToField;
    ButtonFichaCliente: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonAdicionarClick(Sender: TObject);
    procedure ButtonConsultarClick(Sender: TObject);
    procedure ButtonGravarClick(Sender: TObject);
    procedure EditCodigoExit(Sender: TObject);
    procedure DateTimePickerDataNascimentoChange(Sender: TObject);
    procedure EditCepExit(Sender: TObject);
    procedure EditTelefoneExit(Sender: TObject);
    procedure EditCelularExit(Sender: TObject);
    procedure EditCPFExit(Sender: TObject);
    procedure EditObservacaoKeyPress(Sender: TObject; var Key: Char);
    procedure EditObservacao1KeyPress(Sender: TObject; var Key: Char);
    procedure EditObservacao1Exit(Sender: TObject);
    procedure ButtonFichaClienteClick(Sender: TObject);
  private
    procedure LimparCampos;
    procedure FecharQuerys;
    procedure GravarCliente;
    procedure AtualizarCadastro;
    function VerificaClienteCadastrado : Boolean;
    procedure CarregaCidades;
    procedure PassaInfoParaQuery;
    procedure PassaInfoParaMemoryTable;
    procedure AtualizaIdade;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroCliente: TFrmCadastroCliente;

implementation

{$R *.dfm}

procedure TFrmCadastroCliente.AtualizaIdade;
begin
  try
    try
      LabelIdade.Caption := IntToStr(CalcularIdade(DateTimePickerDataNascimento.Date)) + ' Anos'
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroCliente.AtualizarCadastro;
begin
  try
    try
      // Abre a query com o registro do cliente
      DM.FDQCliente.Close;
      DM.FDQCliente.SQL.Text := 'SELECT * FROM CLIENTE WHERE CODIGO = :CODIGO';
      DM.FDQCliente.Params.ParamByName('CODIGO').AsInteger := StrToInt(EditCodigo.Text);
      DM.FDQCliente.Open;

      DM.FDQCliente.Edit;

      // Passa todos os campos para a query
      PassaInfoParaQuery;

      DM.FDQCliente.Post;

      Mensagem(1,'Cliente atualizado com sucesso');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroCliente.ButtonAdicionarClick(Sender: TObject);
begin
  inherited;
  try
    try
      // Define a pagina ativa do page control
      PageControl.ActivePageIndex := 0;

      FecharQuerys;
      LimparCampos;

      DM.FDMTCliente.Open;
      DM.FDMTCliente.Insert;

      DM.FDMTCliente.FieldByName('DATANASCIMENTO').AsDateTime := Date;

      EditNome.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroCliente.ButtonConsultarClick(Sender: TObject);
begin
  inherited;
  try
    try
      FecharQuerys;
      LimparCampos;
      FrmConsultaCliente.ShowModal;
    finally
      if not (DM.FDQCliente.Eof) then
      begin
        DM.FDMTCliente.Open;
        DM.FDMTCliente.Insert;

        PassaInfoParaMemoryTable;

        DM.FDMTCliente.Post;
        DM.FDMTCliente.Edit;
      end
      else
      begin
        // Se nao tiver a informação ele abre para incluir um novo registro
        ButtonAdicionarClick(Sender);
      end;

      AtualizaIdade;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroCliente.ButtonFichaClienteClick(Sender: TObject);
begin
  inherited;
  try
    try
      if EditCodigo.Text = EmptyStr then
      begin
        Mensagem(2,'Deve-se consultar um cliente para imprimir a ficha');
        ButtonConsultar.SetFocus;
        Exit;
      end
      else
      begin
        DMRelatorios.FDQFichaCliente.Close;
        DMRelatorios.FDQFichaCliente.SQL.Text := 'SELECT * FROM CLIENTE WHERE CODIGO = :CODIGO';
        DMRelatorios.FDQFichaCliente.Params.ParamByName('CODIGO').AsString := EditCodigo.Text;
        DMRelatorios.FDQFichaCliente.Open;

        if DMRelatorios.FDQFichaCliente.Eof then
        begin
          Mensagem(3,'Inconsistencia Desconhecida' + sLineBreak + 'Entrar em contato com o desenvolvedor');
        end
        else
        begin
          DMRelatorios.FDQFichaCliente.Edit;
          DMRelatorios.FDQFichaCliente.FieldByName('IDADE').AsString := LabelIdade.Caption;
          DMRelatorios.FDQFichaCliente.Post;

          GerarRelatorio(DMRelatorios.ReportFichaCliente);
          ExportarRelatorioPDF(DMRelatorios.ReportFichaCliente, DMRelatorios.PDFExport);
        end;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroCliente.ButtonGravarClick(Sender: TObject);
begin
  inherited;
  try
    try
      // Se nao tiver nome entao nao vai gravar
      if EditNome.Text = EmptyStr then
        Exit;

      // Se o codigo estiver vazio ele grava um novo registro senao ele atualiza o registro
      if EditCodigo.Text = EmptyStr then
      begin
        // Se nao encontrar o cliente ele cadastra
        if VerificaClienteCadastrado then
        begin
          GravarCliente;
        end;
      end
      else
      begin
        AtualizarCadastro;
      end;

      ButtonAdicionar.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroCliente.CarregaCidades;
begin
  try
    try
      // Carregar as Cidades
      DM.FDQCidade.Close;
      DM.FDQCidade.SQL.Text := 'SELECT * FROM CIDADE ORDER BY NOME, ESTADO';
      DM.FDQCidade.Open;
      DM.FDQCidade.First;

      ComboBoxCidade.Clear;

      while not (DM.FDQCidade.Eof) do
      begin
        ComboBoxCidade.Items.Add(DM.FDQCidade.FieldByName('NOME').AsString + ' - ' + DM.FDQCidade.FieldByName('ESTADO').AsString);
        DM.FDQCidade.Next;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroCliente.DateTimePickerDataNascimentoChange(
  Sender: TObject);
begin
  inherited;
  try
    try
      AtualizaIdade;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroCliente.EditCelularExit(Sender: TObject);
begin
  inherited;
  try
    try
      if not (EditCelular.Text = EmptyStr) then
        DM.FDMTCliente.FieldByName('CELULAR').AsString := ArrumarTelefone(EditCelular.Text);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroCliente.EditCepExit(Sender: TObject);
begin
  inherited;
  try
    try
      if not (EditCep.Text = EmptyStr) then
        DM.FDMTCliente.FieldByName('CEP').AsString := ArrumarCep(EditCep.Text);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroCliente.EditCodigoExit(Sender: TObject);
begin
  inherited;
  try
    try
      // Se tiver colocado algum codigo ele pesquisa o cliente
      if not (EditCodigo.Text = EmptyStr) then
      begin
        DM.FDQCliente.Close;
        DM.FDQCliente.SQL.Text := 'SELECT * FROM CLIENTE WHERE CODIGO = :CODIGO';
        DM.FDQCliente.Params.ParamByName('CODIGO').AsString := EditCodigo.Text;
        DM.FDQCliente.Open;

        // Se nao tiver achado o cliente ele inicia um novo
        if DM.FDQCliente.Eof then
        begin
          ButtonAdicionarClick(Sender);
        end
        else
        begin
          // Senao vai colocar as informaçoes do cliente na tela
          PassaInfoParaMemoryTable;
        end;

        AtualizaIdade;
      end
      else
      begin
        // Se o codigo estiver vazio ele limpa tudo e começa do zero
        ButtonAdicionarClick(Sender);
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroCliente.EditCPFExit(Sender: TObject);
begin
  inherited;
  try
    try
      if not (EditCPF.Text = EmptyStr) then
      begin
        // Verifica se o CPF tem 11 Caracteres
        if ValidaCPF(RemoveInvalid(ConstArrayNumeros,EditCPF.Text)) then
        begin
          DM.FDMTCliente.FieldByName('CPF').AsString := ArrumarCPF(EditCPF.Text);
        end
        else
        begin
          Mensagem(2,'CPF digitado está incorreto');
          EditCPF.SetFocus;
        end;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroCliente.EditObservacao1Exit(Sender: TObject);
begin
  inherited;
  try
    try
      ButtonGravar.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroCliente.EditObservacao1KeyPress(Sender: TObject;
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

procedure TFrmCadastroCliente.EditObservacaoKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmCadastroCliente.EditTelefoneExit(Sender: TObject);
begin
  inherited;
  try
    try
      if not (EditTelefone.Text = EmptyStr) then
        DM.FDMTCliente.FieldByName('TELEFONE').AsString := ArrumarTelefone(EditTelefone.Text);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroCliente.FecharQuerys;
begin
  try
    try
      DM.FDQCliente.Close;
      DM.FDQContadores.Close;
      DM.FDQConsulta.Close;
      DM.FDMTCliente.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  try
    try
      // Fecha as conexoes
      FecharQuerys;

      // Limpa os campos
      LimparCampos;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroCliente.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      CarregaCidades;
      ButtonAdicionarClick(Sender);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroCliente.GravarCliente;
var
  ContadorCliente : Integer;
begin
  try
    try
      // Abre a query do cliente
      DM.FDQCliente.Close;
      DM.FDQCliente.SQL.Text := 'SELECT * FROM CLIENTE';
      DM.FDQCliente.Open;
      DM.FDQCliente.Insert;

      // Abre a query dos contadores
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;
      DM.FDQContadores.Locate('TABELA','CLIENTE',[]);
      ContadorCliente := DM.FDQContadores.FieldByName('VALOR').AsInteger + 1;

      // Coloca os campos faltando no memoryTable
      DM.FDMTCliente.FieldByName('CODIGO').AsInteger := ContadorCliente;
      DM.FDMTCliente.FieldByName('DATACADASTRO').AsDateTime := Date;

      if ComboBoxStatus.Text = EmptyStr then
        DM.FDMTCliente.FieldByName('STATUS').AsString := 'ATIVO'
      else
        DM.FDMTCliente.FieldByName('STATUS').AsString := ComboBoxStatus.Text;

      PassaInfoParaQuery;

      // Salva o registro
      DM.FDQCliente.Post;

      // Atualiza os contadores
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorCliente;
      DM.FDQContadores.Post;

      Mensagem(1,'Cliente cadastrado com sucesso');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroCliente.LimparCampos;
var
  I : Integer;
begin
  try
    try
      for I := 0 to FrmCadastroCliente.ComponentCount - 1 do
      begin
        if Components[i] is TEdit then
          TEdit(FrmCadastroCliente.Components[i]).Clear;
        if Components[i] is TCheckBox then
          TCheckBox(FrmCadastroCliente.Components[i]).Checked := False;
        if Components[i] is TDateTimePicker then
          TDateTimePicker(FrmCadastroCliente.Components[i]).Date := Date;
        if Components[i] is TComboBox then
          TComboBox(FrmCadastroCliente.Components[i]).ItemIndex := 0;
      end;

      LabelIdade.Caption := '- Anos';
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

function TFrmCadastroCliente.VerificaClienteCadastrado : Boolean;
begin
  try
    try
      // Consulta o cliente para ver se ja esta cadastrado
      DM.FDQConsulta.Close;
      DM.FDQConsulta.SQL.Text := 'SELECT * FROM CLIENTE WHERE ';

      // Se tiver CPF ele pesquisa o CPF senão vai pesquisar pelo nome
      if not (EditCPF.Text = EmptyStr) then
      begin
        DM.FDQConsulta.SQL.Text := DM.FDQConsulta.SQL.Text + ' CPF = :CPF ';
        DM.FDQConsulta.Params.ParamByName('CPF').AsString := EditCPF.Text;
      end
      else
      begin
        DM.FDQConsulta.SQL.Text := DM.FDQConsulta.SQL.Text + ' NOME = :NOME ';
        DM.FDQConsulta.Params.ParamByName('NOME').AsString := EditNome.Text;
      end;

      DM.FDQConsulta.Open;

      // Se a consulta estiver vazia é porque nao tem o cliente cadastrado
      if DM.FDQConsulta.Eof then
      begin
        Result := True
      end
      else
      begin
        Mensagem(2,'Cliente já cadastrado' + sLineBreak + 'Codigo do cliente: ' + DM.FDQConsulta.FieldByName('CODIGO').AsString);
        Result := False;
      end;
    finally

    end;
  Except on E:Exception do
    begin
      Mensagem(3,E.ToString);
      Result := False;
    end;
  end;
end;

procedure TFrmCadastroCliente.PassaInfoParaQuery;
var
  I: Integer;
  NomeCampo: string;
begin
  // Passa todos os campos para a query
  for I := 0 to (DM.FDMTCliente.FieldCount - 1) do
  begin
    NomeCampo := DM.FDMTCliente.Fields[I].FieldName;
    if (DM.FDQCliente.FindField(NomeCampo) <> nil) then
      DM.FDQCliente.FieldByName(NomeCampo).Value := DM.FDMTCliente.FieldByName(NomeCampo).Value;
  end;
end;

procedure TFrmCadastroCliente.PassaInfoParaMemoryTable;
var
  I: Integer;
  NomeCampo: string;
begin
  // Se tiver informação ele passa para o memorytable
  for I := 0 to (DM.FDQCliente.FieldCount - 1) do
  begin
    NomeCampo := DM.FDQCliente.Fields[I].FieldName;
    if (DM.FDMTCliente.FindField(NomeCampo) <> nil) then
      DM.FDMTCliente.FieldByName(NomeCampo).Value := DM.FDQCliente.FieldByName(NomeCampo).Value;
  end;
end;


end.
