unit UntConsultaContaPagar;

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
  UntBibliotecaFuncoes,
  UntComponentesGerais,
  UntDataModule,
  UntConsultaFornecedor;

type
  TFrmConsultaContaPagar = class(TFrmBase)
    GroupBoxHeader: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EditCodigoFornecedor: TEdit;
    ButtonConsultar: TButton;
    DateTimePickerInicial: TDateTimePicker;
    DateTimePickerFinal: TDateTimePicker;
    ButtonConsultaFornecedor: TButton;
    RadioButtonEmissao: TRadioButton;
    RadioButtonVencimento: TRadioButton;
    GroupBoxGrid: TGroupBox;
    DBGridContaPagar: TDBGrid;
    GroupBoxFooter: TGroupBox;
    ButtonFechar: TButton;
    ButtonExcluirConta: TButton;
    LabelNomeFornecedor: TLabel;
    procedure ButtonConsultaFornecedorClick(Sender: TObject);
    procedure ButtonConsultarClick(Sender: TObject);
    procedure ButtonExcluirContaClick(Sender: TObject);
    procedure ButtonFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditCodigoFornecedorExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaContaPagar: TFrmConsultaContaPagar;

implementation

{$R *.dfm}

procedure TFrmConsultaContaPagar.ButtonConsultaFornecedorClick(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeFornecedor.Caption := '';
      FrmConsultaFornecedor.ShowModal;
    finally
      if not (DM.FDQFornecedor.State in [dsInactive]) then
      begin
        EditCodigoFornecedor.Text := DM.FDQFornecedor.FieldByName('CODIGO').AsString;
        LabelNomeFornecedor.Caption := DM.FDQFornecedor.FieldByName('NOMEFANTASIA').AsString;
      end;

      // Volta o foco para o campo
      EditCodigoFornecedor.SetFocus;
    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaContaPagar.ButtonConsultarClick(Sender: TObject);
begin
  inherited;
  try
    try
      DM.FDQContaPagar.close;
      DM.FDQContaPagar.SQL.Text := 'SELECT * FROM CONTAPAGAR WHERE ';

      // Se tiver o cliente ele pesquisa
      if not (EditCodigoFornecedor.Text = EmptyStr) then
      begin
        DM.FDQContaPagar.SQL.Text := DM.FDQContaPagar.SQL.Text + 'FORNECEDOR = :FORNECEDOR AND ';
        DM.FDQContaPagar.Params.ParamByName('FORNECEDOR').AsString := EditCodigoFornecedor.Text;
      end;

      // Pesquisa pelo que estiver marcado
      if RadioButtonEmissao.Checked then
      begin
        DM.FDQContaPagar.SQL.Text := DM.FDQContaPagar.SQL.Text + ' EMISSAO BETWEEN :DATAINICIAL AND :DATAFINAL ORDER BY EMISSAO';
      end
      else if RadioButtonVencimento.Checked then
      begin
        DM.FDQContaPagar.SQL.Text := DM.FDQContaPagar.SQL.Text + ' VENCIMENTO BETWEEN :DATAINICIAL AND :DATAFINAL ORDER BY VENCIMENTO';
      end;

      DM.FDQContaPagar.Params.ParamByName('DATAINICIAL').AsDate :=  StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerInicial.Date));
      DM.FDQContaPagar.Params.ParamByName('DATAFINAL').AsDate :=  StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerFinal.Date));

      DM.FDQContaPagar.Open;

      DBGridContaPagar.Refresh;
      DBGridContaPagar.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaContaPagar.ButtonExcluirContaClick(Sender: TObject);
var
  I, Codigo : Integer;
  NomeCampo : string;
begin
  inherited;
  try
    try
      // Verifica Se consultou algum registro
      if DM.FDQContaPagar.Eof then
      begin
        Mensagem(2,'Deve-se consultar uma conta');
        Exit;
      end;

      if Mensagem(4,'Deseja excluir o registro selecionado?') then
      begin
        // Comandos para Sim

        // Verifica se foi selecionado alguma conta
        if not DM.FDQContaPagar.Eof then
        begin
          // Salva os Dados das Contas Excluidas
          DM.FDQContaExcluida.Close;
          DM.FDQContaExcluida.SQL.Text := 'SELECT * FROM CONTAEXCLUIDA';
          DM.FDQContaExcluida.Open;

          DM.FDQContaExcluida.Insert;

          // pega os contadores
          DM.FDQContadores.Close;
          DM.FDQContadores.Open;

          // pega o valor do id contarecebida
          DM.FDQContadores.Locate('TABELA', 'CONTAEXCLUIDA',[]);

          Codigo := DM.FDQContadores.FieldByName('VALOR').AsInteger +1;

          for I := 0 to (DM.FDQContaPagar.FieldCount - 1) do
          begin
            NomeCampo := DM.FDQContaPagar.Fields[I].FieldName;

            if (DM.FDQContaExcluida.FindField(NomeCampo) <> nil) then
              DM.FDQContaExcluida.FieldByName(NomeCampo).Value := DM.FDQContaPagar.FieldByName(NomeCampo).Value;
          end;

          DM.FDQContaExcluida.FieldByName('CODIGO').AsInteger := Codigo;

          // Atualiza o contador do ContaExcluida
          DM.FDQContadores.Edit;
          DM.FDQContadores.FieldByName('VALOR').AsInteger := Codigo;
          DM.FDQContadores.Post;
          DM.FDQContadores.Close;

          DM.FDQContaExcluida.FieldByName('DATAEXCLUSAO').AsDateTime := Now;

          DM.FDQContaExcluida.Post;

          // Deleta o registro do contas a pagar
          DM.FDQContaPagar.Delete;

          DM.FDQContaExcluida.Close;

          ButtonConsultarClick(Sender);

          Mensagem(1,'Conta excluida com sucesso');
        end
        else
        begin
          Mensagem(1,'Nenhuma conta selecionada');
        end;
      end
      else
      begin
        // Comandos para Nao
      end;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaContaPagar.ButtonFecharClick(Sender: TObject);
begin
  inherited;
  try
    try
      FrmConsultaContaPagar.Close;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaContaPagar.EditCodigoFornecedorExit(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeFornecedor.Caption := '';

      if not (EditCodigoFornecedor.Text = EmptyStr) then
      begin
        DM.FDQFornecedor.Close;
        DM.FDQFornecedor.SQL.Text := 'SELECT * FROM FORNECEDOR WHERE CODIGO = :CODIGO ';
        DM.FDQFornecedor.Params.ParamByName('CODIGO').AsString := EditCodigoFornecedor.Text;
        DM.FDQFornecedor.Open;

        if DM.FDQFornecedor.Eof then
        begin
          Mensagem(1,'Fornecedor Não Encontrado');
          EditCodigoFornecedor.Clear;
          ButtonConsultaFornecedor.SetFocus;
        end
        else
        begin
          EditCodigoFornecedor.Text := DM.FDQFornecedor.FieldByName('CODIGO').AsString;
          LabelNomeFornecedor.Caption := DM.FDQFornecedor.FieldByName('NOMEFANTASIA').AsString;
        end;

        DM.FDQFornecedor.Close;
      end
      else
        ButtonConsultaFornecedor.SetFocus;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmConsultaContaPagar.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      LabelNomeFornecedor.Caption := '';
      // Seta as datas para dia atual
      DateTimePickerInicial.Date := Date;
      DateTimePickerFinal.Date := Date;

      DM.FDQContaPagar.Close;
      EditCodigoFornecedor.Clear;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
