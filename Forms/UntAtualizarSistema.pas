unit UntAtualizarSistema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, FireDAC.Stan.Param, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntBase, Vcl.ComCtrls, Vcl.StdCtrls,
  FireDAC.Comp.Client;

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
    procedure VerificaCampos(NomeTabela: string);
    procedure InsereContador(NomeTabela: string);
    procedure ArrumarPK(NomeTabela: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAtualizarSistema: TFrmAtualizarSistema;
  Continua : Boolean;

implementation

{$R *.dfm}

uses UntComponentesGerais, UntDataModule, UntBibliotecaFuncoes;

procedure TFrmAtualizarSistema.ButtonTestarBancoClick(Sender: TObject);
Var
  I: Integer;
begin
  inherited;
  try
    try
      Application.ProcessMessages;
      Continua := True;

      DM.FDQContadores.Close;
      DM.FDQContadores.Open;

      // Total de tabelas a percorrer
      ProgressBar.Max := MemoTabelas.Lines.Count;

      // Verifica os Campos
      if Continua then
      begin
        ProgressBar.Position := 0;

        for I := 0 to MemoTabelas.Lines.Count -1 do
        begin
          if Continua then
            VerificaCampos(MemoTabelas.Lines[I]);
        end;
      end;

      // Verifica os Contadores
      if Continua then
      begin
        ProgressBar.Position := 0;

        for I := 0 to MemoTabelas.Lines.Count -1 do
        begin
          if Continua then
            InsereContador(UpperCase(MemoTabelas.Lines[I]));
        end;
      end;

      // Arrumar o valor do contador com a Primary Key que ja existe
      if Continua then
      begin
        ProgressBar.Position := 0;

        for I := 0 to MemoTabelas.Lines.Count -1 do
        begin
          if Continua then
            ArrumarPK(UpperCase(MemoTabelas.Lines[I]));
        end;
      end;

      if ProgressBar.Position = ProgressBar.Max then
        Mensagem(1,'Banco Testado Com Sucesso!!');

      // Verifica o usuario Supervisor
      DM.FDQConsulta.Close;
      DM.FDQConsulta.SQL.Text := 'SELECT * FROM USUARIO WHERE CODIGO = 1';
      DM.FDQConsulta.Open;

      if DM.FDQConsulta.Eof then
      begin
        DM.FDQConsulta.Close;
        DM.FDQConsulta.SQL.Text := 'INSERT INTO USUARIO (CODIGO, LOGIN, SENHA, TIPO, STATUS) VALUES (1,''SUPERVISOR'',''MASTERKEY'',''1'',''ATIVO'');';
        DM.FDQConsulta.ExecSQL;
      end;

      DM.FDQConsulta.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmAtualizarSistema.ArrumarPK(NomeTabela: string);
begin
  try
    try
      Application.ProcessMessages;

      LabelStatus.Caption := 'Verificando Chaves Primarias ' + NomeTabela;

      // Pega o ultimo registro e adiciona no contador
      DM.FDQAuxiliar.Close;
      DM.FDQAuxiliar.SQL.Text := 'SELECT MAX(CODIGO) FROM ' + NomeTabela;
      DM.FDQAuxiliar.Open;

      DM.FDQContadores.Locate('TABELA',NomeTabela,[]);
      // Se achar o valor maximo coloca senao zera o contador
      if not (DM.FDQAuxiliar.Eof) then
      begin
        DM.FDQContadores.Edit;
        DM.FDQContadores.FieldByName('VALOR').AsInteger := DM.FDQAuxiliar.FieldByName('MAX').AsInteger;
        DM.FDQContadores.Post;
      end
      else
      begin
        DM.FDQContadores.Edit;
        DM.FDQContadores.FieldByName('VALOR').AsInteger := 0;
        DM.FDQContadores.Post;
      end;

      ProgressBar.Position := ProgressBar.Position +1;
    finally

    end;
  Except on E:Exception do
    begin
      Continua := False;
      Mensagem(3,E.ToString);
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
      NLinhas := QuantasLinhas(ExtractFilePath(Application.ExeName) + '\Atualizacao\' + Memo.Lines[I]);
      ProgressBar.Max := NLinhas;

      //Inicia do zero
      Reset(ArqTxt);
      // Percorre ele todo
      while not eof(ArqTxt) do
      begin
        Readln(ArqTxt, Linha);
        with DM.FDQAtualizador do
        begin
          try
            close;
            SQL.Text := linha;
            ExecSQL;
          Except on E:Exception do
            // Se encontrar Exceção é porque ja tem
            //entao nao faz nada e passa para o proximo
          end;
          ProgressBar.Position := ProgressBar.Position + 1;
        end;
      end;
      // Fecha o arquivo
      Closefile(ArqTxt);
      // Deleta o Patch
      DeleteFile(ExtractFilePath(Application.ExeName) + '\Atualizacao\' + Memo.Lines[I]);
    end;
    LabelStatus.Caption := 'Banco de Dados Atualizado';
    Mensagem(1,'Banco De Dados Atualizado');
  finally
      Memo.Clear;
  end;
end;

procedure TFrmAtualizarSistema.FormClose(Sender: TObject;
  var Action: TCloseAction);
var I: Integer;
begin
  inherited;
  try
    try
      // Fecha Todas as Querys
      for I := 0 to DM.ComponentCount - 1 do
      begin
        if DM.Components[I] is TFDQuery then
          TFDQuery(DM.Components[I]).Close;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmAtualizarSistema.FormShow(Sender: TObject);
var
  SR: TSearchRec;
  I: integer;
begin
  inherited;
  try
    try
      Memo.Clear;
      // procura os arquivos patch na pasta atualizaçao
      I := FindFirst(ExtractFilePath(Application.ExeName) + '\Atualizacao\*.patch', faNormal, SR);

      while I = 0 do
      begin
        // mostra no memo o nome dos arquivos
        Memo.Lines.Add(sr.Name);
        I := FindNext(SR);
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,e.ToString);
  end;
end;

procedure TFrmAtualizarSistema.InsereContador(NomeTabela: string);
begin
  try
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
    finally

    end;
  Except on E:Exception do
    begin
      Continua := False;
      Mensagem(3,E.ToString);
    end;
  end;
end;

procedure TFrmAtualizarSistema.VerificaCampos(NomeTabela: string);
Var
 I, J : Integer;
begin
  try
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
              if not (DM.FDQAuxiliar.Locate('RDB$FIELD_NAME', TFDQuery(DM.Components[I]).Fields.Fields[J].FieldName,[])) then
              begin
               Mensagem(2,'Campo não Encontrado!!' + sLineBreak + 'Tabela:' + NomeTabela + sLineBreak + 'Campo: ' + TFDQuery(DM.Components[I]).Fields.Fields[J].FieldName);
               Continua := False;
              end;

              // Se o tipo do campo for diferente
              { ************** }
            end;
          end;
        end;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
