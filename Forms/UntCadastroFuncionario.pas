unit UntCadastroFuncionario;

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
  UntConsultaFuncionario,

  Data.DB,
  Data.Bind.EngExt,
  Data.Bind.Components,
  Data.Bind.DBScope;

type
  TFrmCadastroFuncionario = class(TFrmBase)
    GroupBoxBotton: TGroupBox;
    ButtonAdicionar: TButton;
    ButtonConsultar: TButton;
    ButtonGravar: TButton;
    GroupBoxInformacoesPrincipais: TGroupBox;
    Label2: TLabel;
    EditNome: TEdit;
    Label5: TLabel;
    DateTimePickerDataNascimento: TDateTimePicker;
    LabelIdade: TLabel;
    Label6: TLabel;
    EditEndereco: TEdit;
    Label3: TLabel;
    Label7: TLabel;
    EditBairro: TEdit;
    Label8: TLabel;
    EditCep: TEdit;
    Label9: TLabel;
    ComboBoxCidade: TComboBox;
    Label10: TLabel;
    EditTelefone: TEdit;
    Label11: TLabel;
    EditCelular: TEdit;
    Label12: TLabel;
    ComboBoxEstadoCivil: TComboBox;
    Label13: TLabel;
    EditCPF: TEdit;
    Label14: TLabel;
    EditRG: TEdit;
    Label16: TLabel;
    EditEmail: TEdit;
    Label18: TLabel;
    EditObservacao: TEdit;
    EditObservacao1: TEdit;
    Label1: TLabel;
    EditCodigo: TEdit;
    Label4: TLabel;
    ComboBoxStatus: TComboBox;
    GroupBoxInformacoesAdicionais: TGroupBox;
    PageControl: TPageControl;
    TabSheet1: TTabSheet;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    LinkFillControlToField2: TLinkFillControlToField;
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
    LinkControlToField12: TLinkControlToField;
    LinkControlToField13: TLinkControlToField;
    GroupBox1: TGroupBox;
    RadioButtonSecretaria: TRadioButton;
    RadioButtonEsteticista: TRadioButton;
    RadioButtonMedico: TRadioButton;
    CheckBoxAgenda: TCheckBox;
    LinkControlToField14: TLinkControlToField;
    LinkFillControlToField3: TLinkFillControlToField;
    procedure ButtonAdicionarClick(Sender: TObject);
    procedure ButtonGravarClick(Sender: TObject);
    procedure ButtonConsultarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure EditCodigoExit(Sender: TObject);
    procedure EditCepExit(Sender: TObject);
    procedure EditTelefoneExit(Sender: TObject);
    procedure EditCelularExit(Sender: TObject);
    procedure EditCPFExit(Sender: TObject);
    procedure EditObservacaoKeyPress(Sender: TObject; var Key: Char);
    procedure EditObservacao1KeyPress(Sender: TObject; var Key: Char);
    procedure EditObservacao1Exit(Sender: TObject);
    procedure DateTimePickerDataNascimentoChange(Sender: TObject);
  private
    procedure LimparCampos;
    procedure FecharQuerys;
    procedure GravarFuncionario;
    procedure AtualizarCadastro;
    function VerificaFuncionarioCadastrado : Boolean;
    procedure CarregaCidades;
    procedure PassaInfoParaQuery;
    procedure PassaInfoParaMemoryTable;
    procedure AtualizaIdade;
    procedure ArrumaTipoFuncionario;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroFuncionario: TFrmCadastroFuncionario;

implementation

{$R *.dfm}

{ TFrmBase1 }

procedure TFrmCadastroFuncionario.ArrumaTipoFuncionario;
begin
  try
    try

      if DM.FDMTFuncionario.FieldByName('TIPO').AsInteger = 1 then
        RadioButtonSecretaria.Checked := True
      else if DM.FDMTFuncionario.FieldByName('TIPO').AsInteger = 2 then
        RadioButtonEsteticista.Checked := True
      else if DM.FDMTFuncionario.FieldByName('TIPO').AsInteger = 3 then
        RadioButtonMedico.Checked := True;

    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFuncionario.AtualizaIdade;
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

procedure TFrmCadastroFuncionario.AtualizarCadastro;
begin
  try
    try
      // Abre a query com o registro do funcionario
      DM.FDQFuncionario.Close;
      DM.FDQFuncionario.SQL.Text := 'SELECT * FROM FUNCIONARIO WHERE CODIGO = :CODIGO';
      DM.FDQFuncionario.Params.ParamByName('CODIGO').AsInteger := StrToInt(EditCodigo.Text);
      DM.FDQFuncionario.Open;

      DM.FDQFuncionario.Edit;

      // Passa todos os campos para a query
      PassaInfoParaQuery;

      DM.FDQFuncionario.Post;

      Mensagem(1,'Funcionario atualizado com sucesso');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFuncionario.ButtonAdicionarClick(Sender: TObject);
begin
  inherited;
  try
    try
      // Define a pagina ativa do page control
      PageControl.ActivePageIndex := 0;

      FecharQuerys;
      LimparCampos;

      DM.FDMTFuncionario.Open;
      DM.FDMTFuncionario.Insert;

      DM.FDMTFuncionario.FieldByName('DATANASCIMENTO').AsDateTime := Date;

      EditNome.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFuncionario.ButtonConsultarClick(Sender: TObject);
begin
  inherited;
  try
    try
      FecharQuerys;
      LimparCampos;
      FrmConsultaFuncionario.ShowModal;
    finally
      if not (DM.FDQFuncionario.Eof) then
      begin
        DM.FDMTFuncionario.Open;
        DM.FDMTFuncionario.Insert;

        PassaInfoParaMemoryTable;

        DM.FDMTFuncionario.Post;
        DM.FDMTFuncionario.Edit;
      end
      else
      begin
        // Se nao tiver a informação ele abre para incluir um novo registro
        ButtonAdicionarClick(Sender);
      end;

      AtualizaIdade;

      ArrumaTipoFuncionario;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFuncionario.ButtonGravarClick(Sender: TObject);
begin
  inherited;
  try
    try
      // Se nao tiver nome entao nao vai gravar
      if EditNome.Text = EmptyStr then
        Exit;

      // Coloca o tipo
      if RadioButtonSecretaria.Checked then
        DM.FDMTFuncionario.FieldByName('TIPO').AsInteger := 1
      else if RadioButtonEsteticista.Checked then
        DM.FDMTFuncionario.FieldByName('TIPO').AsInteger := 2
      else if RadioButtonMedico.Checked then
        DM.FDMTFuncionario.FieldByName('TIPO').AsInteger := 3;

      // Se o codigo estiver vazio ele grava um novo registro senao ele atualiza o registro
      if EditCodigo.Text = EmptyStr then
      begin
        // Se nao encontrar o cliente ele cadastra
        if VerificaFuncionarioCadastrado then
        begin
          GravarFuncionario;
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

procedure TFrmCadastroFuncionario.CarregaCidades;
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

procedure TFrmCadastroFuncionario.DateTimePickerDataNascimentoChange(Sender: TObject);
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

procedure TFrmCadastroFuncionario.EditCelularExit(Sender: TObject);
begin
  inherited;
  try
    try
      if not (EditCelular.Text = EmptyStr) then
        DM.FDMTFuncionario.FieldByName('CELULAR').AsString := ArrumarTelefone(EditCelular.Text);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFuncionario.EditCepExit(Sender: TObject);
begin
  inherited;
  try
    try
      if not (EditCep.Text = EmptyStr) then
        DM.FDMTFuncionario.FieldByName('CEP').AsString := ArrumarCep(EditCep.Text);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFuncionario.EditCodigoExit(Sender: TObject);
begin
  inherited;
  try
    try
      // Se tiver colocado algum codigo ele pesquisa o Funcionario
      if not (EditCodigo.Text = EmptyStr) then
      begin
        DM.FDQFuncionario.Close;
        DM.FDQFuncionario.SQL.Text := 'SELECT * FROM FUNCIONARIO WHERE CODIGO = :CODIGO';
        DM.FDQFuncionario.Params.ParamByName('CODIGO').AsString := EditCodigo.Text;
        DM.FDQFuncionario.Open;

        // Se nao tiver achado o funcionario ele inicia um novo
        if DM.FDQFuncionario.Eof then
        begin
          ButtonAdicionarClick(Sender);
        end
        else
        begin
          // Senao vai colocar as informaçoes do funcionario na tela
          PassaInfoParaMemoryTable;
        end;

        AtualizaIdade;

        ArrumaTipoFuncionario;
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

procedure TFrmCadastroFuncionario.EditCPFExit(Sender: TObject);
begin
  inherited;
  try
    try
      if not (EditCPF.Text = EmptyStr) then
      begin
        // Verifica se o CPF tem 11 Caracteres
        if ValidaCPF(RemoveInvalid(ConstArrayNumeros,EditCPF.Text)) then
        begin
          DM.FDMTFuncionario.FieldByName('CPF').AsString := ArrumarCPF(EditCPF.Text);
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

procedure TFrmCadastroFuncionario.EditObservacao1Exit(Sender: TObject);
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

procedure TFrmCadastroFuncionario.EditObservacao1KeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmCadastroFuncionario.EditObservacaoKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmCadastroFuncionario.EditTelefoneExit(Sender: TObject);
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

procedure TFrmCadastroFuncionario.FecharQuerys;
begin
  try
    try
      DM.FDQFuncionario.Close;
      DM.FDQContadores.Close;
      DM.FDQConsulta.Close;
      DM.FDMTFuncionario.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFuncionario.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFrmCadastroFuncionario.FormShow(Sender: TObject);
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

procedure TFrmCadastroFuncionario.GravarFuncionario;
var
  ContadorFuncionario : Integer;
begin
  try
    try
      // Abre a query do cliente
      DM.FDQFuncionario.Close;
      DM.FDQFuncionario.SQL.Text := 'SELECT * FROM FUNCIONARIO';
      DM.FDQFuncionario.Open;
      DM.FDQFuncionario.Insert;

      // Abre a query dos contadores
      DM.FDQContadores.Close;
      DM.FDQContadores.Open;
      DM.FDQContadores.Locate('TABELA','FUNCIONARIO',[]);
      ContadorFuncionario := DM.FDQContadores.FieldByName('VALOR').AsInteger + 1;

      // Coloca os campos faltando no memoryTable
      DM.FDMTFuncionario.FieldByName('CODIGO').AsInteger := ContadorFuncionario;
      DM.FDMTFuncionario.FieldByName('DATACADASTRO').AsDateTime := Date;

      if ComboBoxStatus.Text = EmptyStr then
        DM.FDMTFuncionario.FieldByName('STATUS').AsString := 'ATIVO'
      else
        DM.FDMTFuncionario.FieldByName('STATUS').AsString := ComboBoxStatus.Text;

      PassaInfoParaQuery;

      // Salva o registro
      DM.FDQFuncionario.Post;

      // Atualiza os contadores
      DM.FDQContadores.Edit;
      DM.FDQContadores.FieldByName('VALOR').AsInteger := ContadorFuncionario;
      DM.FDQContadores.Post;

      Mensagem(1,'Funcionario cadastrado com sucesso');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFuncionario.LimparCampos;
var
  I : Integer;
begin
  try
    try
      for I := 0 to FrmCadastroFuncionario.ComponentCount - 1 do
      begin
        if Components[i] is TEdit then
          TEdit(FrmCadastroFuncionario.Components[i]).Clear;
        if Components[i] is TCheckBox then
          TCheckBox(FrmCadastroFuncionario.Components[i]).Checked := False;
        if Components[i] is TDateTimePicker then
          TDateTimePicker(FrmCadastroFuncionario.Components[i]).Date := Date;
        if Components[i] is TComboBox then
          TComboBox(FrmCadastroFuncionario.Components[i]).ItemIndex := 0;
      end;

      LabelIdade.Caption := '- Anos';
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmCadastroFuncionario.PassaInfoParaMemoryTable;
var
  I: Integer;
  NomeCampo: string;
begin
  // Se tiver informação ele passa para o memorytable
  for I := 0 to (DM.FDQFuncionario.FieldCount - 1) do
  begin
    NomeCampo := DM.FDQFuncionario.Fields[I].FieldName;
    if (DM.FDMTFuncionario.FindField(NomeCampo) <> nil) then
      DM.FDMTFuncionario.FieldByName(NomeCampo).Value := DM.FDQFuncionario.FieldByName(NomeCampo).Value;
  end;
end;

procedure TFrmCadastroFuncionario.PassaInfoParaQuery;
var
  I: Integer;
  NomeCampo: string;
begin
  // Passa todos os campos para a query
  for I := 0 to (DM.FDMTFuncionario.FieldCount - 1) do
  begin
    NomeCampo := DM.FDMTFuncionario.Fields[I].FieldName;
    if (DM.FDQFuncionario.FindField(NomeCampo) <> nil) then
      DM.FDQFuncionario.FieldByName(NomeCampo).Value := DM.FDMTFuncionario.FieldByName(NomeCampo).Value;
  end;
end;

function TFrmCadastroFuncionario.VerificaFuncionarioCadastrado: Boolean;
begin
  try
    try
      // Consulta o cliente para ver se ja esta cadastrado
      DM.FDQConsulta.Close;
      DM.FDQConsulta.SQL.Text := 'SELECT * FROM FUNCIONARIO WHERE ';

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
        Mensagem(2,'Funcionario já cadastrado' + sLineBreak + 'Codigo do funcionario: ' + DM.FDQConsulta.FieldByName('CODIGO').AsString);
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

end.
