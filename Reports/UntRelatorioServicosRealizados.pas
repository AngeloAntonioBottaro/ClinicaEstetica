unit UntRelatorioServicosRealizados;

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
  UntBibliotecaFuncoes,
  UntComponentesGerais,
  UntDataModule,
  UntConsultaCliente,
  UntReportModule;

type
  TFrmRelatorioServicosRealizados = class(TFrmBase)
    GroupBox1: TGroupBox;
    Label3: TLabel;
    LabelNomeCliente: TLabel;
    Label4: TLabel;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePickerInicial: TDateTimePicker;
    DateTimePickerFinal: TDateTimePicker;
    ComboBoxStatus: TComboBox;
    GroupBox4: TGroupBox;
    RadioButtonData: TRadioButton;
    RadioButtonCliente: TRadioButton;
    EditCodigoCliente: TEdit;
    ButtonConsultaCliente: TButton;
    GroupBox2: TGroupBox;
    ButtonGerarRelatorio: TButton;
    procedure ButtonConsultaClienteClick(Sender: TObject);
    procedure ButtonGerarRelatorioClick(Sender: TObject);
    procedure EditCodigoClienteExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure Variaveis;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioServicosRealizados: TFrmRelatorioServicosRealizados;

implementation

{$R *.dfm}

procedure TFrmRelatorioServicosRealizados.ButtonConsultaClienteClick(Sender: TObject);
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

procedure TFrmRelatorioServicosRealizados.ButtonGerarRelatorioClick(Sender: TObject);
begin
  inherited;
  try
    try
      DMRelatorios.FDQServicosRealizados.Close;
      DMRelatorios.FDQServicosRealizados.SQL.Text := 'SELECT A.*, B.*, C.NOME, D.DESCRICAO AS DESCRIFORMAPAGTO FROM ' +
      'CABESERVICO AS A '+
      'JOIN SERVICO AS B ON A.CODIGO = B.CABESERVICO '+
      'JOIN CLIENTE AS C ON A.CLIENTE = C.CODIGO '+
      'JOIN FORMAPAGTO AS D ON A.FORMAPAGTO = D.CODIGO WHERE ';

      // Se tiver cliente ele consulta o cliente
      if not (EditCodigoCliente.Text = EmptyStr) then
      begin
        DMRelatorios.FDQServicosRealizados.SQL.Text := DMRelatorios.FDQServicosRealizados.SQL.Text + '  CLIENTE = :CLIENTE AND ';
        DMRelatorios.FDQServicosRealizados.Params.ParamByName('CLIENTE').AsString := EditCodigoCliente.Text;
      end;

       // Se especificar o status ele coloca
      if not (Copy(ComboBoxStatus.Text,0,1) = 'T') then
      begin
        DMRelatorios.FDQServicosRealizados.SQL.Text := DMRelatorios.FDQServicosRealizados.SQL.Text + ' A.STATUS = :STATUS AND ';
        DMRelatorios.FDQServicosRealizados.Params.ParamByName('STATUS').AsString := Copy(ComboBoxStatus.Text,0,1);
      end;

      // Filtra pela data
      DMRelatorios.FDQServicosRealizados.SQL.Text := DMRelatorios.FDQServicosRealizados.SQL.Text  + ' DATA BETWEEN :DATAINICIAL AND :DATAFINAL ';
      DMRelatorios.FDQServicosRealizados.Params.ParamByName('DATAINICIAL').AsDate := DateTimePickerInicial.Date;
      DMRelatorios.FDQServicosRealizados.Params.ParamByName('DATAFINAL').AsDate := DateTimePickerfinal.Date;

      // Ordena dependendo do que selecionar
      if RadioButtonData.Checked then
        DMRelatorios.FDQServicosRealizados.SQL.Text := DMRelatorios.FDQServicosRealizados.SQL.Text + ' ORDER BY DATA, A.CODIGO '
      else
        DMRelatorios.FDQServicosRealizados.SQL.Text := DMRelatorios.FDQServicosRealizados.SQL.Text + ' ODER BY A.CODIGO, CLIENTE ';

      DMRelatorios.FDQServicosRealizados.Open;

      // Gera o relatorio apenas se tiver informaçoes
      if DMRelatorios.FDQServicosRealizados.Eof then
      begin
        Mensagem(1,'Nenhum registro para o periodo informado');
      end
      else
      begin
        // Coloca os valores nas variaveis
        Variaveis;

        GerarRelatorio(DMRelatorios.ReportServicosRealizados);
        // Exporta o relatorio em PDF
        ExportarRelatorioPDF(DMRelatorios.ReportServicosRealizados, DMRelatorios.PDFExport);
      end;
    finally
      DMRelatorios.FDQServicosRealizados.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRelatorioServicosRealizados.EditCodigoClienteExit(Sender: TObject);
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

procedure TFrmRelatorioServicosRealizados.FormShow(Sender: TObject);
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

procedure TFrmRelatorioServicosRealizados.Variaveis;
var
  ValorTotal : Double;
begin
  try
    try
      ValorTotal := 0;

      // Periodo pesquisado
      DMRelatorios.ReportServicosRealizados.Variables['DataInicial'] := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerInicial.Date));
      DMRelatorios.ReportServicosRealizados.Variables['DataFinal'] := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerFinal.Date));
      DMRelatorios.ReportServicosRealizados.Variables['Status'] := QuotedStr(Copy(ComboBoxStatus.Text,0,1));

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

      DMRelatorios.ReportServicosRealizados.Variables['ValorTotal'] := ValorTotal;
      DMRelatorios.ReportServicosRealizados.Variables['TotalRegistros'] := DM.FDQCabeServico.RecordCount;
    finally
      DM.FDQCabeServico.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
