unit UntRelatorioVendas;

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

  FireDac.Stan.Param,

  UntBase,
  UntDataModule,
  UntReportModule,
  UntConsultaCliente,
  UntBibliotecaFuncoes,
  UntComponentesGerais;

type
  TFrmRelatorioVendas = class(TFrmBase)
    GroupBox1: TGroupBox;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePickerInicial: TDateTimePicker;
    DateTimePickerfinal: TDateTimePicker;
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
    procedure FormShow(Sender: TObject);
    procedure EditCodigoClienteExit(Sender: TObject);
    procedure ButtonConsultaClienteClick(Sender: TObject);
    procedure ButtonGerarRelatorioClick(Sender: TObject);
  private
    procedure Variaveis;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioVendas: TFrmRelatorioVendas;

implementation

{$R *.dfm}

procedure TFrmRelatorioVendas.ButtonConsultaClienteClick(Sender: TObject);
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

procedure TFrmRelatorioVendas.ButtonGerarRelatorioClick(Sender: TObject);
begin
  inherited;
  try
    try
      DMRelatorios.FDQVenda.Close;
      DMRelatorios.FDQVenda.SQL.Text := 'SELECT A.*, B.*, C.NOME, D.DESCRICAO AS DESCRIFORMAPAGTO FROM ' +
      'CABEVENDA AS A '+
      'JOIN VENDA AS B ON A.CODIGO = B.CABEVENDA '+
      'JOIN CLIENTE AS C ON A.CLIENTE = C.CODIGO '+
      'JOIN FORMAPAGTO AS D ON A.FORMAPAGTO = D.CODIGO WHERE ';

      // Se tiver cliente ele consulta o cliente
      if not (EditCodigoCliente.Text = EmptyStr) then
      begin
        DMRelatorios.FDQVenda.SQL.Text := DMRelatorios.FDQVenda.SQL.Text + '  CLIENTE = :CLIENTE AND ';
        DMRelatorios.FDQVenda.Params.ParamByName('CLIENTE').AsString := EditCodigoCliente.Text;
      end;

      // Se especificar o status ele coloca
      if not (Copy(ComboBoxStatus.Text,0,1) = 'T') then
      begin
        DMRelatorios.FDQVenda.SQL.Text := DMRelatorios.FDQVenda.SQL.Text + ' A.STATUS = :STATUS AND ';
        DMRelatorios.FDQVenda.Params.ParamByName('STATUS').AsString := Copy(ComboBoxStatus.Text,0,1);
      end;

      // Filtra pela data
      DMRelatorios.FDQVenda.SQL.Text := DMRelatorios.FDQVenda.SQL.Text  + ' DATA BETWEEN :DATAINICIAL AND :DATAFINAL ';
      DMRelatorios.FDQVenda.Params.ParamByName('DATAINICIAL').AsDate := DateTimePickerInicial.Date;
      DMRelatorios.FDQVenda.Params.ParamByName('DATAFINAL').AsDate := DateTimePickerfinal.Date;

      // Ordena dependendo do que selecionar
      if RadioButtonData.Checked then
        DMRelatorios.FDQVenda.SQL.Text := DMRelatorios.FDQVenda.SQL.Text + ' ORDER BY DATA, A.CODIGO  '
      else
        DMRelatorios.FDQVenda.SQL.Text := DMRelatorios.FDQVenda.SQL.Text + ' ODER BY A.CODIGO, CLIENTE';

      DMRelatorios.FDQVenda.Open;

      // Gera o relatorio apenas se tiver informaçoes
      if DMRelatorios.FDQVenda.Eof then
      begin
        Mensagem(1,'Nenhum registro para o periodo informado');
      end
      else
      begin
        // Coloca os valores nas variaveis
        Variaveis;

        GerarRelatorio(DMRelatorios.ReportVenda);
        // Exporta o relatorio em PDF
        ExportarRelatorioPDF(DMRelatorios.ReportVenda, DMRelatorios.PDFExport);
      end;
    finally
      DMRelatorios.FDQVenda.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRelatorioVendas.EditCodigoClienteExit(Sender: TObject);
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

procedure TFrmRelatorioVendas.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      ComboBoxStatus.ItemIndex := 0;
      DateTimePickerInicial.Date := Date;
      DateTimePickerfinal.Date := Date;
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

procedure TFrmRelatorioVendas.Variaveis;
var
  ValorTotal : Double;
begin
  try
    try
      ValorTotal := 0;

      // Periodo pesquisado
      DMRelatorios.ReportVenda.Variables['DataInicial'] := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerInicial.Date));
      DMRelatorios.ReportVenda.Variables['DataFinal'] := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerFinal.Date));
      DMRelatorios.ReportVenda.Variables['Status'] := QuotedStr(Copy(ComboBoxStatus.Text,0,1));

      // Pega o valor Total e o numero de registros
      DM.FDQCabeVenda.Close;
      DM.FDQCabeVenda.SQL.Text := 'SELECT * FROM CABEVENDA WHERE ' ;
      DM.FDQCabeVenda.Params.ParamByName('DATAINICAL').AsDate := DateTimePickerInicial.Date;
      DM.FDQCabeVenda.Params.ParamByName('DATAFINAL').AsDate := DateTimePickerFinal.Date;

      // Se tiver cliente ele consulta o cliente
      if not (EditCodigoCliente.Text = EmptyStr) then
      begin
        DM.FDQCabeVenda.SQL.Text := DM.FDQCabeVenda.SQL.Text + '  CLIENTE = :CLIENTE AND ';
        DM.FDQCabeVenda.Params.ParamByName('CLIENTE').AsString := EditCodigoCliente.Text;
      end;

      // Se especificar o status ele coloca
      if not (Copy(ComboBoxStatus.Text,0,1) = 'T') then
      begin
        DM.FDQCabeVenda.SQL.Text := DM.FDQCabeVenda.SQL.Text + ' A.STATUS = :STATUS AND ';
        DM.FDQCabeVenda.Params.ParamByName('STATUS').AsString := Copy(ComboBoxStatus.Text,0,1);
      end;

      // Filtra pela data
      DM.FDQCabeVenda.SQL.Text := DM.FDQCabeVenda.SQL.Text  + ' DATA BETWEEN :DATAINICIAL AND :DATAFINAL ';
      DM.FDQCabeVenda.Params.ParamByName('DATAINICIAL').AsDate := DateTimePickerInicial.Date;
      DM.FDQCabeVenda.Params.ParamByName('DATAFINAL').AsDate := DateTimePickerfinal.Date;

      DM.FDQCabeVenda.Open;
      DM.FDQCabeVenda.First;

      while not DM.FDQCabeVenda.Eof do
      begin
        ValorTotal := ValorTotal + DM.FDQCabeVenda.FieldByName('VALORTOTAL').AsFloat;

        DM.FDQCabeVenda.Next;
      end;

      DMRelatorios.ReportVenda.Variables['ValorTotal'] := ValorTotal;
      DMRelatorios.ReportVenda.Variables['TotalRegistros'] := DM.FDQCabeVenda.RecordCount;
    finally
      DM.FDQCabeVenda.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
