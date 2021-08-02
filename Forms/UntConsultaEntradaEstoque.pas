unit UntConsultaEntradaEstoque;

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
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.ComCtrls,

  Data.DB,

  FireDAC.Stan.Param,

  UntBase,
  UntComponentesGerais,
  UntDataModule,
  UntBibliotecaFuncoes;

type
  TFrmConsultaEntradaEstoque = class(TFrmBase)
    GroupBoxHeader: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    ButtonConsultar: TButton;
    DateTimePickerInicial: TDateTimePicker;
    DateTimePickerFinal: TDateTimePicker;
    RadioButtonCompra: TRadioButton;
    RadioButtonLancamento: TRadioButton;
    RadioButtonRecebimento: TRadioButton;
    GroupBoxGrid: TGroupBox;
    DBGridEntradaEstoque: TDBGrid;
    GroupBoxFooter: TGroupBox;
    ButtonFechar: TButton;
    ButtonEstornar: TButton;
    CheckBoxFinalizadas: TCheckBox;
    procedure ButtonConsultarClick(Sender: TObject);
    procedure ButtonEstornarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ButtonFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure EstornaEntrada;
    function EstornaCaixa(): Boolean;
    function EstornaFinanceiro(): Boolean;
    function EstornaEstoque(): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaEntradaEstoque: TFrmConsultaEntradaEstoque;

implementation

{$R *.dfm}

procedure TFrmConsultaEntradaEstoque.ButtonConsultarClick(Sender: TObject);
begin
  inherited;
  try
    try

      ButtonEstornar.Enabled := False;

      DM.FDQCabeEntrada.close;

      DM.FDQCabeEntrada.SQL.Text := 'SELECT * FROM CABEENTRADA WHERE STATUS = :STATUS ';

      // Consulta pelo status
      if CheckBoxFinalizadas.Checked then
        DM.FDQCabeEntrada.Params.ParamByName('STATUS').AsString :=  'F'
      else
        DM.FDQCabeEntrada.Params.ParamByName('STATUS').AsString :=  'G';

      // Filtra pelo que estiver marcado
      if RadioButtonCompra.Checked then
      begin
        DM.FDQCabeEntrada.SQL.Text := DM.FDQCabeEntrada.SQL.Text + ' AND DATACOMPRA BETWEEN :DATAINICIAL AND :DATAFINAL ORDER BY DATACOMPRA, CODIGO ';
      end
      else if RadioButtonRecebimento.Checked then
      begin
        DM.FDQCabeEntrada.SQL.Text := DM.FDQCabeEntrada.SQL.Text + ' AND DATARECEBIMENTO BETWEEN :DATAINICIAL AND :DATAFINAL ORDER BY DATARECEBIMENTO, CODIGO ';
      end
      else if RadioButtonLancamento.Checked then
      begin
        DM.FDQCabeEntrada.SQL.Text := DM.FDQCabeEntrada.SQL.Text + ' AND DATALANCAMENTO BETWEEN :DATAINICIAL AND :DATAFINAL ORDER BY DATALANCAMENTO, CODIGO ';
      end;

      DM.FDQCabeEntrada.Params.ParamByName('DATAINICIAL').AsDate :=  StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerInicial.Date));
      DM.FDQCabeEntrada.Params.ParamByName('DATAFINAL').AsDate :=  StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerFinal.Date));

      DM.FDQCabeEntrada.Open;

      DBGridEntradaEstoque.Refresh;
      DBGridEntradaEstoque.SetFocus;

      if CheckBoxFinalizadas.Checked then
        ButtonEstornar.Enabled := True;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaEntradaEstoque.ButtonEstornarClick(
  Sender: TObject);
begin
  inherited;
  try
    try
      ButtonEstornar.Enabled := False;

      if DM.FDQCabeEntrada.Eof then
      begin
        Mensagem(2,'Deve-se consultar uma entrada para estornar');
        ButtonConsultar.SetFocus;
        Exit;
      end;

      if DM.FDQCabeEntrada.FieldByName('STATUS').AsString = 'G' then
      begin
        Mensagem(2,'Entrada não finalizada ' + sLineBreak + ' Favor consultar entrada ja lançada');
        ButtonConsultar.SetFocus;
        Exit;
      end;

      if Mensagem(4,'O Estorno da entrada irá alterar o estoque dos produtos e o seu caixa diario dos dias respectivos ao lançamento'
      + sLineBreak + 'Deseja estornar a entrada selecionada?') then
      begin
        // Caso for Sim

        // Verifica onde foi lançado o financeiro
        DM.FDQConsulta.Close;
        DM.FDQConsulta.SQL.Text := 'SELECT * FROM FORMAPAGTO WHERE CODIGO = :CODIGO';
        DM.FDQConsulta.Params.ParamByName('CODIGO').AsInteger := DM.FDQCabeEntrada.FieldByName('FORMAPAGTO').AsInteger;
        DM.FDQConsulta.Open;

        if DM.FDQConsulta.FieldByName('LANCACAIXA').AsBoolean then
        begin
          if EstornaCaixa then
          begin
            if EstornaEstoque then
              EstornaEntrada;
          end;

        end
        else if DM.FDQConsulta.FieldByName('LANCAFINANCEIRO').AsBoolean then
        begin
          if EstornaFinanceiro then
          begin
            if EstornaEstoque then
              EstornaEntrada;
          end;
        end
        else if DM.FDQConsulta.FieldByName('LANCAPARCELADO').AsBoolean then
        begin
          if EstornaFinanceiro then
          begin
            if EstornaEstoque then
              EstornaEntrada;
          end;
        end
        else if DM.FDQConsulta.FieldByName('LANCASEMCONTROLE').AsBoolean then
        begin
          if EstornaEstoque then
            EstornaEntrada;
        end;

        CheckBoxFinalizadas.Checked := False;
        ButtonConsultarClick(Sender);

        if DM.FDQCabeVenda.FieldByName('STATUS').AsString = 'G' then
        begin
          Mensagem(1,'Entrada estornada com sucesso');
        end;
      end
      else
      begin
        // Caso for Nao
        ButtonEstornar.Enabled := True;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaEntradaEstoque.ButtonFecharClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmConsultaEntradaEstoque.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

function TFrmConsultaEntradaEstoque.EstornaCaixa: Boolean;
begin
  Result := False;
  try
    try
      DM.FDQCaixa.Close;
      DM.FDQCaixa.SQL.Text := 'SELECT * FROM CAIXA WHERE DOCUMENTO = :DOCUMENTO';
      DM.FDQCaixa.Params.ParamByName('DOCUMENTO').AsString := '4000' + DM.FDQCabeEntrada.FieldByName('CODIGO').AsString;
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

procedure TFrmConsultaEntradaEstoque.EstornaEntrada;
begin
  try
    try
      DM.FDQCabeEntrada.Edit;
      DM.FDQCabeEntrada.FieldByName('STATUS').AsString := 'G';
      DM.FDQCabeEntrada.Post;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

function TFrmConsultaEntradaEstoque.EstornaEstoque: Boolean;
begin
  Result := False;
  try
    try
      DM.FDQEntrada.Close;
      DM.FDQEntrada.SQL.Text := 'SELECT * FROM ENTRADA WHERE CABEENTRADA = :CABEENTRADA ORDER BY NUMEROITEM';
      DM.FDQEntrada.Params.ParamByName('CABEENTRADA').AsInteger := DM.FDQCabeEntrada.FieldByName('CODIGO').AsInteger;
      DM.FDQEntrada.Open;

      // Verifica se achou os itens da entrada
      if DM.FDQEntrada.Eof then
      begin
        Mensagem(2,'Produtos da entrada nao encontrados' + sLineBreak + 'Impossivel fazer o ajuste dos estoques');
        Exit;
      end;

      DM.FDQEntrada.First;
      while not DM.FDQEntrada.Eof do
      begin
        DM.FDQProduto.Close;
        DM.FDQProduto.SQL.Text := 'SELECT * FROM PRODUTO WHERE CODIGO = :CODIGO';
        DM.FDQProduto.Params.ParamByName('CODIGO').AsInteger := DM.FDQEntrada.FieldByName('PRODUTO').AsInteger;
        DM.FDQProduto.Open;

        // Atualiza as informaçoes
        if not DM.FDQProduto.Eof then
        begin
          DM.FDQProduto.Edit;
          DM.FDQProduto.FieldByName('ESTOQUE').AsFloat := DM.FDQProduto.FieldByName('ESTOQUE').AsFloat - DM.FDQEntrada.FieldByName('QUANTIDADE').AsFloat;
          DM.FDQProduto.Post;
        end;

        DM.FDQProduto.Close;

        DM.FDQEntrada.Next;
      end;
      Result := True;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

function TFrmConsultaEntradaEstoque.EstornaFinanceiro: Boolean;
begin
  Result := False;
  try
    try
      // Verifica o pago
      DM.FDQContaPaga.Close;
      DM.FDQContaPaga.SQL.Text := 'SELECT * FROM CONTAPAGA WHERE DOCUMENTO = :DOCUMENTO';
      DM.FDQContaPaga.Params.ParamByName('DOCUMENTO').AsString := '4000' + DM.FDQCabeEntrada.FieldByName('CODIGO').AsString;
      DM.FDQContaPaga.Open;

      if not DM.FDQContaPaga.Eof then
      begin
        Mensagem(2,'Entrada com conta já paga.' + sLineBreak + 'Favor estornar as contas pagas antes de estornar a entrada' + sLineBreak +  'Numero do documento: 4000' + DM.FDQCabeEntrada.FieldByName('CODIGO').AsString);
        Exit;
      end
      else
      begin
        DM.FDQContaPagar.Close;
        DM.FDQContaPagar.SQL.Text := 'SELECT * FROM CONTAPAGAR WHERE DOCUMENTO = :DOCUMENTO';
        DM.FDQContaPagar.Params.ParamByName('DOCUMENTO').AsString := '4000' + DM.FDQCabeEntrada.FieldByName('CODIGO').AsString;
        DM.FDQContaPagar.Open;

        DM.FDQContaPagar.First;
        while not DM.FDQContaPagar.Eof do
        begin
          DM.FDQContaPagar.Delete;
          //DM.FDQContaPagar.Next;
        end;

        Result := True;
      end;

      DM.FDQContaPaga.Close;
      DM.FDQContaPagar.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaEntradaEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  try
    try
      // consulta os produtos da entrada
      if DM.FDQCabeEntrada.State in [dsBrowse] then
      begin
        DM.FDQEntrada.Close;
        DM.FDQEntrada.SQL.Text := 'SELECT * FROM ENTRADA WHERE CABEENTRADA = :CABEENTRADA ORDER BY NUMEROITEM';
        DM.FDQEntrada.Params.ParamByName('CABEENTRADA').AsInteger := DM.FDQCabeEntrada.FieldByName('CODIGO').AsInteger;
        DM.FDQEntrada.Open;
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaEntradaEstoque.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      DM.FDQCabeEntrada.Close;
      DM.FDQEntrada.Close;
      DM.FDQCaixa.Close;
      DM.FDQProduto.Close;

      CheckBoxFinalizadas.Checked := False;
      DateTimePickerInicial.Date := Date;
      DateTimePickerFinal.Date := Date;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
