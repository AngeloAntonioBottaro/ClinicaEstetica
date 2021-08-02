unit UntRelatorioServicos;

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
  UntDataModule,
  UntReportModule,
  UntConsultaCliente,
  UntBibliotecaFuncoes,
  UntComponentesGerais;

type
  TFrmRelatorioServicos = class(TFrmBase)
    GroupBox1: TGroupBox;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePickerInicial: TDateTimePicker;
    DateTimePickerFinal: TDateTimePicker;
    ComboBoxStatus: TComboBox;
    GroupBox4: TGroupBox;
    RadioButtonData: TRadioButton;
    RadioButtonCliente: TRadioButton;
    GroupBox2: TGroupBox;
    ButtonGerarRelatorio: TButton;
    LabelNomeCliente: TLabel;
    EditCodigoCliente: TEdit;
    Label4: TLabel;
    ButtonConsultaCliente: TButton;
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
  FrmRelatorioServicos: TFrmRelatorioServicos;

implementation

{$R *.dfm}

procedure TFrmRelatorioServicos.ButtonConsultaClienteClick(Sender: TObject);
begin
  inherited;
  try
    try
      // Abre a consulta de cliente
      FrmConsultaCliente.ShowModal;
    finally
      // Se tiver pesquisado algum cliente
      if not (DM.FDQCliente.Eof) then
      begin
        EditCodigoCliente.Text := DM.FDQCliente.FieldByName('CODIGO').AsString;
        LabelNomeCliente.Caption := DM.FDQCliente.FieldByName('NOME').AsString;
        ButtonGerarRelatorio.SetFocus;
      end;

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRelatorioServicos.ButtonGerarRelatorioClick(Sender: TObject);
begin
  inherited;
  try
    try
      DMRelatorios.FDQServico.Close;
      DMRelatorios.FDQServico.SQL.Text := 'SELECT A.*, B.*, C.NOME, D.DESCRICAO AS DESCRIFORMAPAGTO FROM ' +
      'CABESERVICO AS A '+
      'JOIN SERVICO AS B ON A.CODIGO = B.CABESERVICO '+
      'JOIN CLIENTE AS C ON A.CLIENTE = C.CODIGO '+
      'JOIN FORMAPAGTO AS D ON A.FORMAPAGTO = D.CODIGO WHERE ';

      // Se tiver cliente ele consulta o cliente
      if not (EditCodigoCliente.Text = EmptyStr) then
      begin
        DMRelatorios.FDQServico.SQL.Text := DMRelatorios.FDQServico.SQL.Text + '  CLIENTE = :CLIENTE AND ';
        DMRelatorios.FDQServico.Params.ParamByName('CLIENTE').AsString := EditCodigoCliente.Text;
      end;

       // Se especificar o status ele coloca
      if not (Copy(ComboBoxStatus.Text,0,1) = 'T') then
      begin
        DMRelatorios.FDQServico.SQL.Text := DMRelatorios.FDQServico.SQL.Text + ' A.STATUS = :STATUS AND ';
        DMRelatorios.FDQServico.Params.ParamByName('STATUS').AsString := Copy(ComboBoxStatus.Text,0,1);
      end;

      // Filtra pela data
      DMRelatorios.FDQServico.SQL.Text := DMRelatorios.FDQServico.SQL.Text  + ' DATA BETWEEN :DATAINICIAL AND :DATAFINAL ';
      DMRelatorios.FDQServico.Params.ParamByName('DATAINICIAL').AsDate := DateTimePickerInicial.Date;
      DMRelatorios.FDQServico.Params.ParamByName('DATAFINAL').AsDate := DateTimePickerfinal.Date;

      // Ordena dependendo do que selecionar
      if RadioButtonData.Checked then
        DMRelatorios.FDQServico.SQL.Text := DMRelatorios.FDQServico.SQL.Text + ' ORDER BY DATA, A.CODIGO '
      else
        DMRelatorios.FDQServico.SQL.Text := DMRelatorios.FDQServico.SQL.Text + ' ODER BY A.CODIGO, CLIENTE ';

      DMRelatorios.FDQServico.Open;

      // Gera o relatorio apenas se tiver informaçoes
      if DMRelatorios.FDQServico.Eof then
      begin
        Mensagem(1,'Nenhum registro para o periodo informado');
      end
      else
      begin
        // Coloca os valores nas variaveis
        Variaveis;

        GerarRelatorio(DMRelatorios.ReportServico);
        // Exporta o relatorio em PDF
        ExportarRelatorioPDF(DMRelatorios.ReportServico, DMRelatorios.PDFExport);
      end;
    finally
      DMRelatorios.FDQServico.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRelatorioServicos.EditCodigoClienteExit(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeCliente.Caption := '';
      // Se nao tiver informado o cliente ele foca o botao de consulta  senao foca a consulta de produto
      if EditCodigoCliente.Text = EmptyStr then
      begin
        ButtonConsultaCliente.SetFocus;
        Exit;
      end
      else
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
          ButtonGerarRelatorio.SetFocus;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRelatorioServicos.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      ComboBoxStatus.ItemIndex := 0;
      DateTimePickerInicial.Date := Date;
      DateTimePickerFinal.Date := Date;
      EditCodigoCliente.Clear;
      LabelNomeCliente.Caption := '';
      RadioButtonData.Checked := True;
      EditCodigoCliente.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRelatorioServicos.Variaveis;
var
  ValorTotal : Double;
begin
  try
    try
      ValorTotal := 0;

      // Periodo pesquisado
      DMRelatorios.ReportServico.Variables['DataInicial'] := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerInicial.Date));
      DMRelatorios.ReportServico.Variables['DataFinal'] := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerFinal.Date));
      DMRelatorios.ReportServico.Variables['Status'] := QuotedStr(Copy(ComboBoxStatus.Text,0,1));

      // Pega o valor Total e o numero de registros
      DM.FDQCabeServico.Close;
      DM.FDQCabeServico.SQL.Text := 'SELECT * FROM CABESERVICO WHERE ' ;

      // Se tiver cliente ele consulta o cliente
      if not (EditCodigoCliente.Text = EmptyStr) then
      begin
        DM.FDQCabeServico.SQL.Text := DM.FDQCabeServico.SQL.Text + '  CLIENTE = :CLIENTE AND ';
        DM.FDQCabeServico.Params.ParamByName('CLIENTE').AsString := EditCodigoCliente.Text;
      end;

       // Se especificar o status ele coloca
      if not (Copy(ComboBoxStatus.Text,0,1) = 'T') then
      begin
        DM.FDQCabeServico.SQL.Text := DM.FDQCabeServico.SQL.Text + ' STATUS = :STATUS AND ';
        DM.FDQCabeServico.Params.ParamByName('STATUS').AsString := Copy(ComboBoxStatus.Text,0,1);
      end;

      // Filtra pela data
      DM.FDQCabeServico.SQL.Text := DM.FDQCabeServico.SQL.Text  + ' DATA BETWEEN :DATAINICIAL AND :DATAFINAL ';
      DM.FDQCabeServico.Params.ParamByName('DATAINICIAL').AsDate := DateTimePickerInicial.Date;
      DM.FDQCabeServico.Params.ParamByName('DATAFINAL').AsDate := DateTimePickerfinal.Date;

      DM.FDQCabeServico.Open;
      DM.FDQCabeServico.First;

      while not DM.FDQCabeServico.Eof do
      begin
        ValorTotal := ValorTotal + DM.FDQCabeServico.FieldByName('VALORTOTAL').AsFloat;

        DM.FDQCabeServico.Next;
      end;

      DMRelatorios.ReportServico.Variables['ValorTotal'] := ValorTotal;
      DMRelatorios.ReportServico.Variables['TotalRegistros'] := DM.FDQCabeServico.RecordCount;
    finally
      DM.FDQCabeServico.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
