unit UntComponentesGerais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList, Data.DB,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFrmComponentes = class(TForm)
    ImageListButtons: TImageList;
    ImageListButtons48: TImageList;
    Label1: TLabel;
    LabelNomeCliente: TLabel;
    EditCodigoCliente: TEdit;
    ButtonConsultaCliente: TButton;
    DBGrid: TDBGrid;
    GroupBoxBotton: TGroupBox;
    ButtonAdicionar: TButton;
    ButtonConsultar: TButton;
    ButtonExcluir: TButton;
    ButtonGravar: TButton;
    ButtonIncluir: TButton;
    ButtonLancar: TButton;
    ButtonFechar: TButton;
    ButtonGerarRelatorio: TButton;
    Label2: TLabel;
    LabelNomeProduto: TLabel;
    EditCodigoProduto: TEdit;
    ButtonConsultaProduto: TButton;
    Label3: TLabel;
    LabelNomeGrupo: TLabel;
    EditCodigoGrupo: TEdit;
    ButtonConsultaGrupo: TButton;
    Label4: TLabel;
    LabelNomeSubgrupo: TLabel;
    EditCodigoSubGrupo: TEdit;
    ButtonConsultaSubGrupo: TButton;
    Edit1: TEdit;
    ComboBoxStatus: TComboBox;
    Label5: TLabel;
    ComboBoxFormaPagamento: TComboBox;
    Label6: TLabel;
    DateTimePickerDataInicial: TDateTimePicker;
    Label7: TLabel;
    DateTimePickerDataFinal: TDateTimePicker;
    Label8: TLabel;
    ButtonEstornar: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmComponentes: TFrmComponentes;

implementation

{$R *.dfm}

end.
