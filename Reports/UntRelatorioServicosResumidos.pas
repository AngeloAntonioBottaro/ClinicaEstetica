unit UntRelatorioServicosResumidos;

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
  UntConsultaCliente,
  UntDataModule,
  UntReportModule;

type
  TFrmRelatorioServicoResumido = class(TFrmBase)
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
  FrmRelatorioServicoResumido: TFrmRelatorioServicoResumido;

implementation

{$R *.dfm}

{ TFrmRelatorioServicoResumido }

procedure TFrmRelatorioServicoResumido.ButtonConsultaClienteClick(
  Sender: TObject);
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

procedure TFrmRelatorioServicoResumido.ButtonGerarRelatorioClick(
  Sender: TObject);
begin
  inherited;
  try
    try
      DMRelatorios.FDQServicosResumidos.Close;
      DMRelatorios.FDQServicosResumidos.SQL.Text := 'SELECT A.*, B.*, C.NOME, D.DESCRICAO AS DESCRIFORMAPAGTO FROM ' +
      'CABESERVICO AS A '+
      'JOIN SERVICO AS B ON A.CODIGO = B.CABESERVICO '+
      'JOIN CLIENTE AS C ON A.CLIENTE = C.CODIGO '+
      'JOIN FORMAPAGTO AS D ON A.FORMAPAGTO = D.CODIGO WHERE ';

      // Se tiver cliente ele consulta o cliente
      if not (EditCodigoCliente.Text = EmptyStr) then
      begin
        DMRelatorios.FDQServicosResumidos.SQL.Text := DMRelatorios.FDQServicosResumidos.SQL.Text + '  CLIENTE = :CLIENTE AND ';
        DMRelatorios.FDQServicosResumidos.Params.ParamByName('CLIENTE').AsString := EditCodigoCliente.Text;
      end;

       // Se especificar o status ele coloca
      if not (Copy(ComboBoxStatus.Text,0,1) = 'T') then
      begin
        DMRelatorios.FDQServicosResumidos.SQL.Text := DMRelatorios.FDQServicosResumidos.SQL.Text + ' A.STATUS = :STATUS AND ';
        DMRelatorios.FDQServicosResumidos.Params.ParamByName('STATUS').AsString := Copy(ComboBoxStatus.Text,0,1);
      end;

      // Filtra pela data
      DMRelatorios.FDQServicosResumidos.SQL.Text := DMRelatorios.FDQServicosResumidos.SQL.Text  + ' DATA BETWEEN :DATAINICIAL AND :DATAFINAL ';
      DMRelatorios.FDQServicosResumidos.Params.ParamByName('DATAINICIAL').AsDate := DateTimePickerInicial.Date;
      DMRelatorios.FDQServicosResumidos.Params.ParamByName('DATAFINAL').AsDate := DateTimePickerfinal.Date;

      // Ordena dependendo do que selecionar
      if RadioButtonData.Checked then
        DMRelatorios.FDQServicosResumidos.SQL.Text := DMRelatorios.FDQServicosResumidos.SQL.Text + ' ORDER BY DATA, A.CODIGO '
      else
        DMRelatorios.FDQServicosResumidos.SQL.Text := DMRelatorios.FDQServicosResumidos.SQL.Text + ' ODER BY A.CODIGO, CLIENTE ';

      DMRelatorios.FDQServicosResumidos.Open;

      // Gera o relatorio apenas se tiver informaçoes
      if DMRelatorios.FDQServicosResumidos.Eof then
      begin
        Mensagem(1,'Nenhum registro para o periodo informado');
      end
      else
      begin
        // Coloca os valores nas variaveis
        Variaveis;

        GerarRelatorio(DMRelatorios.ReportServicosResumidos);
        // Exporta o relatorio em PDF
        ExportarRelatorioPDF(DMRelatorios.ReportServicosResumidos, DMRelatorios.PDFExport);
      end;
    finally
      DMRelatorios.FDQServicosResumidos.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRelatorioServicoResumido.EditCodigoClienteExit(Sender: TObject);
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

procedure TFrmRelatorioServicoResumido.FormShow(Sender: TObject);
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

procedure TFrmRelatorioServicoResumido.Variaveis;
var
  ValorTotal : Double;
begin
  try
    try
      ValorTotal := 0;

      // Periodo pesquisado
      DMRelatorios.ReportServicosResumidos.Variables['DataInicial'] := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerInicial.Date));
      DMRelatorios.ReportServicosResumidos.Variables['DataFinal'] := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerFinal.Date));
      DMRelatorios.ReportServicosResumidos.Variables['Status'] := QuotedStr(Copy(ComboBoxStatus.Text,0,1));

      DM.FDQConsulta.Close;
      DM.FDQConsulta.SQL.Text := 'SELECT A.*, B.*, C.NOME, D.DESCRICAO AS DESCRIFORMAPAGTO FROM ' +
      'CABESERVICO AS A '+
      'JOIN SERVICO AS B ON A.CODIGO = B.CABESERVICO '+
      'JOIN CLIENTE AS C ON A.CLIENTE = C.CODIGO '+
      'JOIN FORMAPAGTO AS D ON A.FORMAPAGTO = D.CODIGO WHERE ';

      // Se tiver cliente ele consulta o cliente
      if not (EditCodigoCliente.Text = EmptyStr) then
      begin
        DM.FDQConsulta.SQL.Text := DM.FDQConsulta.SQL.Text + '  CLIENTE = :CLIENTE AND ';
        DM.FDQConsulta.Params.ParamByName('CLIENTE').AsString := EditCodigoCliente.Text;
      end;

       // Se especificar o status ele coloca
      if not (Copy(ComboBoxStatus.Text,0,1) = 'T') then
      begin
        DM.FDQConsulta.SQL.Text := DM.FDQConsulta.SQL.Text + ' A.STATUS = :STATUS AND ';
        DM.FDQConsulta.Params.ParamByName('STATUS').AsString := Copy(ComboBoxStatus.Text,0,1);
      end;

      // Filtra pela data
      DM.FDQConsulta.SQL.Text := DM.FDQConsulta.SQL.Text  + ' DATA BETWEEN :DATAINICIAL AND :DATAFINAL ';
      DM.FDQConsulta.Params.ParamByName('DATAINICIAL').AsDate := DateTimePickerInicial.Date;
      DM.FDQConsulta.Params.ParamByName('DATAFINAL').AsDate := DateTimePickerfinal.Date;

      // Ordena dependendo do que selecionar
      if RadioButtonData.Checked then
        DM.FDQConsulta.SQL.Text := DM.FDQConsulta.SQL.Text + ' ORDER BY DATA, A.CODIGO '
      else
        DM.FDQConsulta.SQL.Text := DM.FDQConsulta.SQL.Text + ' ODER BY A.CODIGO, CLIENTE ';

      DM.FDQConsulta.Open;
      DM.FDQConsulta.First;

      while not DM.FDQConsulta.Eof do
      begin
        ValorTotal := ValorTotal + DM.FDQConsulta.FieldByName('VALORTOTAL').AsFloat;

        DM.FDQConsulta.Next;
      end;

      DMRelatorios.ReportServicosResumidos.Variables['ValorTotal'] := ValorTotal;
      DMRelatorios.ReportServicosResumidos.Variables['TotalRegistros'] := DM.FDQConsulta.RecordCount;
    finally
      DM.FDQConsulta.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
