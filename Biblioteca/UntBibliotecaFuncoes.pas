unit UntBibliotecaFuncoes;

interface

uses
  SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, db, ExtCtrls,
  jpeg, ClipBrd, filectrl, DBGrids, Grids, ShellApi, inifiles, Winapi.Windows,
  frxClass,  Math, frxExportPDF, DateUtils, Msg.Controller;

  // Procedures
  Procedure CriarIniFile; // Irá criar um arquivo INI na mesma pasta e com o mesmo nome do executavel
  Procedure GerarRelatorio(const pReport : TfrxReport); // Irá gerar o relatorio que for solicitado
  Procedure ExportarRelatorioPDF(const pReport : TfrxReport; pExport : TfrxPDFExport); // Irá exportar o relatorio escolhido automaticamente em pdf na pre definida

  // Functions
  Function Mensagem(Tipo: Integer; Mensagem: string): Boolean; // Funçao que chama uma tela de mensagem personalizada
  //  Function VersaoExe: string; // Irá retornar a versao atual do executavel
  Function EncryptData(Data: String): string; // Receberá uma data e irá cryptografar essa data
  Function DecryptData(Data: String): string; // Receberá uma data cryptografada e irá decodificala em uma data novamente
  Function CalcularIdade(Nascimento: TDate): Integer; // Receberá uma data de nascimento e irá calcular a idade da pessoa
  Function QuantasLinhas ( nomeDoArquivo: String ): Integer; // Irá retornar quantas linhas um arquivo possui
  Function IdentificaCNPJ(cnpj: string): Boolean; // Irá verificar se o valor é de um CNPJ
  Function IdentificaCPF(cpf: string): Boolean; // Irá verificar se o valor é de um CPF
  Function ArrumarTelefone(fone: String): String; // Irá formatar o numero de telefone
  Function ArrumarCep(cep: String): String; // Irá formatar o numero do CEP
  Function ArrumarCPF(cpf: String): String; // Irá formatar o numero do CPF
  Function ArrumarCNPJ(cnpj: String): String; // Irá formatar o numero do CPF
  Function ArrumarData(data: String): String; // Irá formatar uma data com as barras
  Function RetirarEspacosExtras(str: String): string; // Irá retirar de uma string espaços a mais
  Function RemoveInvalid(NotToRemoveStr: String; FromStr: String): String; stdcall; export; // Irá retirar de uma string qualquer caracter diferente dos que forem passados para manter (utiliza as contantes declaradas abaixo)
  Function RemoveAcentos(str: String): String overload; // Irá trocar a letra acentuda pela letra sem acento
  Function RemoveAcentos(str: Char): Char overload; // Irá trocar a letra acentuda pela letra sem acento
  Function ValidaCPF(const ACPF: String): Boolean; // Irá fazer os calculos do CPF para verificar se o CPF É valido
  Function ValidaCNPJ(const ACNPJ: string): Boolean; // Irá fazer os calculos do  CNPJ para verificar se o  CNPJ é valido
  Function Extenso(Valor : Extended; Moeda: Boolean; Tipo : Integer = 0): String; // Vai retornar o numero por extenso
  Function DiaSemana (Data: TDateTime) : string; // Irá retornar qual dia da semana é
  Function MesDoAno (Data: TDateTime) : string; // Irá retornar qual mes do ano é
Const
  // Constantes
  ConstAlfaArray: PChar = 'ABCDEFGHIJKLMNOPQRSTUVWXYZàâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ 0123456789.;,<>?/[]{}*&^%$#@!_+-="`~\';
  ConstArrayLetras: PChar = 'ABCDEFGHIJKLMNOPQRSTUVWYZ';
  ConstArrayLetrasEspaco: PChar = 'ABCDEFGHIJKLMNOPQRSTUVWYZ ';
  ConstArrayNumerosLetras: PChar = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ ';
  ConstArrayNumeros: PChar = '0123456789';
  ConstArrayNumerosEspaco: PChar = '0123456789 ';
  ConstArrayNumerosSemZero: PChar = '123456789';
  ConstArrayNumeroMonetario: PChar = '0123456789,';

implementation

Procedure CriarIniFile;
var
  ArquivoINI : Tinifile;
  AppName, AppPath : string;
  AppNameLength: Integer;
begin
  try
    try
      AppNameLength := ExtractFileName(Application.ExeName).Length;
      AppName := Copy(ExtractFileName(Application.ExeName),1, AppNameLength-4);
      AppPath := ExtractFilePath(Application.ExeName);

      // Cria o INI na pasta que esta o executavel
      ArquivoINI := TIniFile.Create( AppPath + AppName + '.ini');

      // Parametros de configurações
      ArquivoINI.WriteString('Configuracao','CAMINHOSISTEMA', AppPath);
      ArquivoINI.WriteString('Configuracao','CAMINHOBANCO', AppPath);
      ArquivoINI.WriteString('Configuracao','NOMEBANCO', 'DADOS.FDB');
      ArquivoINI.WriteString('Configuracao','IPSISTEMA','127.0.0.1');
      ArquivoINI.WriteString('Configuracao','IPBANCO','127.0.0.1');
      ArquivoINI.WriteString('Configuracao','TIPO','SERVIDOR');
      ArquivoINI.WriteString('Configuracao','STATUS','N');
      // Parametros com informações adicionais
      ArquivoINI.WriteString('InfoAdcional','FTP','https://drive.google.com/drive/folders/1Jhu9gkA4ziR2iBbKQO8Lf9wpbSowHs11?usp=sharing');

      ArquivoINI.Free;
    finally

    end;
  Except on E:Exception do
    ShowMessage('Inconsistencia na função CriarIniFile' + sLineBreak + 'Mensagem: ' + E.Message);
  end;
end;

procedure GerarRelatorio(const pReport : TfrxReport);
begin
  try
    try
      pReport.PrepareReport;
      pReport.ShowPreparedReport;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,'Inconsistencia na função CarregaRelatorio' + sLineBreak +
          'Mensagem: ' + E.ToString);
  end;
end;

Procedure ExportarRelatorioPDF(const pReport : TfrxReport;  pExport : TfrxPDFExport);
begin
  try
    try
      // Caminho que sera salvo
      pExport.DefaultPath := ExtractFilePath(Application.Name) + 'Relatorios\';
      // Nome do arquivo com extenção
      pExport.FileName := pReport.Name + ' ' + FormatDateTime('dd-mm-yyyy', Date) + '.PDF';
      // Exporta o relatorio
      pReport.Export(pExport);
    finally

    end;
  Except on E:Exception do
    Mensagem(3,'Inconsistencia na função CarregaRelatorio' + sLineBreak +
          'Mensagem: ' + E.ToString);
  end;
end;

Function Mensagem(Tipo: Integer; Mensagem: string): Boolean;
begin
  Result := False;
  try
    try
      case Tipo of
        0:
          begin
            ShowMessage(Mensagem);
          end;

        1:
          begin
            Result := ShowInfo(Mensagem);
          end;

        2:
          begin
            Result := ShowInfo(Mensagem);
          end;

         3:
          begin
            Result := ShowInfo(Mensagem);
          end;

          4:
          begin
            Result := ShowInfo(Mensagem);
          end;
      end;
    finally

    end;
  Except on E:Exception do
    ShowMessage('Inconsistencia na função Mensagem' + sLineBreak + 'Mensagem: ' + E.Message);
  end;
end;

//Function VersaoExe: string;
//var
//  F : PFFI;
//  Handle : Dword;
//  Len : Longint;
//  Data : Pchar;
//  Buffer : Pointer;
//  Tamanho : Dword;
//  Parquivo: Pchar;
//  Arquivo : String;
//begin
//  try
//    try
//      Arquivo := Application.ExeName;
//      Parquivo := StrAlloc(Length(Arquivo) + 1);
//      StrPcopy(Parquivo, Arquivo);
//      Len := GetFileVersionInfoSize(Parquivo, Handle);
//      Result := '';
//      if Len > 0 then
//      begin
//        Data:=StrAlloc(Len+1);
//        if GetFileVersionInfo(Parquivo,Handle,Len,Data) then
//        begin
//          VerQueryValue(Data, '\',Buffer,Tamanho);
//          F := PFFI(Buffer);
//          Result := Format('%d.%d.%d.%d',
//          [HiWord(F^.dwFileVersionMs),
//          LoWord(F^.dwFileVersionMs),
//          HiWord(F^.dwFileVersionLs),
//          Loword(F^.dwFileVersionLs)]
//          );
//        end;
//        StrDispose(Data);
//      end;
//      StrDispose(Parquivo);
//    finally
//
//    end;
//  Except on E:Exception do
//    ShowMessage('Inconsistencia na função VersaoExe' + sLineBreak + 'Mensagem: ' + E.Message);
//  end;
//end;

Function EncryptData(Data: String): string;
var
  I : Integer;

  const PalavraMestre: PChar = 'QAZWSXEDCR';
  const PalavraChave: PChar = 'FVTGBYHNUJMIKOLP';
begin
  try
    try
      Data := RemoveInvalid(ConstArrayNumeros,Data);

      Result := EmptyStr;

      for I := 1 to Data.Length do
      begin
        Result := Result +  PalavraChave[StrToInt(Data[I])];
        Result := Result + PalavraMestre[StrToInt(Data[I])];
        Result := Result +  PalavraChave[I+6];
      end;

      Result := Result;
    finally

    end;
  Except on E:Exception do
    ShowMessage('Inconsistencia na função EncryptData' + sLineBreak + 'Mensagem: ' + E.Message);
  end;
end;

Function DecryptData(Data: String): string;
var
  I : Integer;
  R : string;
begin
  try
    try
      Result := EmptyStr;
      R := EmptyStr;
      Data := UpperCase(Data);

      for I := 1 to Data.Length do
      begin
        case data[I] of
          'Q' : R := R + '0';
          'A' : R := R + '1';
          'Z' : R := R + '2';
          'W' : R := R + '3';
          'S' : R := R + '4';
          'X' : R := R + '5';
          'E' : R := R + '6';
          'D' : R := R + '7';
          'C' : R := R + '8';
          'R' : R := R + '9';
        end;
      end;

      Result := Copy(R,0,2) +'/'+ Copy(R,3,2) +'/'+  Copy(R,5,4);

    finally

    end;
  Except on E:Exception do
    ShowMessage('Inconsistencia na função DecryptData' + sLineBreak + 'Mensagem: ' + E.Message);
  end;
end;

Function CalcularIdade(Nascimento: TDate): Integer;
var
  Month, Day, Year, CurrentYear, CurrentMonth, CurrentDay: Word;
begin
  try
    try
      DecodeDate(Nascimento, Year, Month, Day);
      DecodeDate(Date, CurrentYear, CurrentMonth, CurrentDay);
      if (Year = CurrentYear) and (Month = CurrentMonth) and (Day = CurrentDay)
      then
      begin
        Result := 0;
      end
      else
      begin
        Result := CurrentYear - Year;
        if (Month > CurrentMonth) then
          Dec(Result)
        else
        begin
          if Month = CurrentMonth then
            if (Day > CurrentDay) then
              Dec(Result);
        end;
      end;
    finally

    end;
  Except on E:Exception do
    ShowMessage('Inconsistencia na função CalcularIdade' + sLineBreak + 'Mensagem: ' + E.Message);
  end;
end;

Function QuantasLinhas ( nomeDoArquivo: String ):Integer;
var
  arq: TextFile;
  nr:integer;
  linha: String;
begin
  try
    try
      nr:=0;
      AssignFile ( arq, nomeDoArquivo );
      Reset ( arq );
      ReadLn ( arq, linha );

      while not Eof ( arq ) do
      begin
        ReadLn ( arq, linha );
        nr:=nr+1;
      end;
      Result := nr;
    finally

    end;
  Except on E:Exception do
    ShowMessage('Inconsistencia na função QuantasLinhas' + sLineBreak + 'Mensagem: ' + E.Message);
  end;
end;

Function IdentificaCNPJ(cnpj: string): Boolean;
begin
  try
    try
      cnpj := RemoveInvalid(ConstArrayNumeros, cnpj);

      if cnpj.length = 14 then
      begin
        Result := True;
      end
      else
      begin
        Result := False;
      end;
    finally

    end;
  Except on E:Exception do
    ShowMessage('Inconsistencia na função IdentificaCNPJ' + sLineBreak + 'Mensagem: ' + E.Message);
  end;
end;

Function IdentificaCPF(cpf: string): Boolean;
begin
  try
    try
      cpf := RemoveInvalid(ConstArrayNumeros, cpf);

      if cpf.length = 11 then
      begin
        Result := True;
      end
      else
      begin
        Result := False;
      end;
    finally

    end;
  Except on E:Exception do
    ShowMessage('Inconsistencia na função IdentificaCPF' + sLineBreak + 'Mensagem: ' + E.Message);
  end;
end;

Function ArrumarTelefone(fone: String): String;
var
  ddd, fone1, fone2: String;
  c_fone: Integer;
begin
  try
    try
      fone := RemoveInvalid(ConstArrayNumeros, fone);
      c_fone := length(fone);

      if c_fone = 0 then
        exit;

      if (c_fone >= 8) and (c_fone <= 11) then
      begin

        if (c_fone = 8) then
        begin
          fone1 := copy(fone, 0, 4);
          fone2 := copy(fone, 5, 4);
          fone := fone1 + '-' + fone2;
        end;

        if (c_fone = 9) then
        begin
          fone1 := copy(fone, 0, 5);
          fone2 := copy(fone, 6, 4);
          fone := fone1 + '-' + fone2;
        end;

        if (c_fone = 10) then
        begin
          ddd := copy(fone, 0, 2);
          fone1 := copy(fone, 3, 4);
          fone2 := copy(fone, 7, 4);
          fone := '(' + ddd + ')' + fone1 + '-' + fone2;
        end;

        if (c_fone = 11) then
        begin
          ddd := copy(fone, 0, 2);
          fone1 := copy(fone, 3, 5);
          fone2 := copy(fone, 8, 4);
          fone := '(' + ddd + ')' + fone1 + '-' + fone2;
        end;

      end
      else
        ShowMessage('Verifique o numero inserido');

      Result := fone;
    finally

    end;
  Except on E:Exception do
    ShowMessage('Inconsistencia na função ArrumarTelefone' + sLineBreak + 'Mensagem: ' + E.Message);
  end;
end;

Function ArrumarCep(cep: String): String;
var
  cep1, cep2: String;
  c_cep: Integer;
begin
  try
    try
      cep := RemoveInvalid(ConstArrayNumeros, cep);
      c_cep := length(cep);

      if (c_cep <> 0) then
      begin
        // Adiciona o 0 no final até dar o tamanho
        while c_cep <= 8 do
        begin
          c_cep := c_cep + 1;
          cep := cep + '0';
        end;

        cep1 := copy(cep, 1, 5);
        cep2 := copy(cep, 6, 3);
        cep := cep1 + '-' + cep2;
      end;

      Result := cep;
    finally

    end;
  Except on E:Exception do
    ShowMessage('Inconsistencia na função ArrumarCEP' + sLineBreak + 'Mensagem: ' + E.Message);
  end;
end;

Function ArrumarCPF(cpf: String): String;
var
  CPF1, CPF2, CPF3, CPF4, CPFA: String;
  tamanhoCPF: Integer;
begin
  try
    try
      cpf := RemoveInvalid(ConstArrayNumeros, cpf);
      tamanhoCPF := length(cpf);

      // Valida quantos numeros são
      // PARTE 1
      if tamanhoCPF >= 3  then
        CPF1 := copy(cpf, 0, 3)
      else if tamanhoCPF = 2 then
        CPF1 := copy(cpf, 0, 2)
      else
        CPF1 := copy(cpf, 0, 1);
      // PARTE 2
      if tamanhoCPF >= 6 then
        CPF2 := copy(cpf, 4, 3)
      else if tamanhoCPF = 5 then
        CPF2 := copy(cpf, 4, 2)
      else
        CPF2 := copy(cpf, 4, 1);
      // PARTE 3
      if tamanhoCPF >= 9 then
        CPF3 := copy(cpf, 7, 3)
      else if tamanhoCPF = 8 then
        CPF3 := copy(cpf, 7, 2)
      else
        CPF3 := copy(cpf, 7, 1);
      // PARTE 4
      if tamanhoCPF = 11 then
        CPF4 := copy(cpf, 10, 2)
      else
        CPF4 := copy(cpf, 10, 1);

      // Coloca as pontuações
      if CPF1.Length = 3 then
          cpfa := cpfa + CPF1 + '.'
      else
        cpfa := cpfa + CPF1;

      if CPF2.Length = 3 then
          cpfa := cpfa + CPF2 + '.'
      else
        cpfa := cpfa + CPF2;

      if CPF3.Length = 3 then
          cpfa := cpfa + CPF3 + '-'
      else
        cpfa := cpfa + CPF3;

        cpfa := cpfa + CPF4;

      Result := cpfa;
    finally

    end;
  Except on E:Exception do
    ShowMessage('Inconsistencia na função ArrumarCPF' + sLineBreak + 'Mensagem: ' + E.Message);
  end;
end;

Function ArrumarCNPJ(cnpj: String): String;
var
  CNPJ1, CNPJ2, CNPJ3, CNPJ4, CNPJ5, CNPJA: String;
  tamanhoCNPJ: Integer;
begin
  try
    try
      cnpj := RemoveInvalid(ConstArrayNumeros, cnpj);
      tamanhoCNPJ := length(cnpj);

      // Valida quantos numeros são
      // PARTE 1
      if tamanhoCNPJ >= 2  then
        CNPJ1 := copy(cnpj, 0, 2)
      else
        CNPJ1 := copy(cnpj, 0, 1);

      // PARTE 2
      if tamanhoCNPJ >= 5 then
        CNPJ2 := copy(cnpj, 3, 3)
      else if tamanhoCNPJ = 4 then
        CNPJ2 := copy(cnpj, 3, 2)
      else
        CNPJ2 := copy(cnpj, 3, 1);

      // PARTE 3
      if tamanhoCNPJ >= 8 then
        CNPJ3 := copy(cnpj, 6, 3)
      else if tamanhoCNPJ = 8 then
        CNPJ3 := copy(cnpj, 6, 2)
      else
        CNPJ3 := copy(cnpj, 6, 1);

      // PARTE 4
      if tamanhoCNPJ >= 12 then
        CNPJ4 := copy(cnpj, 9, 4)
      else if tamanhoCNPJ = 11 then
        CNPJ4 := copy(cnpj, 9, 3)
      else if tamanhoCNPJ = 10 then
        CNPJ4 := copy(cnpj, 9, 2)
      else if tamanhoCNPJ = 9 then
        CNPJ4 := copy(cnpj, 9, 1);

       // PARTE 5
      if tamanhoCNPJ = 14 then
        CNPJ5 := copy(cnpj, 13, 2)
      else
        CNPJ5 := copy(cnpj, 13, 1);


       // Coloca as pontuaçoes
       if CNPJ1.Length = 2 then
        CNPJA := CNPJ1 + '.'
       else
        CNPJA := CNPJ1;

       if CNPJ2.Length = 3 then
        CNPJA := CNPJA + CNPJ2 + '.'
       else
        CNPJA := CNPJA + CNPJ2;

       if CNPJ3.Length = 3 then
        CNPJA := CNPJA + CNPJ3 + '/'
       else
        CNPJA := CNPJA + CNPJ3;

       if CNPJ4.Length = 4 then
        CNPJA := CNPJA + CNPJ4 + '-'
       else
        CNPJA := CNPJA + CNPJ4;

       CNPJA := CNPJA + CNPJ5;


      Result := CNPJA;
    finally

    end;
  Except on E:Exception do
    ShowMessage('Inconsistencia na função ArrumarCPF' + sLineBreak + 'Mensagem: ' + E.Message);
  end;
end;

Function ArrumarData(data: String): String;
var
  data1, data2, data3: String;
  c_data: Integer;
begin
  try
    try
      data := RemoveInvalid(ConstArrayNumeros, data);
      c_data := length(data);
      if (c_data <> 0) then
      begin

        if (c_data = 8) then
        begin
          data1 := copy(data, 1, 2);
          data2 := copy(data, 3, 2);
          data3 := copy(data, 5, 4);
          data := data1 + '/' + data2 + '/' + data3;
        end;

        if (c_data = 6) then
        begin
          data1 := copy(data, 1, 2);
          data2 := copy(data, 3, 2);
          data3 := copy(data, 5, 2);
          data := data1 + '/' + data2 + '/' + '20' + data3;
        end;

      end;
      Result := data;
    finally

    end;
  Except on E:Exception do
    ShowMessage('Inconsistencia na função ArrumarData' + sLineBreak + 'Mensagem: ' + E.Message);
  end;
end;

Function RetirarEspacosExtras(str: String): string;
var
  ver: String;
begin
  try
    try
      ver := '1';
      while ver = '1' do
      begin
        if Pos('  ', str) > 0 then
        begin
          str := StringReplace(str, '  ', ' ', [rfIgnoreCase]);
          ver := '1';
        end
        else
          ver := '0';

        Result := str;
      end;
    finally

    end;
  Except on E:Exception do
    ShowMessage('Inconsistencia na função RetirarEspacosExtras' + sLineBreak + 'Mensagem: ' + E.Message);
  end;
end;

Function RemoveInvalid(NotToRemoveStr: String; FromStr: String): String;
  stdcall; export;
var
  TempStr: String;
  Res: ShortString;
  x: Byte;
begin
  try
    try
      TempStr := UpperCase(FromStr);
      Res := '';

      for x := 1 to length(TempStr) do
      begin
        if Pos(TempStr[x], NotToRemoveStr) <> 0 then
          Res := Res + FromStr[x];
      end;

      Result := Res;
    finally

    end;
  Except on E:Exception do
    ShowMessage('Inconsistencia na função RemoveInvalid' + sLineBreak + 'Mensagem: ' + E.Message);
  end;
end;

Function RemoveAcentos(str: String): String overload;
var
  i, j: integer;
const
  com_acento: array [1 .. 48] of char = ('á', 'é', 'í', 'ó', 'ú', 'à', 'è', 'ì',
    'ò', 'ù', 'â', 'ê', 'î', 'ô', 'û', 'ä', 'ë', 'ï', 'ö', 'ü', 'ã', 'õ', 'ñ',
    'ç', 'Á', 'É', 'Í', 'Ó', 'Ú', 'À', 'È', 'Ì', 'Ò', 'Ù', 'Â', 'Ê', 'Î', 'Ô',
    'Û', 'Ä', 'Ë', 'Ï', 'Ö', 'Ü', 'Ã', 'Õ', 'Ñ', 'Ç');

  sem_acento: array [1 .. 48] of char = ('a', 'e', 'i', 'o', 'u', 'a', 'e', 'i',
    'o', 'u', 'a', 'e', 'i', 'o', 'u', 'a', 'e', 'i', 'o', 'u', 'a', 'o', 'n',
    'c', 'A', 'E', 'I', 'O', 'U', 'A', 'E', 'I', 'O', 'U', 'A', 'E', 'I', 'O',
    'U', 'A', 'E', 'I', 'O', 'U', 'A', 'O', 'N', 'C');
begin
  try
    try
      for i := 1 to length(str) do
        for j := 0 to High(com_acento) do
          if com_acento[j] = str[i] then
            str[i] := sem_acento[j];

      Result := str;
    finally

    end;
  Except on E:Exception do
	  ShowMessage('Inconsistencia na função REMOVEACENTOS' + sLineBreak + 'Mensagem: ' + E.Message);
  end;
end;

Function RemoveAcentos(str: Char): Char overload;
var
  i, j: integer;
const
  com_acento: array [1 .. 48] of char = ('á', 'é', 'í', 'ó', 'ú', 'à', 'è', 'ì',
    'ò', 'ù', 'â', 'ê', 'î', 'ô', 'û', 'ä', 'ë', 'ï', 'ö', 'ü', 'ã', 'õ', 'ñ',
    'ç', 'Á', 'É', 'Í', 'Ó', 'Ú', 'À', 'È', 'Ì', 'Ò', 'Ù', 'Â', 'Ê', 'Î', 'Ô',
    'Û', 'Ä', 'Ë', 'Ï', 'Ö', 'Ü', 'Ã', 'Õ', 'Ñ', 'Ç');

  sem_acento: array [1 .. 48] of char = ('a', 'e', 'i', 'o', 'u', 'a', 'e', 'i',
    'o', 'u', 'a', 'e', 'i', 'o', 'u', 'a', 'e', 'i', 'o', 'u', 'a', 'o', 'n',
    'c', 'A', 'E', 'I', 'O', 'U', 'A', 'E', 'I', 'O', 'U', 'A', 'E', 'I', 'O',
    'U', 'A', 'E', 'I', 'O', 'U', 'A', 'O', 'N', 'C');
begin
  try
    try
      for j := 0 to High(com_acento) do
      begin
        if com_acento[j] = str then
          str := sem_acento[j];
      end;

      Result := str;
    finally

    end;
  Except on E:Exception do
	  ShowMessage('Inconsistencia na função REMOVEACENTOS' + sLineBreak + 'Mensagem: ' + E.Message);
  end;
end;

Function ValidaCPF(const ACPF: String): Boolean;
var
  d1, d4, xx, nCount, resto, digito1, digito2: Integer;
  Check: String;
begin
  try
    try
      if (length(ACPF) <> 11) then
        exit(False);

      d1 := 0;
      d4 := 0;
      xx := 1;

      for nCount := 1 to length(ACPF) - 2 do
      begin
        if Pos(copy(ACPF, nCount, 1), '/-.') = 0 then
        begin
          d1 := d1 + (11 - xx) * StrToInt(copy(ACPF, nCount, 1));
          d4 := d4 + (12 - xx) * StrToInt(copy(ACPF, nCount, 1));
          xx := xx + 1;
        end;
      end;

      resto := (d1 mod 11);

      if resto < 2 then
      begin
        digito1 := 0;
      end
      else
      begin
        digito1 := 11 - resto;
      end;
      d4 := d4 + 2 * digito1;
      resto := (d4 mod 11);

      if resto < 2 then
      begin
        digito2 := 0;
      end
      else
      begin
        digito2 := 11 - resto;
      end;

      Check := IntToStr(digito1) + IntToStr(digito2);

      if Check <> copy(ACPF, succ(length(ACPF) - 2), 2) then
      begin
        Result := False;
      end
      else
      begin
        Result := True;
      end;

    finally
      //
    end;
  Except on E: Exception do
    ShowMessage('Inconsistencia na função ValidaCPF' + sLineBreak + 'Mensagem: ' + E.Message);
  end;
end;

Function ValidaCNPJ(const ACNPJ: string): Boolean;
var
  v: array[1..2] of Word;
  cnpj: array[1..14] of Byte;
  I: Byte;
begin
  try
    try
      if (length(ACNPJ) <> 14) then
        exit(False);

      for I := 1 to 14 do
        cnpj[i] := StrToInt(ACNPJ[i]);

      //Nota: Calcula o primeiro dígito de verificação.
      v[1] := 5*cnpj[1] + 4*cnpj[2]  + 3*cnpj[3]  + 2*cnpj[4];
      v[1] := v[1] + 9*cnpj[5] + 8*cnpj[6]  + 7*cnpj[7]  + 6*cnpj[8];
      v[1] := v[1] + 5*cnpj[9] + 4*cnpj[10] + 3*cnpj[11] + 2*cnpj[12];
      v[1] := 11 - v[1] mod 11;
      v[1] := IfThen(v[1] >= 10, 0, v[1]);

      //Nota: Calcula o segundo dígito de verificação.
      v[2] := 6*cnpj[1] + 5*cnpj[2]  + 4*cnpj[3]  + 3*cnpj[4];
      v[2] := v[2] + 2*cnpj[5] + 9*cnpj[6]  + 8*cnpj[7]  + 7*cnpj[8];
      v[2] := v[2] + 6*cnpj[9] + 5*cnpj[10] + 4*cnpj[11] + 3*cnpj[12];
      v[2] := v[2] + 2*v[1];
      v[2] := 11 - v[2] mod 11;
      v[2] := IfThen(v[2] >= 10, 0, v[2]);

      //Nota: Verdadeiro se os dígitos de verificação são os esperados.
      Result := ((v[1] = cnpj[13]) and (v[2] = cnpj[14]));

    finally

    end;
  Except on E: Exception do
    Result := False;
  end;
end;

Function Extenso(Valor : Extended; Moeda: Boolean; Tipo : Integer = 0): String;
var
  Centavos, Centena, Milhar, Milhao, Bilhao, Texto : string;
const
  Unidades: array [1..9] of string = ('um', 'dois', 'três','quatro','cinco',
  'seis', 'sete', 'oito','nove');
  Dez     : array [1..9] of string = ('onze', 'doze', 'treze', 'quatorze',
  'quinze', 'dezesseis', 'dezessete', 'dezoito', 'dezenove');
  Dezenas : array [1..9] of string = ('dez', 'vinte', 'trinta',
  'quarenta', 'cinqüenta', 'sessenta', 'setenta', 'oitenta', 'noventa');
  Centenas: array [1..9] of string = ('cento', 'duzentos', 'trezentos',
  'quatrocentos', 'quinhentos', 'seiscentos', 'setecentos', 'oitocentos',
  'novecentos');
  function ifs( Expressao: Boolean; CasoVerdadeiro, CasoFalso:String): String;
  begin
    if Expressao then
      Result := CasoVerdadeiro
    else
      Result :=CasoFalso;
  end;
  function MiniExtenso( Valor: ShortString ): string;
  var
    Unidade, Dezena, Centena: String;
  begin
    if (Valor[2] = '1') and (Valor[3] <> '0') then
    begin
      Unidade := Dez[StrToInt(Valor[3])];
      Dezena := '';
    end
    else
    begin
     if Valor[2] <> '0' then
       Dezena := Dezenas[StrToInt(Valor[2])];
     if Valor[3] <> '0' then
       unidade := Unidades[StrToInt(Valor[3])];
    end;
    if (Valor[1] = '1') and (Unidade = '') and (Dezena = '') then
      centena := 'cem'
    else
      if Valor[1] <> '0' then
        Centena := Centenas[StrToInt(Valor[1])]
      else
        Centena := '';

    Result := Centena + ifs( (Centena <> '') and ((Dezena <> '') or
    (Unidade <> '')),' e ', '') + Dezena + ifs( (Dezena <> '') and
    (Unidade <> ''), ' e ','') + Unidade;
  end;
begin
  if Valor = 0 then
  begin
    if Moeda then
      Result := ''
    else
      Result := 'zero';

    Exit;
  end;

  Texto := FormatFloat( '000000000000.00', Valor );
  Centavos := MiniExtenso( '0' + Copy( Texto, 14, 2 ) );
  Centena  := MiniExtenso( Copy( Texto, 10, 3 ) );
  Milhar   := MiniExtenso( Copy( Texto,  7, 3 ) );

  if Milhar <> '' then
    Milhar := Milhar + ' mil';

  Milhao   := MiniExtenso( Copy( Texto,  4, 3 ) );

  if Milhao <> '' then
  begin
    Milhao := Milhao
    + ifs( Copy( Texto, 4,
    3 ) = '001', ' milhão', ' milhões');
  end;

  Bilhao   := MiniExtenso( Copy( Texto,  1, 3 ) );

  if Bilhao <> '' then
  begin
    Bilhao := Bilhao + ifs( Copy( Texto, 1, 3 ) = '001', ' bilhão',
    ' bilhões');
  end;

  Result := Bilhao + ifs( (Bilhao <> '') and (Milhao + Milhar +
  Centena <> ''),
  ifs((Pos(' e ', Bilhao) > 0) or (Pos( ' e ',
  Milhao + Milhar + Centena ) > 0), ', ', ' e '), '') +
  Milhao + ifs( (Milhao <> '') and (Milhar + Centena <> ''),
  ifs((Pos(' e ', Milhao) > 0) or
  (Pos( ' e ', Milhar + Centena ) > 0 ),', ',    ' e '), '') +
  Milhar + ifs( (Milhar <> '') and
  (Centena <> ''), ifs(Pos( ' e ', Centena ) > 0, ', ', ' e '),'') +
  Centena;

  if Moeda then
  begin
    if Tipo=0 then
    begin
      if (Bilhao <> '') and (Milhao + Milhar + Centena = '') then
        Result := Bilhao + ' de reais'
      else
      if (Milhao <> '') and (Milhar + Centena = '') then
        Result := Milhao + ' de reais'
      else
        Result := Bilhao + ifs( (Bilhao <> '') and (Milhao + Milhar +
        Centena <> ''), ifs((Pos(' e ', Bilhao) > 0) or (Pos( ' e ',
        Milhao +Milhar + Centena ) > 0), ', ', ' e '), '') + Milhao + ifs(
        (Milhao <> '') and (Milhar + Centena <> ''), ifs((Pos(' e ',
        Milhao) > 0) or (Pos( ' e ', Milhar + Centena ) > 0 ),', ',
        ' e '), '') + Milhar + ifs( (Milhar <> '') and (Centena <> ''),
        ifs(Pos( ' e ', Centena ) > 0, ', ', ' e '),'') +
        Centena + ifs( Int(Valor) = 1, ' real', ' reais');
      if Centavos <> '' then
      begin
        if Valor > 1 then
          Result := Result + ' e ' + Centavos + ifs( Copy(
          Texto, 14, 2 )= '01', ' centavo', ' centavos' )
        else
          Result := Centavos + ifs( Copy( Texto, 14, 2 )= '01',
          ' centavo', ' centavos' );
      end;
    end
    else
    begin
      if (Bilhao <> '') and (Milhao + Milhar + Centena = '') then
        Result := Bilhao + ' de dolares americanos'
      else
      if (Milhao <> '') and (Milhar + Centena = '') then
        Result := Milhao + ' de dolares americanos'
      else
        Result := Bilhao + ifs( (Bilhao <> '') and (Milhao + Milhar +
        Centena <> ''), ifs((Pos(' e ', Bilhao) > 0) or (Pos( ' e ',
        Milhao + Milhar + Centena ) > 0),', ', ' e '), '') + Milhao +
        ifs( (Milhao <> '') and (Milhar + Centena <> ''), ifs((Pos(' e ',
        Milhao) > 0) or (Pos( ' e ', Milhar + Centena ) > 0 ),', ',
        ' e '), '') + Milhar + ifs( (Milhar <> '') and (Centena <> ''),
        ifs(Pos( ' e ', Centena ) > 0,', ', ' e '),'') + Centena + ifs(
        Int(Valor) = 1, ' dolar americano', ' dolares americanos');

      if Centavos <> '' then
      begin
        if Valor > 1 then
          Result := Result + ' e ' + Centavos + ifs( Copy( Texto, 14, 2 )=
          '01', ' cent', ' cents' )
        else
          Result := Centavos + ifs( Copy( Texto, 14, 2 )= '01', ' cent', ' ' +
          'cents' );
      end;
    end;
  end;
end;

Function DiaSemana (Data: TDateTime) : string;
begin
  try
    try
      if DayOfWeek(Data) = 1 then
        Result := 'DOMINGO'
      else if DayOfWeek(Data) = 2 then
        Result := 'SEGUNDA'
      else if DayOfWeek(Data) = 3 then
        Result := 'TERÇA'
      else if DayOfWeek(Data) = 4 then
        Result := 'QUARTA'
      else if DayOfWeek(Data) = 5 then
        Result := 'QUINTA'
      else if DayOfWeek(Data) = 6 then
        Result := 'SEXTA'
      else if DayOfWeek(Data) = 7 then
        Result := 'SABADO';
    finally

    end;
  Except on E:Exception do
    ShowMessage('Inconsistencia na função DiaSemana' + sLineBreak + 'Mensagem: ' + E.Message);
  end;
end;

Function MesDoAno (Data: TDateTime) : string;
begin
  try
    try
      if monthOf(Data) = 1 then
        Result := 'JANEIRO'
      else if monthOf(Data) = 2 then
        Result := 'FEVEREIRO'
      else if monthOf(Data) = 3 then
        Result := 'MARÇO'
      else if monthOf(Data) = 4 then
        Result := 'ABRIL'
      else if monthOf(Data) = 5 then
        Result := 'MAIO'
      else if monthOf(Data) = 6 then
        Result := 'JUNHO'
      else if monthOf(Data) = 7 then
        Result := 'JULHO'
      else if monthOf(Data) = 8 then
        Result := 'AGOSTO'
      else if monthOf(Data) = 9 then
        Result := 'SETEMBRO'
      else if monthOf(Data) = 10 then
        Result := 'OUTUBRO'
      else if monthOf(Data) = 11 then
        Result := 'NOVEMBRO'
      else if monthOf(Data) = 12 then
        Result := 'DEZEMBRO';
    finally

    end;
  Except on E:Exception do
    ShowMessage('Inconsistencia na função DiaSemana' + sLineBreak + 'Mensagem: ' + E.Message);
  end;
end;

end.

