unit UntPrintModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxDBSet,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, UntDataModule;

type
  TDMImpressos = class(TDataModule)
    FDQCarne: TFDQuery;
    FDQCarneCODIGO: TIntegerField;
    FDQCarneCLIENTE: TIntegerField;
    FDQCarnePARCELA: TStringField;
    FDQCarneDOCUMENTO: TStringField;
    FDQCarneEMISSAO: TDateField;
    FDQCarneVENCIMENTO: TDateField;
    FDQCarneVALOR: TFloatField;
    FDQCarneFORMAPAGTO: TIntegerField;
    FDQCarneOBSERVACAO: TStringField;
    FDQCarneOBSERVACAO1: TStringField;
    FDQCarneOBSERVACAOSISTEMA: TStringField;
    FDQCarneNOME: TStringField;
    FDMTCarne: TFDMemTable;
    FDMTCarneTOTALPARCELAS: TIntegerField;
    ImpressaoCarne: TfrxReport;
    DSImpressaoCarne: TfrxDBDataset;
    DSCarne: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMImpressos: TDMImpressos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
