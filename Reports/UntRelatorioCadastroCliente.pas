unit UntRelatorioCadastroCliente;

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

  UntBase,
  UntReportModule,
  UntDataModule,
  UntBibliotecaFuncoes,
  UntComponentesGerais, UntConsultaCliente;

type
  TFrmRelatorioCadastroCliente = class(TFrmBase)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    GroupBox3: TGroupBox;
    DateTimePickerInicial: TDateTimePicker;
    DateTimePickerfinal: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    ComboBoxStatus: TComboBox;
    GroupBox4: TGroupBox;
    RadioButtonNome: TRadioButton;
    RadioButtonCidade: TRadioButton;
    RadioButtonDataCadastro: TRadioButton;
    ButtonGerarRelatorio: TButton;
    Label4: TLabel;
    ButtonConsultaCliente: TButton;
    LabelNomeCliente: TLabel;
    EditCodigoCliente: TEdit;
    procedure ButtonGerarRelatorioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditCodigoClienteExit(Sender: TObject);
    procedure ButtonConsultaClienteClick(Sender: TObject);
  private
    procedure Variaveis;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioCadastroCliente: TFrmRelatorioCadastroCliente;

implementation

{$R *.dfm}

procedure TFrmRelatorioCadastroCliente.ButtonConsultaClienteClick(
  Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeCliente.Caption := '';
      // Abre a consulta de cliente
      FrmConsultaCliente.ShowModal;
    finally
      // Se tiver pesquisado algum cliente
      if not (DM.FDQCliente.Eof) then
      begin
        EditCodigoCliente.Text := DM.FDQCliente.FieldByName('CODIGO').AsString;
        LabelNomeCliente.Caption := DM.FDQCliente.FieldByName('NOME').AsString;
      end;
      EditCodigoCliente.SetFocus;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRelatorioCadastroCliente.ButtonGerarRelatorioClick(Sender: TObject);
begin
  try
    try
      DMRelatorios.FDQCadastroCliente.Close;
      DMRelatorios.FDQCadastroCliente.SQL.Text := 'SELECT * FROM CLIENTE WHERE ';

       // Se especificar o status ele coloca
      if not (ComboBoxStatus.Text = 'TODOS') then
      begin
        // Verifica se foi escolhido ativo ou inativo
        if (ComboBoxStatus.Text <> 'ATIVO') and (ComboBoxStatus.Text <> 'INATIVO') then
          ComboBoxStatus.ItemIndex := 1;

        DMRelatorios.FDQCadastroCliente.SQL.Text := DMRelatorios.FDQCadastroCliente.SQL.Text + ' STATUS = :STATUS AND ';
        DMRelatorios.FDQCadastroCliente.Params.ParamByName('STATUS').AsString := ComboBoxStatus.Text;
      end;

      // Se tiver o cliente procura apenas o cliente senao Filtra pela data
      if not (EditCodigoCliente.Text = EmptyStr) then
      begin
        DMRelatorios.FDQCadastroCliente.SQL.Text := DMRelatorios.FDQCadastroCliente.SQL.Text + ' CODIGO = :CODIGO ';
        DMRelatorios.FDQCadastroCliente.Params.ParamByName('CODIGO').AsString := EditCodigoCliente.Text;
        DateTimePickerInicial.Date := StrToDate('01/01/2020');
        DateTimePickerFinal.Date := Date;
      end
      else
      begin
        DMRelatorios.FDQCadastroCliente.SQL.Text := DMRelatorios.FDQCadastroCliente.SQL.Text + ' DATACADASTRO BETWEEN :DATAINICIAL AND :DATAFINAL ';
        DMRelatorios.FDQCadastroCliente.Params.ParamByName('DATAINICIAL').AsDate := DateTimePickerInicial.Date;
        DMRelatorios.FDQCadastroCliente.Params.ParamByName('DATAFINAL').AsDate := DateTimePickerFinal.Date;
      end;

      // Verifica por qual ordenação
      if RadioButtonNome.Checked then
        DMRelatorios.FDQCadastroCliente.SQL.Text := DMRelatorios.FDQCadastroCliente.SQL.Text + '  ORDER BY NOME'
      else if RadioButtonCidade.Checked then
        DMRelatorios.FDQCadastroCliente.SQL.Text := DMRelatorios.FDQCadastroCliente.SQL.Text + '  ORDER BY CIDADE, NOME'
      else if RadioButtonDataCadastro.Checked then
        DMRelatorios.FDQCadastroCliente.SQL.Text := DMRelatorios.FDQCadastroCliente.SQL.Text + ' ORDER BY DATACADASTRO, NOME';

      DMRelatorios.FDQCadastroCliente.Open;

      if DMRelatorios.FDQCadastroCliente.Eof then
      begin
        Mensagem(1,'Nenhum registro encontrado');
      end
      else
      begin
        // Arruma as variaveis
        Variaveis;

        // Gera o relatorio
        GerarRelatorio(DMRelatorios.ReportCadastroCliente);

        // Exporta o relatorio em PDF
        ExportarRelatorioPDF(DMRelatorios.ReportCadastroCliente, DMRelatorios.PDFExport);
      end;
    finally
      DMRelatorios.FDQCadastroCliente.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRelatorioCadastroCliente.EditCodigoClienteExit(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeCliente.Caption := '';
      // Se nao tiver informado o cliente ele foca o botao de consulta  senao foca a consulta de produto
      if not (EditCodigoCliente.Text = EmptyStr) then
      begin
          DM.FDQCliente.Close;
          DM.FDQCliente.SQL.Text := 'SELECT * FROM CLIENTE WHERE CODIGO = :CODIGO';
          DM.FDQCliente.Params.ParamByName('CODIGO').AsString := EditCodigoCliente.Text;
          DM.FDQCliente.Open;

          // Se nao encontrou o cliente
          if DM.FDQCliente.Eof then
          begin
            Mensagem(2,'Cliente não encontrado');
            EditCodigoCliente.Clear;
            EditCodigoCliente.SetFocus;
          end
          else
          begin
            // Se tiver algum cliente inclui o nome dele
            LabelNomeCliente.Caption := DM.FDQCliente.FieldByName('NOME').AsString;
          end;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRelatorioCadastroCliente.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeCliente.Caption := '';
      DateTimePickerInicial.Date := Date;
      DateTimePickerfinal.Date := Date;
      ComboBoxStatus.ItemIndex := 0;
      DateTimePickerInicial.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRelatorioCadastroCliente.Variaveis;
begin
  try
    try
      // Data da pesquisa
      DMRelatorios.ReportCadastroCliente.Variables['DataInicial'] := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerInicial.Date));
      DMRelatorios.ReportCadastroCliente.Variables['DataFinal'] := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerFinal.Date));
      DMRelatorios.ReportCadastroCliente.Variables['Status'] := QuotedStr(Copy(ComboBoxStatus.Text,0,1));
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
