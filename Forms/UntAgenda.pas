unit UntAgenda;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,

  UntBase,
  UntComponentesGerais,
  UntBibliotecaFuncoes,
  UntDataModule,

  Data.DB,
  DateUtils,

  FireDAC.Stan.Param,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.DBCGrids;

type
  TFrmAgenda = class(TFrmBase)
    GroupBoxBotton: TGroupBox;
    ButtonGravar: TButton;
    ButtonAdicionar: TButton;
    ButtonExcluir: TButton;
    GroupBoxClient: TGroupBox;
    Label1: TLabel;
    DateTimePickerData: TDateTimePicker;
    LabelDiaMes: TLabel;
    LabelMesAno: TLabel;
    LabelDiaSemana: TLabel;
    DBGridAgenda: TDBGrid;
    ComboBoxFuncionario: TComboBox;
    Label2: TLabel;
    procedure ButtonAdicionarClick(Sender: TObject);
    procedure ButtonGravarClick(Sender: TObject);
    procedure ButtonExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridAgendaKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridAgendaCellClick(Column: TColumn);
    procedure DateTimePickerDataChange(Sender: TObject);
    procedure DBGridAgendaExit(Sender: TObject);
    procedure ComboBoxFuncionarioExit(Sender: TObject);
    procedure ComboBoxFuncionarioSelect(Sender: TObject);
  private
    procedure Consultar;
    procedure CarregaFuncionarios;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAgenda: TFrmAgenda;

implementation

{$R *.dfm}

procedure TFrmAgenda.ButtonAdicionarClick(Sender: TObject);
begin
  inherited;
  try
    try
      DM.FDQAgenda.First;
      DM.FDQAgenda.Insert;
      DBGridAgenda.SelectedIndex := 0;
      DBGridAgenda.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmAgenda.ButtonExcluirClick(Sender: TObject);
begin
  inherited;
  try
    try
      if Mensagem(4,'Deseja excluir o agendamento do paciente ' + DM.FDQAgenda.FieldByName('PACIENTE').AsString + ' Às ' + DM.FDQAgenda.FieldByName('HORA').AsString) then
      begin
        DM.FDQAgenda.Delete;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmAgenda.ButtonGravarClick(Sender: TObject);
begin
  inherited;
  try
    try
      // Acha o funcionario
      if not (DM.FDQFuncionario.Locate('NOME', ComboBoxFuncionario.Text,[])) then
      begin
        Mensagem(2,'Funcionario não encontrado');
        ComboBoxFuncionario.SetFocus;
        Exit;
      end;

      if DM.FDQAgenda.State in [dsEdit, dsInsert] then
      begin
        DM.FDQAgenda.FieldByName('DATA').AsDateTime := DateTimePickerData.Date;
        DM.FDQAgenda.FieldByName('FUNCIONARIO').AsInteger := DM.FDQFuncionario.FieldByName('CODIGO').AsInteger;

        // Se tiver algo e o status estiver em branco ele deixa como agendado
        if DM.FDQAgenda.FieldByName('STATUS').AsString = EmptyStr then
          DM.FDQAgenda.FieldByName('STATUS').AsString := 'AGENDADO';

        DM.FDQAgenda.Post;
        Consultar;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmAgenda.CarregaFuncionarios;
begin
  try
    try
      ComboBoxFuncionario.Clear;

      DM.FDQFuncionario.Close;
      DM.FDQFuncionario.SQL.Text := 'SELECT * FROM FUNCIONARIO WHERE AGENDA';
      DM.FDQFuncionario.Open;

      if not (DM.FDQFuncionario.Eof) then
      begin
        DM.FDQFuncionario.First;

        while not DM.FDQFuncionario.Eof do
        begin
          ComboBoxFuncionario.Items.Add(DM.FDQFuncionario.FieldByName('NOME').AsString);
          DM.FDQFuncionario.Next;
        end;

        ComboBoxFuncionario.ItemIndex := 0;
      end
      else
        Mensagem(2,'Nenhum funcionario possui agenda');
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmAgenda.ComboBoxFuncionarioExit(Sender: TObject);
begin
  inherited;
  try
    try
      Consultar;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmAgenda.ComboBoxFuncionarioSelect(Sender: TObject);
begin
  inherited;
  try
    try
      ComboBoxFuncionarioExit(Sender);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmAgenda.Consultar;
var
  Mes : string;
begin
  try
    try
      // Acha o funcionario
      if not (DM.FDQFuncionario.Locate('NOME', ComboBoxFuncionario.Text,[])) then
      begin
        Mensagem(2,'Funcionario não encontrado');
        ComboBoxFuncionario.SetFocus;
        Exit;
      end;

      DM.FDQAgenda.Close;
      DM.FDQAgenda.SQL.Text := 'SELECT * FROM AGENDA WHERE DATA = :DATA AND FUNCIONARIO = :FUNCIONARIO ORDER BY HORA';
      DM.FDQAgenda.Params.ParamByName('DATA').AsDate := DateTimePickerData.Date;
      DM.FDQAgenda.Params.ParamByName('FUNCIONARIO').AsInteger := DM.FDQFuncionario.FieldByName('CODIGO').AsInteger;
      DM.FDQAgenda.Open;

      // Arruma o label do dia
      LabelDiaMes.Caption := copy(DateToStr(DateTimePickerData.Date),0,2);

      // Arruma o label da semana
      LabelDiaSemana.Caption := DiaSemana(DateTimePickerData.Date);

      // Arruma o label do mes e do ano
      Mes := MesDoAno(DateTimePickerData.Date);
      LabelMesAno.Caption :=  Mes + ' De ' + YearOf(DateTimePickerData.Date).ToString;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmAgenda.DateTimePickerDataChange(Sender: TObject);
begin
  inherited;
  try
    try
      Consultar;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmAgenda.DBGridAgendaCellClick(Column: TColumn);
begin
  inherited;
  try
    try
      DM.FDQAgenda.Edit;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmAgenda.DBGridAgendaExit(Sender: TObject);
begin
  inherited;
  try
    try
      if DM.FDQAgenda.State in [dsInsert] then
        ButtonGravarClick(Sender);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmAgenda.DBGridAgendaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  try
    try
      if (Key = #9) and (DBGridAgenda.SelectedIndex = 3) then
        ButtonGravarClick(Sender);

      Key := RemoveAcentos(Key);
      Key := UpCase(Key);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmAgenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  try
    try
      DM.FDQAgenda.Close;
      DM.FDQFuncionario.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmAgenda.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      DateTimePickerData.Date := Date;

      CarregaFuncionarios;

      if ComboBoxFuncionario.Items.Count > 0 then
        Consultar
      else
        FrmAgenda.Close;

      ButtonAdicionar.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.

