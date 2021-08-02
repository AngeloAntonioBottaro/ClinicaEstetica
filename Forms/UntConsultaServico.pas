unit UntConsultaServico;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,

  FireDAC.Stan.Param,

  UntBase,
  UntComponentesGerais,
  UntDataModule,
  UntConsultaCliente,
  UntBibliotecaFuncoes,

  Data.DB,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.ComCtrls;

type
  TFrmConsultaServico = class(TFrmBase)
    GroupBoxHeader: TGroupBox;
    GroupBoxFooter: TGroupBox;
    GroupBoxGrid: TGroupBox;
    DBGridServico: TDBGrid;
    EditCodigoCliente: TEdit;
    ButtonConsultar: TButton;
    ButtonFechar: TButton;
    CheckBoxFinalizadas: TCheckBox;
    DateTimePickerInicial: TDateTimePicker;
    DateTimePickerFinal: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ButtonConsultaCliente: TButton;
    ButtonEstornarServico: TButton;
    LabelNomeCliente: TLabel;
    procedure ButtonConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonConsultaClienteClick(Sender: TObject);
    procedure EditCodigoClienteExit(Sender: TObject);
    procedure ButtonFecharClick(Sender: TObject);
    procedure ButtonEstornarServicoClick(Sender: TObject);
  private
    function EstornaCaixa(): Boolean;
    function EstornaFinanceiro(): Boolean;
    function EstornaProdutos(): Boolean;
    procedure EstornaServico;
    procedure FecharQuerys;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaServico: TFrmConsultaServico;

implementation

{$R *.dfm}

procedure TFrmConsultaServico.ButtonConsultaClienteClick(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeCliente.Caption := '';
      FrmConsultaCliente.ShowModal;
    finally
      if not (DM.FDQCliente.State in [dsInactive]) then
      begin
        EditCodigoCliente.Text := DM.FDQCliente.FieldByName('CODIGO').AsString;
        LabelNomeCliente.Caption := DM.FDQCliente.FieldByName('NOME').AsString;
        EditCodigoCliente.SetFocus;
      end;
      DM.FDQCliente.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaServico.ButtonConsultarClick(Sender: TObject);
begin
  inherited;
  try
    try
      ButtonEstornarServico.Enabled := False;

      DM.FDQConsultaServico.close;

      DM.FDQConsultaServico.SQL.Text := 'SELECT A.*, B.Nome as NomeCliente, C.Descricao as DescriFormaPagto ' +
      'FROM CABESERVICO as A ' +
      'JOIN CLIENTE as B on A.cliente = B.codigo ' +
      'JOIN FORMAPAGTO as C on A.formapagto = C.codigo ' +
      'WHERE A.DATA BETWEEN :DATAINICIAL AND :DATAFINAL AND A.STATUS = :STATUS ';

      DM.FDQConsultaServico.Params.ParamByName('DATAINICIAL').AsDate :=  StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerInicial.Date));
      DM.FDQConsultaServico.Params.ParamByName('DATAFINAL').AsDate :=  StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerFinal.Date));

      // Vai procurar as finalizadas se tiver marcado
      if CheckBoxFinalizadas.Checked then
        DM.FDQConsultaServico.Params.ParamByName('STATUS').AsString := 'F'
      else
        DM.FDQConsultaServico.Params.ParamByName('STATUS').AsString := 'G';

      // Se tiver o cliente ele procura por cliente
      if not (EditCodigoCliente.Text = EmptyStr) then
        DM.FDQConsultaServico.SQL.Text := DM.FDQConsultaServico.SQL.Text + 'AND CLIENTE = ' + EditCodigoCliente.Text;

      // Ordena Pela Data
      DM.FDQConsultaServico.SQL.Text := DM.FDQConsultaServico.SQL.Text + ' ORDER BY DATA, CODIGO';

      DM.FDQConsultaServico.Open;

      DBGridServico.Refresh;
      DBGridServico.SetFocus;

      if CheckBoxFinalizadas.Checked then
        ButtonEstornarServico.Enabled := True;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;


procedure TFrmConsultaServico.ButtonEstornarServicoClick(Sender: TObject);
begin
  inherited;
  try
    try
      ButtonEstornarServico.Enabled := False;

      // Verifica se tem algo pesquisado
      if DM.FDQConsultaServico.Eof then
      begin
        Mensagem(2,'Deve-se consultar um serviço para estornar');
        EditCodigoCliente.SetFocus;
        Exit;
      end;

      // Verifica se o serviço selecionado esta finalizado
      if DM.FDQConsultaServico.FieldByName('STATUS').AsString = 'G' then
      begin
        Mensagem(2,'Serviço deve estar finalizado');
        EditCodigoCliente.SetFocus;
        Exit;
      end;

      // Verifica onde foi lançado o financeiro
      DM.FDQConsulta.Close;
      DM.FDQConsulta.SQL.Text := 'SELECT * FROM FORMAPAGTO WHERE CODIGO = :CODIGO';
      DM.FDQConsulta.Params.ParamByName('CODIGO').AsInteger := DM.FDQConsultaServico.FieldByName('FORMAPAGTO').AsInteger;
      DM.FDQConsulta.Open;

      if DM.FDQConsulta.FieldByName('LANCACAIXA').AsBoolean then
      begin
        if EstornaCaixa then
          EstornaServico;
      end
      else if DM.FDQConsulta.FieldByName('LANCAFINANCEIRO').AsBoolean then
      begin
        if EstornaFinanceiro then
          EstornaServico;
      end
      else if DM.FDQConsulta.FieldByName('LANCAPARCELADO').AsBoolean then
      begin
        if EstornaFinanceiro then
          EstornaServico;
      end
      else if DM.FDQConsulta.FieldByName('LANCASEMCONTROLE').AsBoolean then
      begin
        EstornaServico;
      end;

      DM.FDQConsulta.Close;

      ButtonConsultarClick(Sender);

    finally
      ButtonEstornarServico.Enabled := True;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaServico.ButtonFecharClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmConsultaServico.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaServico.EditCodigoClienteExit(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeCliente.Caption := '';

      // Se tiver colocado algum codigo ele pesquisa o cliente
      if not (EditCodigoCliente.Text = EmptyStr) then
      begin
        DM.FDQCliente.Close;
        DM.FDQCliente.SQL.Text := 'SELECT * FROM CLIENTE WHERE CODIGO = :CODIGO';
        DM.FDQCliente.Params.ParamByName('CODIGO').AsString := EditCodigoCliente.Text;
        DM.FDQCliente.Open;

        if DM.FDQCliente.Eof then
        begin
          Mensagem(1,'Cliente Não Encontrado');
          EditCodigoCliente.Clear;
          ButtonConsultaCliente.SetFocus;
          Exit;
        end
        else
        begin
          LabelNomeCliente.Caption := DM.FDQCliente.FieldByName('NOME').AsString;
          ButtonConsultar.SetFocus;
        end;
      end;
    finally
      DM.FDQCliente.Close;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

function TFrmConsultaServico.EstornaCaixa(): Boolean;
begin
  Result := False;
  try
    try
      DM.FDQCaixa.Close;
      DM.FDQCaixa.SQL.Text := 'SELECT * FROM CAIXA WHERE DOCUMENTO = :DOCUMENTO';
      DM.FDQCaixa.Params.ParamByName('DOCUMENTO').AsString := '1000' + DM.FDQConsultaServico.FieldByName('CODIGO').AsString;
      DM.FDQCaixa.Open;

      // Verifica se encontrou o registro
      if DM.FDQCaixa.Eof then
      begin
        Mensagem(2,'Registro não encontrado no caixa');
        Exit;
      end
      else
      begin
        DM.FDQCaixa.Delete;
        Result := True;
      end;

      DM.FDQCaixa.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

function TFrmConsultaServico.EstornaFinanceiro(): Boolean;
begin
  Result := False;
  try
    try
      // Verifica o recebido
      DM.FDQContaRecebida.Close;
      DM.FDQContaRecebida.SQL.Text := 'SELECT * FROM CONTARECEBIDA WHERE DOCUMENTO = :DOCUMENTO';
      DM.FDQContaRecebida.Params.ParamByName('DOCUMENTO').AsString := '1000' + DM.FDQConsultaServico.FieldByName('CODIGO').AsString;
      DM.FDQContaRecebida.Open;

      if not DM.FDQContaRecebida.Eof then
      begin
        Mensagem(2,'Serviço com conta já recebida.' + sLineBreak + 'Favor estornar as contas recebidas antes de estornar o serviço' + sLineBreak +  'Numero do documento: 1000' + DM.FDQConsultaServico.FieldByName('CODIGO').AsString);
        Exit;
      end
      else
      begin
        DM.FDQContaReceber.Close;
        DM.FDQContaReceber.SQL.Text := 'SELECT * FROM CONTARECEBER WHERE DOCUMENTO = :DOCUMENTO';
        DM.FDQContaReceber.Params.ParamByName('DOCUMENTO').AsString := '1000' + DM.FDQConsultaServico.FieldByName('CODIGO').AsString;
        DM.FDQContaReceber.Open;

        DM.FDQContaReceber.First;
        while not DM.FDQContaReceber.Eof do
        begin
          DM.FDQContaReceber.Delete;
          //DM.FDQContaReceber.Next;
        end;

        Result := True;
      end;

      DM.FDQContaRecebida.Close;
      DM.FDQContaReceber.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

function TFrmConsultaServico.EstornaProdutos: Boolean;
begin
  Result := False;
  try
    try
      // Se estiver marcado para baixar o estoque entao vai estornar o estoque tambem
      if DM.FDQParametros.FieldByName('BAIXAESTOQUEDOSERVICO').AsBoolean then
      begin
        // Pegar os produtos do serviço
        DM.FDQServico.Close;
        DM.FDQServico.SQL.Text := 'SELECT * FROM SERVICO WHERE CABESERVICO = :CABESERVICO ';
        DM.FDQServico.Params.ParamByName('CABESERVICO').AsInteger := DM.FDQCabeServico.FieldByName('CODIGO').AsInteger;
        DM.FDQServico.Open;

        if DM.FDQServico.Eof then
        begin
          Mensagem(2,'Não foram encontrados os produtos do serviço');
          Result := False;
          Exit;
        end
        else
        begin
          DM.FDQServico.First;

          while not DM.FDQServico.Eof do
          begin
            // Vai procurar e voltar o estoque de cada um dos produtos
            DM.FDQProduto.Close;
            DM.FDQProduto.SQL.Text := 'SELECT * FROM PRODUTO WHERE CODIGO = :CODIGO';
            DM.FDQProduto.Params.ParamByName('CODIGO').AsInteger := DM.FDQServico.FieldByName('PRODUTO').AsInteger;
            DM.FDQProduto.Open;

            if not DM.FDQProduto.Eof then
            begin
              DM.FDQProduto.Edit;
              DM.FDQProduto.FieldByName('ESTOQUE').AsFloat := DM.FDQProduto.FieldByName('ESTOQUE').AsFloat + DM.FDQServico.FieldByName('QUANTIDADE').AsFloat;
              DM.FDQProduto.Post;
            end;

            DM.FDQServico.Next;
          end;

          Result := True;

        end;
      end
      else
      begin
        Result := True;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaServico.EstornaServico;
begin
  try
    try
      // Estorna o serviço
      DM.FDQCabeServico.Close;
      DM.FDQCabeServico.SQL.Text := 'SELECT * FROM CABESERVICO WHERE CODIGO = :CODIGO';
      DM.FDQCabeServico.Params.ParamByName('CODIGO').AsInteger := DM.FDQConsultaServico.FieldByName('CODIGO').AsInteger;
      DM.FDQCabeServico.Open;

      // Se achou o serviço ele extorna ele
      if DM.FDQCabeServico.Eof then
      begin
        Mensagem(2,'Serviço não encontrado');
        Exit;
      end
      else
      begin
        // Altera o status do serviço apenas se estornou os produtos
        if EstornaProdutos then
        begin
          DM.FDQCabeServico.Edit;
          DM.FDQCabeServico.FieldByName('STATUS').AsString := 'G';
          DM.FDQCabeServico.Post;
          Mensagem(1,'Serviço Estornado com Sucesso');
        end;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaServico.FecharQuerys;
begin
  try
    try
      DM.FDQProduto.Close;
      DM.FDQCliente.Close;
      DM.FDQConsulta.Close;
      DM.FDQCaixa.Close;
      DM.FDQContaReceber.Close;
      DM.FDQContaRecebida.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaServico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  try
    try
      FecharQuerys;
      EditCodigoCliente.Clear;
      EditCodigoCliente.SetFocus;

      // Se tiver Pesquisado
      if DM.FDQConsultaServico.State in [dsBrowse] then
      begin
        DM.FDQCabeServico.Close;
        DM.FDQCabeServico.SQL.Text := 'SELECT * FROM CABESERVICO WHERE CODIGO = :CODIGO';
        DM.FDQCabeServico.Params.ParamByName('CODIGO').AsInteger := DM.FDQConsultaServico.FieldByName('CODIGO').AsInteger;
        DM.FDQCabeServico.Open;

        DM.FDQServico.Close;
        DM.FDQServico.SQL.Text := 'SELECT * FROM SERVICO WHERE CABESERVICO = :CABESERVICO ORDER BY NUMEROITEM';
        DM.FDQServico.Params.ParamByName('CABESERVICO').AsInteger := DM.FDQConsultaServico.FieldByName('CODIGO').AsInteger;
        DM.FDQServico.Open;
      end;

      DM.FDQConsultaServico.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaServico.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeCliente.Caption := '';
      FecharQuerys;
      DM.FDQConsultaServico.Close;
      EditCodigoCliente.Clear;
      EditCodigoCliente.SetFocus;

      CheckBoxFinalizadas.Checked := False;
      ButtonEstornarServico.Enabled := False;

      // Define as datas para hoje
      DateTimePickerInicial.Date := Date;
      DateTimePickerFinal.Date := Date;

    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
