unit ZnakForm1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.DBCtrls, Vcl.DBCGrids,
  Vcl.Menus;

type
  TznakForm = class(TForm)
    btnZnaki1: TButton;
    btnZnaki2: TButton;
    GroupBox1: TGroupBox;
    DBCtrlGrid1: TDBCtrlGrid;
    Image1: TImage;
    DBMemo1: TDBMemo;
    Image2: TImage;
    btnZnaki3: TButton;
    btnZnaki4: TButton;
    btnZnaki5: TButton;
    btnZnaki6: TButton;
    btnZnaki7: TButton;
    btnZnaki8: TButton;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemo4: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    procedure btnZnaki1Click(Sender: TObject);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure DBCtrlGrid1Click(Sender: TObject);
    procedure btnZnaki2Click(Sender: TObject);
    procedure btnZnaki3Click(Sender: TObject);
    procedure btnZnaki4Click(Sender: TObject);
    procedure btnZnaki5Click(Sender: TObject);
    procedure btnZnaki6Click(Sender: TObject);
    procedure btnZnaki7Click(Sender: TObject);
    procedure btnZnaki8Click(Sender: TObject);
    procedure btnManznakClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  znakForm: TznakForm;
  menuznakitem:Integer;
  DirZnak:string;
  const FormName:string='Дорожные знаки';
implementation
 uses DataModule1,MainForm1;
{$R *.dfm}

procedure TznakForm.btnManznakClick(Sender: TObject);
begin
znakForm.Close;
end;

procedure TznakForm.FormActivate(Sender: TObject);
begin
 btnZnaki1.Click;
end;

procedure TznakForm.N1Click(Sender: TObject);
begin
    znakForm.Close;
   MainForm.Show;
end;

procedure TznakForm.btnZnaki1Click(Sender: TObject);
begin
znakForm.Caption:=FormName+' - '+btnZnaki1.Caption;
    begin
        if DM1.znaki1.Active=True then
            begin
                menuznakitem:=1;
                DM1.DS1.DataSet:=DM1.znaki1;
                DirZnak:='Picture\Znaki\1.Предупреждающие знаки\';
                Image2.Picture.LoadFromFile(DirZnak+DM1.znaki1.FieldByName('ID_znak').AsString+'.png');
                Image1.Picture.LoadFromFile(DirZnak+DM1.znaki1.FieldByName('ID_znak').AsString+'.png');
                GroupBox1.Caption:='1.Предупреждающие знаки';
            end
        else
          begin
            DM1.znaki1.Active:=True;
            btnZnaki1.Click;
          end;
    end;
end;

procedure TznakForm.btnZnaki2Click(Sender: TObject);
begin
znakForm.Caption:=FormName+' - '+btnZnaki2.Caption;
if DM1.DS1.DataSet=DM1.znaki2 then
else
if DM1.znaki2.Active=True then
begin
menuznakitem:=2;
DM1.DS1.DataSet:=DM1.znaki2;
DirZnak:='Picture\Znaki\2.Знаки приоритета\';
Image2.Picture.LoadFromFile(DirZnak+DM1.znaki2.FieldByName('ID_znak').AsString+'.png');
Image1.Picture.LoadFromFile(DirZnak+DM1.znaki2.FieldByName('ID_znak').AsString+'.png');
GroupBox1.Caption:='2.Знаки приоритета';
end else
begin
DM1.znaki2.Active:=True;
btnZnaki2.Click;
end;
end;

procedure TznakForm.btnZnaki3Click(Sender: TObject);
begin
znakForm.Caption:=FormName+' - '+btnZnaki3.Caption;
if DM1.DS1.DataSet=DM1.znaki3 then
else
if DM1.znaki3.Active=True then
begin
menuznakitem:=3;
DM1.DS1.DataSet:=DM1.znaki3;
DirZnak:='Picture\Znaki\3.Запрещающие знаки\';
Image2.Picture.LoadFromFile(DirZnak+DM1.znaki3.FieldByName('ID_znak').AsString+'.png');
Image1.Picture.LoadFromFile(DirZnak+DM1.znaki3.FieldByName('ID_znak').AsString+'.png');
GroupBox1.Caption:='3.Запрещающие знаки';
end else
begin
DM1.znaki3.Active:=True;
btnZnaki3.Click;
end;
end;

procedure TznakForm.btnZnaki4Click(Sender: TObject);
begin
znakForm.Caption:=FormName+' - '+btnZnaki4.Caption;
if DM1.DS1.DataSet=DM1.znaki4 then
else
if DM1.znaki4.Active=True then
begin
menuznakitem:=4;
DM1.DS1.DataSet:=DM1.znaki4;
DirZnak:='Picture\Znaki\4.Предписывающие знаки\';
Image2.Picture.LoadFromFile(DirZnak+DM1.znaki4.FieldByName('ID_znak').AsString+'.png');
Image1.Picture.LoadFromFile(DirZnak+DM1.znaki4.FieldByName('ID_znak').AsString+'.png');
GroupBox1.Caption:='4.Предписывающие знаки';
end else
begin
DM1.znaki4.Active:=True;
btnZnaki4.Click;
end;
end;

procedure TznakForm.btnZnaki5Click(Sender: TObject);
begin
znakForm.Caption:=FormName+' - '+btnZnaki5.Caption;
if DM1.DS1.DataSet=DM1.znaki5 then
else
if DM1.znaki5.Active=True then
begin
menuznakitem:=5;
DM1.DS1.DataSet:=DM1.znaki5;
DirZnak:='Picture\Znaki\5.Знаки особых предписаний\';
Image2.Picture.LoadFromFile(DirZnak+DM1.znaki5.FieldByName('ID_znak').AsString+'.png');
Image1.Picture.LoadFromFile(DirZnak+DM1.znaki5.FieldByName('ID_znak').AsString+'.png');
GroupBox1.Caption:='5.Знаки особых предписаний';
end else
begin
DM1.znaki5.Active:=True;
btnZnaki5.Click;
end;
end;

procedure TznakForm.btnZnaki6Click(Sender: TObject);
begin
znakForm.Caption:=FormName+' - '+btnZnaki6.Caption;
if DM1.DS1.DataSet=DM1.znaki6 then
else
if DM1.znaki6.Active=True then
begin
menuznakitem:=6;
DM1.DS1.DataSet:=DM1.znaki6;
DirZnak:='Picture\Znaki\6.Информационные знаки\';
Image2.Picture.LoadFromFile(DirZnak+DM1.znaki6.FieldByName('ID_znak').AsString+'.png');
Image1.Picture.LoadFromFile(DirZnak+DM1.znaki6.FieldByName('ID_znak').AsString+'.png');
GroupBox1.Caption:='6.Информационные знаки';
end else
begin
DM1.znaki6.Active:=True;
btnZnaki6.Click;
end;
end;

procedure TznakForm.btnZnaki7Click(Sender: TObject);
begin
znakForm.Caption:=FormName+' - '+btnZnaki7.Caption;
if DM1.DS1.DataSet=DM1.znaki7 then
else
if DM1.znaki7.Active=True then
begin
menuznakitem:=7;
DM1.DS1.DataSet:=DM1.znaki7;
DirZnak:='Picture\Znaki\7.Знаки сервиса\';
Image2.Picture.LoadFromFile(DirZnak+DM1.znaki7.FieldByName('ID_znak').AsString+'.png');
Image1.Picture.LoadFromFile(DirZnak+DM1.znaki7.FieldByName('ID_znak').AsString+'.png');
GroupBox1.Caption:='7.Знаки сервиса';
end else
begin
DM1.znaki7.Active:=True;
btnZnaki7.Click;
end;
end;

procedure TznakForm.btnZnaki8Click(Sender: TObject);
begin
znakForm.Caption:=FormName+' - '+btnZnaki8.Caption;
if DM1.DS1.DataSet=DM1.znaki8 then
else
    if DM1.znaki8.Active=true then
        begin
              menuznakitem:=8;
              DM1.DS1.DataSet:=DM1.znaki8;
              DirZnak:='Picture\Znaki\8.Знаки дополнительной информации (таблички)\';
              Image2.Picture.LoadFromFile(DirZnak+DM1.znaki8.FieldByName('ID_znak').AsString+'.png');
              Image1.Picture.LoadFromFile(DirZnak+DM1.znaki8.FieldByName('ID_znak').AsString+'.png');
              GroupBox1.Caption:='8.Знаки дополнительной информации (таблички)';
        end
    else
begin
  DM1.znaki8.Active:=True;
  btnZnaki8.Click;
end;
end;

procedure TznakForm.DBCtrlGrid1Click(Sender: TObject);
begin
case menuznakitem of
1:Image2.Picture.LoadFromFile('Picture\Znaki\1.Предупреждающие знаки\'+DM1.znaki1.FieldByName('ID_znak').AsString+'.png');
2:Image2.Picture.LoadFromFile('Picture\Znaki\2.Знаки приоритета\'+DM1.znaki2.FieldByName('ID_znak').AsString+'.png');
3:Image2.Picture.LoadFromFile('Picture\Znaki\3.Запрещающие знаки\'+DM1.znaki3.FieldByName('ID_znak').AsString+'.png');
4:Image2.Picture.LoadFromFile('Picture\Znaki\4.Предписывающие знаки\'+DM1.znaki4.FieldByName('ID_znak').AsString+'.png');
5:Image2.Picture.LoadFromFile('Picture\Znaki\5.Знаки особых предписаний\'+DM1.znaki5.FieldByName('ID_znak').AsString+'.png');
6:Image2.Picture.LoadFromFile('Picture\Znaki\6.Информационные знаки\'+DM1.znaki6.FieldByName('ID_znak').AsString+'.png');
7:Image2.Picture.LoadFromFile('Picture\Znaki\7.Знаки сервиса\'+DM1.znaki7.FieldByName('ID_znak').AsString+'.png');
8:Image2.Picture.LoadFromFile('Picture\Znaki\8.Знаки дополнительной информации (таблички)\'+DM1.znaki8.FieldByName('ID_znak').AsString+'.png');
end;
end;

procedure TznakForm.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;  Index: Integer);
begin
case menuznakitem of
1:Image1.Picture.LoadFromFile('Picture\Znaki\1.Предупреждающие знаки\'+DM1.znaki1.FieldByName('ID_znak').AsString+'.png');
2:Image1.Picture.LoadFromFile('Picture\Znaki\2.Знаки приоритета\'+DM1.znaki2.FieldByName('ID_znak').AsString+'.png');
3:Image1.Picture.LoadFromFile('Picture\Znaki\3.Запрещающие знаки\'+DM1.znaki3.FieldByName('ID_znak').AsString+'.png');
4:Image1.Picture.LoadFromFile('Picture\Znaki\4.Предписывающие знаки\'+DM1.znaki4.FieldByName('ID_znak').AsString+'.png');
5:Image1.Picture.LoadFromFile('Picture\Znaki\5.Знаки особых предписаний\'+DM1.znaki5.FieldByName('ID_znak').AsString+'.png');
6:Image1.Picture.LoadFromFile('Picture\Znaki\6.Информационные знаки\'+DM1.znaki6.FieldByName('ID_znak').AsString+'.png');
7:Image1.Picture.LoadFromFile('Picture\Znaki\7.Знаки сервиса\'+DM1.znaki7.FieldByName('ID_znak').AsString+'.png');
8:Image1.Picture.LoadFromFile('Picture\Znaki\8.Знаки дополнительной информации (таблички)\'+DM1.znaki8.FieldByName('ID_znak').AsString+'.png');
end;
end;



end.
