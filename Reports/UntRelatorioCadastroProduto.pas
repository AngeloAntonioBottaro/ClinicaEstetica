unit UntRelatorioCadastroProduto;

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
  UntConsultaGrupo,
  UntConsultaSubGrupo,
  UntDataModule,
  UntBibliotecaFuncoes,
  UntComponentesGerais,
  UntReportModule;

type
  TFrmRelatorioCadastroProduto = class(TFrmBase)
    GroupBox1: TGroupBox;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePickerInicial: TDateTimePicker;
    DateTimePickerfinal: TDateTimePicker;
    ComboBoxStatus: TComboBox;
    GroupBox4: TGroupBox;
    RadioButtonNome: TRadioButton;
    RadioButtonGrupo: TRadioButton;
    RadioButtonSubGrupo: TRadioButton;
    GroupBox2: TGroupBox;
    RadioButtonDataCadastro: TRadioButton;
    ButtonGerarRelatorio: TButton;
    Label4: TLabel;
    LabelNomeGrupo: TLabel;
    Label5: TLabel;
    LabelNomeSubgrupo: TLabel;
    EditCodigoGrupo: TEdit;
    ButtonConsultaGrupo: TButton;
    EditCodigoSubGrupo: TEdit;
    ButtonConsultaSubGrupo: TButton;
    procedure ButtonConsultaGrupoClick(Sender: TObject);
    procedure ButtonConsultaSubGrupoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ButtonGerarRelatorioClick(Sender: TObject);
    procedure EditCodigoGrupoExit(Sender: TObject);
    procedure EditCodigoSubGrupoExit(Sender: TObject);
  private
    procedure Variaveis;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioCadastroProduto: TFrmRelatorioCadastroProduto;

implementation

{$R *.dfm}

procedure TFrmRelatorioCadastroProduto.ButtonConsultaGrupoClick(
  Sender: TObject);
begin
  inherited;
  try
    try
      FrmConsultaGrupo.ShowModal;
    finally
      // Adiciona o codigo do grupo
      if not DM.FDQGrupo.Eof then
      begin
        EditCodigoGrupo.Text := DM.FDQGrupo.FieldByName('CODIGO').AsString;
        LabelNomeGrupo.Caption := DM.FDQGrupo.FieldByName('DESCRICAO').AsString;
      end;

      EditCodigoGrupo.SetFocus;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRelatorioCadastroProduto.ButtonConsultaSubGrupoClick(
  Sender: TObject);
begin
  inherited;
  try
    try
      FrmConsultaSubGrupo.EditCodigoGrupo.Text := EditCodigoGrupo.Text;
      FrmConsultaSubGrupo.ShowModal;
    finally
      // Adiciona o codigo do subgrupo
      if not DM.FDQSubGrupo.Eof then
      begin
        EditCodigoSubGrupo.Text := DM.FDQSubGrupo.FieldByName('CODIGO').AsString;
        EditCodigoGrupo.Text := DM.FDQSubGrupo.FieldByName('GRUPO').AsString;
        LabelNomeGrupo.Caption := DM.FDQSubGrupo.FieldByName('DESCRICAO').AsString;
      end;

      EditCodigoSubGrupo.SetFocus;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRelatorioCadastroProduto.ButtonGerarRelatorioClick(
  Sender: TObject);
begin
  inherited;
  try
    try
      DMRelatorios.FDQCadastroProduto.Close;
      DMRelatorios.FDQCadastroProduto.SQL.Text := ' SELECT A.*, B.DESCRICAO AS DESCRIGRUPO, C.DESCRICAO AS DESCRISUBGRUPO FROM PRODUTO AS A ' +
                                                 ' LEFT JOIN GRUPO AS B ON A.GRUPO = B.CODIGO ' +
                                                 ' LEFT JOIN SUBGRUPO AS C ON A.SUBGRUPO = C.CODIGO WHERE';

      // Se tiver o grupo vai pesquisar pelo grupo
      if not (EditCodigoGrupo.Text = EmptyStr) then
      begin
        DMRelatorios.FDQCadastroProduto.SQL.Text := DMRelatorios.FDQCadastroProduto.SQL.Text + ' A.GRUPO = :GRUPO AND ';
        DMRelatorios.FDQCadastroProduto.Params.ParamByName('GRUPO').AsString := EditCodigoGrupo.Text;
      end;

      // Se tiver o SubGrupo vai pesquisar pelo SubGrupo
      if not (EditCodigoSubGrupo.Text = EmptyStr) then
      begin
        DMRelatorios.FDQCadastroProduto.SQL.Text := DMRelatorios.FDQCadastroProduto.SQL.Text + ' A.SUBGRUPO = :SUBGRUPO AND ';
        DMRelatorios.FDQCadastroProduto.Params.ParamByName('SUBGRUPO').AsString := EditCodigoSubGrupo.Text;
      end;

      // Se especificar o status ele coloca
      if not (ComboBoxStatus.Text = 'TODOS') then
      begin
        // Verifica se foi escolhido ativo ou inativo
        if (ComboBoxStatus.Text <> 'ATIVO') and (ComboBoxStatus.Text <> 'INATIVO') then
          ComboBoxStatus.ItemIndex := 1;

        DMRelatorios.FDQCadastroProduto.SQL.Text := DMRelatorios.FDQCadastroProduto.SQL.Text + ' A.STATUS = :STATUS AND ';
        DMRelatorios.FDQCadastroProduto.Params.ParamByName('STATUS').AsString := ComboBoxStatus.Text;
      end;

      // Filtra pela data escolhida
      DMRelatorios.FDQCadastroProduto.SQL.Text := DMRelatorios.FDQCadastroProduto.SQL.Text + ' A.DATACADASTRO BETWEEN :DATAINICIAL AND :DATAFINAL ';
      DMRelatorios.FDQCadastroProduto.Params.ParamByName('DATAINICIAL').AsDate := DateTimePickerInicial.Date;
      DMRelatorios.FDQCadastroProduto.Params.ParamByName('DATAFINAL').AsDate := DateTimePickerfinal.Date;

      // Ordena conforme foi marcado
      if RadioButtonNome.Checked then
      begin
        DMRelatorios.FDQCadastroProduto.SQL.Text := DMRelatorios.FDQCadastroProduto.SQL.Text + ' ORDER BY A.DESCRICAO ';
      end
      else if RadioButtonGrupo.Checked then
      begin
        DMRelatorios.FDQCadastroProduto.SQL.Text := DMRelatorios.FDQCadastroProduto.SQL.Text + ' ORDER BY A.GRUPO, A.DESCRICAO  ';
      end
      else if RadioButtonSubGrupo.Checked then
      begin
        DMRelatorios.FDQCadastroProduto.SQL.Text := DMRelatorios.FDQCadastroProduto.SQL.Text + ' ORDER BY A.SUBGRUPO, A.DESCRICAO ';
      end
      else if RadioButtonDataCadastro.Checked then
      begin
        DMRelatorios.FDQCadastroProduto.SQL.Text := DMRelatorios.FDQCadastroProduto.SQL.Text + ' ORDER BY A.DATACADASTRO, A.DESCRICAO ';
      end;

      DMRelatorios.FDQCadastroProduto.Open;

      if DMRelatorios.FDQCadastroProduto.Eof then
      begin
        Mensagem(1,'Nenhum registro para o periodo informado');
      end
      else
      begin
        // Arruma as variaveis
        Variaveis;

        GerarRelatorio(DMRelatorios.ReportCadastroProduto);

        // Exporta o relatorio em PDF
        ExportarRelatorioPDF(DMRelatorios.ReportCadastroProduto, DMRelatorios.PDFExport);
      end;
    finally
      DMRelatorios.FDQCadastroProduto.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRelatorioCadastroProduto.EditCodigoGrupoExit(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeGrupo.Caption := '';

      if EditCodigoGrupo.Text = EmptyStr then
        Exit;

      DM.FDQGrupo.Close;
      DM.FDQGrupo.SQL.Text := 'SELECT * FROM GRUPO';
      DM.FDQGrupo.Open;

      if DM.FDQGrupo.Locate('CODIGO', EditCodigoGrupo.Text,[]) then
        LabelNomeGrupo.Caption := DM.FDQGrupo.FieldByName('DESCRICAO').AsString
      else
      begin
        Mensagem(2,'Grupo não encontrado');
        EditCodigoGrupo.Clear;
        EditCodigoGrupo.SetFocus;
      end;
    finally
      DM.FDQGrupo.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRelatorioCadastroProduto.EditCodigoSubGrupoExit(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeSubgrupo.Caption := '';

      if EditCodigoSubGrupo.Text = EmptyStr then
        Exit;

      DM.FDQSubGrupo.Close;
      DM.FDQSubGrupo.SQL.Text := 'SELECT * FROM SUBGRUPO';
      DM.FDQSubGrupo.Open;

      if DM.FDQSubGrupo.Locate('CODIGO', EditCodigoSubGrupo.Text,[]) then
        LabelNomeSubgrupo.Caption := DM.FDQSubGrupo.FieldByName('DESCRICAO').AsString
      else
      begin
        Mensagem(2,'Sub-Grupo não encontrado');
        EditCodigoSubGrupo.Clear;
        EditCodigoSubGrupo.SetFocus;
      end;

      ButtonGerarRelatorio.SetFocus
    finally
      DM.FDQSubGrupo.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRelatorioCadastroProduto.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      DateTimePickerInicial.Date := Date;
      DateTimePickerfinal.Date := Date;

      EditCodigoGrupo.Clear;
      EditCodigoSubGrupo.Clear;

      LabelNomeGrupo.Caption := '';
      LabelNomeSubgrupo.Caption := '';

      ComboBoxStatus.ItemIndex := 0;

      ButtonGerarRelatorio.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmRelatorioCadastroProduto.Variaveis;
begin
  try
    try
      DMRelatorios.ReportCadastroProduto.Variables['DataInicial'] := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerInicial.Date));
      DMRelatorios.ReportCadastroProduto.Variables['DataFinal'] := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerFinal.Date));
      DMRelatorios.ReportCadastroProduto.Variables['Status'] := QuotedStr(Copy(ComboBoxStatus.Text,0,1));
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
