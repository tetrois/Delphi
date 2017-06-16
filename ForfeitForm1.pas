unit ForfeitForm1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids,DB,Vcl.DBCtrls,Vcl.DBCGrids, Vcl.Menus;

type
  TForfeitForm = class(TForm)
    DBCtrlGrid1: TDBCtrlGrid;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    btnShtraf1: TButton;
    btnShtraf2: TButton;
    btnShtraf3: TButton;
    btnShtraf4: TButton;
    btnShtraf5: TButton;
    btnShtraf6: TButton;
    btnShtraf7: TButton;
    btnShtraf8: TButton;
    btnShtraf9: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    procedure btnShtraf1Click(Sender: TObject);
    procedure btnShtraf2Click(Sender: TObject);
    procedure btnShtraf3Click(Sender: TObject);
    procedure btnShtraf4Click(Sender: TObject);
    procedure btnShtraf5Click(Sender: TObject);
    procedure btnShtraf6Click(Sender: TObject);
    procedure btnShtraf7Click(Sender: TObject);
    procedure btnShtraf8Click(Sender: TObject);
    procedure btnShtraf9Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ForfeitForm: TForfeitForm;
   const FormName:string='Штрафы за нарушение ПДД';
implementation
  uses DataModule1,MainForm1;
{$R *.dfm}


procedure TForfeitForm.btnShtraf1Click(Sender: TObject);
begin
if DM1.shtraf1.Active=true then
DM1.DS2.DataSet:=DM1.shtraf1
else begin
DM1.shtraf1.Active:=True;
btnShtraf1.Click;
end;
ForfeitForm.Caption:=FormName+' - '+btnShtraf1.Caption;
end;

procedure TForfeitForm.btnShtraf2Click(Sender: TObject);
begin
if DM1.shtraf2.Active=true then
DM1.DS2.DataSet:=DM1.shtraf2
else begin
DM1.shtraf2.Active:=True;
btnShtraf2.Click;
end;
ForfeitForm.Caption:=FormName+' - '+btnShtraf2.Caption;
end;

procedure TForfeitForm.btnShtraf3Click(Sender: TObject);
begin
if DM1.shtraf3.Active=true then
DM1.DS2.DataSet:=DM1.shtraf3
else begin
DM1.shtraf3.Active:=True;
btnShtraf3.Click;
end;
ForfeitForm.Caption:=FormName+' - '+btnShtraf3.Caption;
end;

procedure TForfeitForm.btnShtraf4Click(Sender: TObject);
begin
if DM1.shtraf4.Active=true then
DM1.DS2.DataSet:=DM1.shtraf4
else begin
DM1.shtraf4.Active:=True;
btnShtraf4.Click;
end;
ForfeitForm.Caption:=FormName+' - '+btnShtraf4.Caption;
end;

procedure TForfeitForm.btnShtraf5Click(Sender: TObject);
begin
if DM1.shtraf5.Active=true then
DM1.DS2.DataSet:=DM1.shtraf5
else begin
DM1.shtraf5.Active:=True;
btnShtraf5.Click;
end;
ForfeitForm.Caption:=FormName+' - '+btnShtraf5.Caption;
end;

procedure TForfeitForm.btnShtraf6Click(Sender: TObject);
begin
if DM1.shtraf6.Active=true then
DM1.DS2.DataSet:=DM1.shtraf6
else begin
DM1.shtraf6.Active:=True;
btnShtraf6.Click;
end;
ForfeitForm.Caption:=FormName+' - '+btnShtraf6.Caption;
end;

procedure TForfeitForm.btnShtraf7Click(Sender: TObject);
begin
if DM1.shtraf7.Active=true then
DM1.DS2.DataSet:=DM1.shtraf7
else begin
DM1.shtraf7.Active:=True;
btnShtraf7.Click;
end;
ForfeitForm.Caption:=FormName+' - '+btnShtraf7.Caption;
end;

procedure TForfeitForm.btnShtraf8Click(Sender: TObject);
begin
if DM1.shtraf8.Active=true then
DM1.DS2.DataSet:=DM1.shtraf8
else begin
DM1.shtraf8.Active:=True;
btnShtraf8.Click;
end;
ForfeitForm.Caption:=FormName+' - '+btnShtraf8.Caption;
end;

procedure TForfeitForm.btnShtraf9Click(Sender: TObject);
begin
if DM1.shtraf9.Active=true then
DM1.DS2.DataSet:=DM1.shtraf9
else begin
DM1.shtraf9.Active:=True;
btnShtraf9.Click;
end;
ForfeitForm.Caption:=FormName+' - '+btnShtraf9.Caption;
end;


procedure TForfeitForm.N1Click(Sender: TObject);
begin
   ForfeitForm.Close;
   MainForm.Show;
end;

end.
