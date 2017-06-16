unit PDDForm1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Menus;

type
  TPDDForm = class(TForm)
    DBMemo1: TDBMemo;
    ComboBox1: TComboBox;
    Label1: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    procedure ComboBox1Change(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PDDForm: TPDDForm;

implementation
  uses DataModule1,MainForm1;
{$R *.dfm}

procedure TPDDForm.ComboBox1Change(Sender: TObject);
begin
case ComboBox1.ItemIndex of
0:begin DM1.tblPDD0.Active:=True; DM1.DS3.DataSet:=DM1.tblPDD0; end;
1:begin DM1.tblPDD1.Active:=True; DM1.DS3.DataSet:=DM1.tblPDD1; end;
2:begin DM1.tblPDD2.Active:=True; DM1.DS3.DataSet:=DM1.tblPDD2; end;
3:begin DM1.tblPDD3.Active:=True; DM1.DS3.DataSet:=DM1.tblPDD3; end;
4:begin DM1.tblPDD4.Active:=True; DM1.DS3.DataSet:=DM1.tblPDD4; end;
5:begin DM1.tblPDD5.Active:=True; DM1.DS3.DataSet:=DM1.tblPDD5; end;
6:begin DM1.tblPDD6.Active:=True; DM1.DS3.DataSet:=DM1.tblPDD6; end;
7:begin DM1.tblPDD7.Active:=True; DM1.DS3.DataSet:=DM1.tblPDD7; end;
8:begin DM1.tblPDD8.Active:=True; DM1.DS3.DataSet:=DM1.tblPDD8; end;
9:begin DM1.tblPDD9.Active:=True; DM1.DS3.DataSet:=DM1.tblPDD9; end;
10:begin DM1.tblPDD10.Active:=True; DM1.DS3.DataSet:=DM1.tblPDD10; end;
11:begin DM1.tblPDD11.Active:=True; DM1.DS3.DataSet:=DM1.tblPDD11; end;
12:begin DM1.tblPDD12.Active:=True; DM1.DS3.DataSet:=DM1.tblPDD12; end;
13:begin DM1.tblPDD13.Active:=True; DM1.DS3.DataSet:=DM1.tblPDD13; end;
14:begin DM1.tblPDD14.Active:=True; DM1.DS3.DataSet:=DM1.tblPDD14; end;
15:begin DM1.tblPDD15.Active:=True; DM1.DS3.DataSet:=DM1.tblPDD15; end;
16:begin DM1.tblPDD16.Active:=True; DM1.DS3.DataSet:=DM1.tblPDD16; end;
17:begin DM1.tblPDD17.Active:=True; DM1.DS3.DataSet:=DM1.tblPDD17; end;
18:begin DM1.tblPDD18.Active:=True; DM1.DS3.DataSet:=DM1.tblPDD18; end;
19:begin DM1.tblPDD19.Active:=True; DM1.DS3.DataSet:=DM1.tblPDD19; end;
20:begin DM1.tblPDD20.Active:=True; DM1.DS3.DataSet:=DM1.tblPDD20; end;
21:begin DM1.tblPDD21.Active:=True; DM1.DS3.DataSet:=DM1.tblPDD21; end;
22:begin DM1.tblPDD22.Active:=True; DM1.DS3.DataSet:=DM1.tblPDD22; end;
23:begin DM1.tblPDD23.Active:=True; DM1.DS3.DataSet:=DM1.tblPDD23; end;
24:begin DM1.tblPDD24.Active:=True; DM1.DS3.DataSet:=DM1.tblPDD24; end;
25:begin DM1.tblPDD25.Active:=True; DM1.DS3.DataSet:=DM1.tblPDD25; end;


end;
   end;
procedure TPDDForm.N1Click(Sender: TObject);
begin
  PDDForm.Close;
  MainForm.Show;
end;



end.
