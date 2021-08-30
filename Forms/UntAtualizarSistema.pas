unit UntAtualizarSistema;

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
  Vcl.ComCtrls,
  Vcl.StdCtrls,

  UntBase,

  FireDAC.Stan.Param,
  FireDAC.Comp.Client,

  Utils.MyLibrary,
  Msg.Controller;

type
  TFrmAtualizarSistema = class(TFrmBase)
    ButtonAtualizarSistema: TButton;
    ProgressBar: TProgressBar;
    Memo: TMemo;
    LabelTitulo: TLabel;
    GroupBoxTop: TGroupBox;
    LabelStatus: TLabel;
    ButtonTestarBanco: TButton;
    GroupBoxClient: TGroupBox;
    MemoTabelas: TMemo;
    GroupBox1: TGroupBox;
    procedure ButtonAtualizarSistemaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ButtonTestarBancoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Continua : Boolean;

    procedure VerificaCampos(NomeTabela: string);
    procedure InsereContador(NomeTabela: string);
    procedure ArrumarPK(NomeTabela: string);
    procedure CadastraUsuarioSupervisor();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAtualizarSistema: TFrmAtualizarSistema;

implementation

{$R *.dfm}

uses UntComponentesGerais, UntDataModule;

procedure TFrmAtualizarSistema.ButtonTestarBancoClick(Sender: TObject);
Var
  I: Integer;
begin
  Application.ProcessMessages;
  Continua := True;

  DM.FDQContadores.Close;
  DM.FDQContadores.Open;

  // Total de tabelas a percorrer
  ProgressBar.Max := MemoTabelas.Lines.Count;

  // Verifica os Campos
  if(Continua)then
  begin
    ProgressBar.Position := 0;

    for I := 0 to MemoTabelas.Lines.Count -1 do
    begin
      if(Continua)then
        Self.VerificaCampos(MemoTabelas.Lines[I]);
    end;
  end;

  // Verifica os Contadores
  if(Continua)then
  begin
    ProgressBar.Position := 0;

    for I := 0 to MemoTabelas.Lines.Count -1 do
    begin
      if(Continua)then
        Self.InsereContador(UpperCase(MemoTabelas.Lines[I]));
    end;
  end;

  // Arrumar o valor do contador com a Primary Key que ja existe
  if(Continua)then
  begin
    ProgressBar.Position := 0;

    for I := 0 to MemoTabelas.Lines.Count -1 do
    begin
      if(Continua)then
        Self.ArrumarPK(UpperCase(MemoTabelas.Lines[I]));
    end;
  end;

  if(ProgressBar.Position = ProgressBar.Max)then
    Msg.controller.ShowInfo('Banco testado com sucesso.');

  Self.CadastraUsuarioSupervisor;
end;

procedure TFrmAtualizarSistema.CadastraUsuarioSupervisor;
begin
  DM.FDQConsulta.Close;
  DM.FDQConsulta.SQL.Text := 'SELECT * FROM USUARIO';
  DM.FDQConsulta.Open;

  if(DM.FDQConsulta.IsEmpty)then
  begin
    DM.FDQConsulta.Close;
    DM.FDQConsulta.SQL.Text := 'INSERT INTO USUARIO(LOGIN, SENHA, TIPO, STATUS) VALUES (''SUPERVISOR'',''MASTERKEY'',''1'',''ATIVO'');';
    DM.FDQConsulta.ExecSQL;
  end;

  DM.FDQConsulta.Close;
end;

procedure TFrmAtualizarSistema.ArrumarPK(NomeTabela: string);
begin
  try
    Application.ProcessMessages;

    LabelStatus.Caption := 'Verificando Chaves Primarias ' + NomeTabela;

    // Pega o ultimo registro e adiciona no contador
    DM.FDQAuxiliar.Close;
    DM.FDQAuxiliar.SQL.Text := 'SELECT MAX(CODIGO) FROM ' + NomeTabela;
    DM.FDQAuxiliar.Open;

    DM.FDQContadores.Locate('TABELA',NomeTabela,[]);
    // Se achar o valor maximo coloca senao zera o contador
    DM.FDQContadores.Edit;
    DM.FDQContadores.FieldByName('VALOR').AsInteger := 0;

    if not(DM.FDQAuxiliar.IsEmpty)then
       DM.FDQContadores.FieldByName('VALOR').AsInteger := DM.FDQAuxiliar.FieldByName('MAX').AsInteger;

    DM.FDQContadores.Post;

    ProgressBar.Position := ProgressBar.Position +1;
  Except on E:Exception do
    begin
      Continua := False;
      Msg.controller.ShowError(E.ToString);
    end;
  end;
end;

procedure TFrmAtualizarSistema.ButtonAtualizarSistemaClick(Sender: TObject);
var
  ArqTxt : TextFile;
  linha : string;
  I, NLinhas : Integer;
begin
  inherited;
  try
    Application.ProcessMessages;

    LabelStatus.Caption := 'Atualizando Banco de Dados...';
    ProgressBar.Position := 0;

    // Para cada arquivo de atualizaçao encontrado
    for I := 0 to Memo.Lines.Count-1 do
    begin
      Application.ProcessMessages;

      // Pega o Arquivo
      AssignFile(ArqTxt,ExtractFilePath(Application.ExeName) + '\Atualizacao\' + Memo.Lines[I]);

      // Ajusta o ProgressBar
      NLinhas := Utils.MyLibrary.TotalLines(ExtractFilePath(Application.ExeName) + '\Atualizacao\' + Memo.Lines[I]);
      ProgressBar.Max := NLinhas;

      Reset(ArqTxt);
      while not eof(ArqTxt) do
      begin
        Readln(ArqTxt, Linha);

        try
          DM.FDQAtualizador.close;
          DM.FDQAtualizador.SQL.Text := linha;
          DM.FDQAtualizador.ExecSQL;
        Except on E:Exception do
          // Se encontrar Exceção é porque ja tem
          //entao nao faz nada e passa para o proximo
        end;
        ProgressBar.Position := ProgressBar.Position + 1;
      end;

      Closefile(ArqTxt);

      DeleteFile(ExtractFilePath(Application.ExeName) + '\Atualizacao\' + Memo.Lines[I]);
    end;

    LabelStatus.Caption := 'Banco de dados atualizado';
    Msg.controller.ShowInfo(LabelStatus.Caption);
  finally
    Memo.Clear;
  end;
end;

procedure TFrmAtualizarSistema.FormClose(Sender: TObject;
  var Action: TCloseAction);
var I: Integer;
begin
  // Fecha Todas as Querys
  for I := 0 to DM.ComponentCount - 1 do
  begin
    if(DM.Components[I] is TFDQuery)then
      TFDQuery(DM.Components[I]).Close;
  end;
end;

procedure TFrmAtualizarSistema.FormShow(Sender: TObject);
var
  SR: TSearchRec;
  I: integer;
  vPath: string;
begin
  Memo.Clear;

  // procura os arquivos patch na pasta atualizaçao
  vPath := ExtractFilePath(Application.ExeName) + '\Atualizacao';

  if(not DirectoryExists(vPath))then ForceDirectories(vPath);

  I := FindFirst('\*.patch', faNormal, SR);

  while I = 0 do
  begin
    // mostra no memo o nome dos arquivos
    Memo.Lines.Add(sr.Name);
    I := FindNext(SR);
  end;
end;

procedure TFrmAtualizarSistema.InsereContador(NomeTabela: string);
begin
  try
    Application.ProcessMessages;

    LabelStatus.Caption := 'Verificando Contadores ' + NomeTabela;

    // Vai inserir um contador para a tabela caso nao tiver
    if not (DM.FDQContadores.Locate('TABELA',NomeTabela,[])) then
    begin
      DM.FDQAtualizador.Close;
      DM.FDQAtualizador.SQL.Text := 'INSERT INTO CONTADORES(TABELA,VALOR) VALUES (:TABELA, 0);';
      DM.FDQAtualizador.Params.ParamByName('TABELA').AsString := NomeTabela;
      DM.FDQAtualizador.ExecSQL;
    end;
  Except on E:Exception do
    begin
      Continua := False;
      Msg.controller.ShowError(E.ToString);
    end;
  end;
end;

procedure TFrmAtualizarSistema.VerificaCampos(NomeTabela: string);
var
 I, J : Integer;
begin
  try
    Application.ProcessMessages;

    LabelStatus.Caption := 'Verificando Campos da Tabela: ' + UpperCase(NomeTabela);

    // Pega todos os campos que tem no banco
    DM.FDQAuxiliar.Close;
    DM.FDQAuxiliar.SQL.Text := 'SELECT RDB$RELATION_NAME, RDB$FIELD_NAME FROM RDB$RELATION_FIELDS WHERE RDB$RELATION_NAME = :TABELA';
    DM.FDQAuxiliar.Params.ParamByName('TABELA').AsString := UpperCase(NomeTabela);
    DM.FDQAuxiliar.Open;

    // Verifica todos os componentes no DataModule e pega só os FDQuery
    for I := 0 to DM.ComponentCount - 1 do
    begin
      if DM.Components[I] is TFDQuery then
      begin
        // Se o nome do componente que ele achou for a query da tabela que esta verificando ele compara os campos
        if DM.Components[I].Name = ('FDQ' + NomeTabela) then
        begin
          // Verifica os campos
          for J := 0 to TFDQuery(DM.Components[I]).Fields.Count -1 do
          begin
            // Se nao achar o campo
            if not(DM.FDQAuxiliar.Locate('RDB$FIELD_NAME', TFDQuery(DM.Components[I]).Fields.Fields[J].FieldName,[]))then
            begin
              Msg.controller.ShowWarning('Campo não encontrado.' + sLineBreak +
                                       'Tabela:' + NomeTabela + sLineBreak +
                                       'Campo: ' + TFDQuery(DM.Components[I]).Fields.Fields[J].FieldName);
              Continua := False;
            end;

            // Se o tipo do campo for diferente
            { ************** }
          end;
        end;
      end;
    end;
  Except on E:Exception do
    Msg.controller.ShowError(E.ToString);
  end;
end;

end.
