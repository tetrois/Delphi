unit DataModule1;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  FireDAC.Comp.UI;

type
  TDM1 = class(TDataModule)
    DS1: TDataSource;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    znaki1: TFDTable;
    FDC1: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    znaki2: TFDTable;
    znaki3: TFDTable;
    znaki4: TFDTable;
    znaki5: TFDTable;
    znaki6: TFDTable;
    znaki7: TFDTable;
    znaki8: TFDTable;
    shtraf1: TFDTable;
    shtraf2: TFDTable;
    shtraf3: TFDTable;
    shtraf4: TFDTable;
    shtraf5: TFDTable;
    shtraf6: TFDTable;
    shtraf7: TFDTable;
    shtraf8: TFDTable;
    shtraf9: TFDTable;
    DS2: TDataSource;
    DS3: TDataSource;
    tblPDD1: TFDTable;
    tblPDD2: TFDTable;
    tblPDD3: TFDTable;
    tblPDD4: TFDTable;
    tblPDD5: TFDTable;
    tblPDD6: TFDTable;
    tblPDD7: TFDTable;
    tblPDD8: TFDTable;
    tblPDD9: TFDTable;
    tblPDD10: TFDTable;
    tblPDD11: TFDTable;
    tblPDD12: TFDTable;
    tblPDD13: TFDTable;
    tblPDD14: TFDTable;
    tblPDD15: TFDTable;
    tblPDD16: TFDTable;
    tblPDD17: TFDTable;
    tblPDD18: TFDTable;
    tblPDD19: TFDTable;
    tblPDD20: TFDTable;
    tblPDD21: TFDTable;
    tblPDD22: TFDTable;
    tblPDD23: TFDTable;
    tblPDD24: TFDTable;
    tblPDD25: TFDTable;
    tblPDD0: TFDTable;
    DS4: TDataSource;
    tblDriveLicPick: TFDTable;
    tblDriveLicType: TFDTable;
    DS5: TDataSource;
    tblMainInsurance: TFDTable;
    procedure FDC1BeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM1: TDM1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM1.FDC1BeforeConnect(Sender: TObject);
begin
 DM1.FDC1.Params.Values['Database']:='BD1.db';
end;


end.
