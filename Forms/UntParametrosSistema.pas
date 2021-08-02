unit UntParametrosSistema;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Rtti,
  System.Bindings.Outputs,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ComCtrls,
  Vcl.StdCtrls,
  Vcl.Bind.Editors,
  Vcl.Bind.DBEngExt,

  UntBase,
  UntComponentesGerais,
  UntDataModule,
  UntBibliotecaFuncoes,

  Data.Bind.EngExt,
  Data.Bind.Components,
  Data.Bind.DBScope;

type
  TFrmParametrosSistema = class(TFrmBase)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox4: TGroupBox;
    EditNomeEmpresa: TEdit;
    EditHash: TEdit;
    EditNomeEmpresaCarne: TEdit;
    EditObservacaoCarne: TEdit;
    EditObservacaoCarne1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    CheckBoxImprimeCarne: TCheckBox;
    Label3: TLabel;
    Label4: TLabel;
    GroupBoxBotton: TGroupBox;
    ButtonGravar: TButton;
    CheckBoxControleEstoqueManual: TCheckBox;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    TabSheet4: TTabSheet;
    Venda: TTabSheet;
    CheckBoxBaixaEstoqueDoServico: TCheckBox;
    GroupBox3: TGroupBox;
    GroupBox5: TGroupBox;
    CheckBoxBaixaEstoqueDaVenda: TCheckBox;
    LinkControlToField8: TLinkControlToField;
    LinkControlToField9: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    Label5: TLabel;
    EditCodigoArquivoLiberacao: TEdit;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField10: TLinkControlToField;
    TabSheet5: TTabSheet;
    GroupBox6: TGroupBox;
    CheckBoxCalcularTrocoRecebimento: TCheckBox;
    LinkControlToField11: TLinkControlToField;
    CheckBoxCalcularValorProdutoNoServico: TCheckBox;
    LinkControlToField12: TLinkControlToField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmParametrosSistema: TFrmParametrosSistema;

implementation

{$R *.dfm}

uses UntSenha;

procedure TFrmParametrosSistema.ButtonGravarClick(Sender: TObject);
begin
  inherited;
  try
    try
      // Salva as alteraçoes
      DM.FDQParametros.Post;
      DM.FDQParametros.Refresh;

      Mensagem(1,'Parametros atualizados');

      // Abre novamente para caso quiser fazer outras alteraçoes
      DM.FDQParametros.Close;
      DM.FDQParametros.Open;
      DM.FDQParametros.Edit;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmParametrosSistema.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  try
    try
      FrmSenha.EditSenha.Clear;
      FrmSenha.Close;

      DM.FDQParametros.Close;
      DM.FDQParametros.Open;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

procedure TFrmParametrosSistema.FormShow(Sender: TObject);
begin
  inherited;
  try
    try
      DM.FDQParametros.Close;
      DM.FDQParametros.Open;
      DM.FDQParametros.Edit;
    finally

    end;
  Except on E:Exception do
    Mensagem(3,E.ToString);
  end;
end;

end.
