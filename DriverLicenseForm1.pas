unit DriverLicenseForm1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.ExtCtrls,Data.DB, Vcl.Menus;

type
  TDriverLicenseForm = class(TForm)
    btnPickDriveLic: TButton;
    btnPayDriveLic: TButton;
    btnTypeDriveLic: TButton;
    GB1Pick: TGroupBox;
    Label1: TLabel;
    TreeView1: TTreeView;
    DBMemo1: TDBMemo;
    GB2Pay: TGroupBox;
    Label2: TLabel;
    Edit1: TEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    Edit2: TEdit;
    Panel3: TPanel;
    Label4: TLabel;
    Edit3: TEdit;
    GB3Type: TGroupBox;
    Image1: TImage;
    ComboBox1: TComboBox;
    DBMemo2: TDBMemo;
    Label6: TLabel;
    Panel4: TPanel;
    Label5: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);
    procedure btnPickDriveLicClick(Sender: TObject);
    procedure btnPayDriveLicClick(Sender: TObject);
    procedure btnTypeDriveLicClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure LoadPic1();
    procedure GBVisFalse();
    procedure btnGoMainFClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DriverLicenseForm: TDriverLicenseForm;
   const FormName:string='Водительское удостоверение';
implementation
    uses DataModule1,MainForm1;
{$R *.dfm}

procedure TDriverLicenseForm.btnGoMainFClick(Sender: TObject);
begin
  DriverLicenseForm.Visible:=False;
  MainForm.Show;
end;

procedure TDriverLicenseForm.btnPayDriveLicClick(Sender: TObject);
begin
GBVisFalse;
GB2Pay.Visible:=True;
DriverLicenseForm.Caption:=FormName+' - Госпошлина за выдачу ВУ';
end;

procedure TDriverLicenseForm.btnPickDriveLicClick(Sender: TObject);
begin
if DM1.tblDriveLicPick.Active=False then DM1.tblDriveLicPick.Active:=True;
DM1.DS4.DataSet:=DM1.tblDriveLicPick;
GBVisFalse;
GB1Pick.Visible:=True;
DriverLicenseForm.Caption:=FormName+' - Получение водительского удостоверения';
end;

procedure TDriverLicenseForm.btnTypeDriveLicClick(Sender: TObject);
begin
DM1.DS4.DataSet:=DM1.tblDriveLicType;
DM1.tblDriveLicType.Active:=True;
GBVisFalse;
GB3Type.Visible:=True;
DM1.DS4.DataSet.RecNo:=12; LoadPic1;
DriverLicenseForm.Caption:=FormName+' - Категории водительских прав';
end;

procedure TDriverLicenseForm.GBVisFalse();
begin
GB1Pick.Visible:=False;
GB2Pay.Visible:=False;
GB3Type.Visible:=False;
end;

procedure TDriverLicenseForm.LoadPic1();
var strm:TMemoryStream; fld:TBlobField;
begin
fld:=DM1.tblDriveLicType.FieldByName('Pic')as TBlobField;
   strm:=TMemoryStream.Create;
   fld.SaveToStream(strm);
   strm.Position:=0;
   Image1.Picture.Bitmap.LoadFromStream(strm);
   //strm.Free;
   strm.Destroy;
end;

procedure TDriverLicenseForm.N1Click(Sender: TObject);
begin
    DriverLicenseForm.Close;
   MainForm.Show;
end;

procedure TDriverLicenseForm.ComboBox1Change(Sender: TObject);
begin
case ComboBox1.ItemIndex of
0: begin DM1.DS4.DataSet.RecNo:=12; LoadPic1; end;
1: begin DM1.DS4.DataSet.RecNo:=1; LoadPic1; end;
2: begin DM1.DS4.DataSet.RecNo:=2; LoadPic1; end;
3: begin DM1.DS4.DataSet.RecNo:=3; LoadPic1; end;
4: begin DM1.DS4.DataSet.RecNo:=4; LoadPic1; end;
5: begin DM1.DS4.DataSet.RecNo:=5; LoadPic1; end;
6: begin DM1.DS4.DataSet.RecNo:=6; LoadPic1; end;
7: begin DM1.DS4.DataSet.RecNo:=7; LoadPic1; end;
8: begin DM1.DS4.DataSet.RecNo:=8; LoadPic1; end;
9: begin DM1.DS4.DataSet.RecNo:=9; LoadPic1; end;
10: begin DM1.DS4.DataSet.RecNo:=10; LoadPic1; end;
11: begin DM1.DS4.DataSet.RecNo:=11; LoadPic1; end;
end;
end;

procedure TDriverLicenseForm.FormCreate(Sender: TObject);
begin
GBVisFalse;
GB1Pick.Visible:=True;
ComboBox1.Style:=csDropDownList;
TreeView1.Items.Add(nil, 'Гражданам РФ');
TreeView1.Items.AddChild(TreeView1.Items.Item[0], '1. Для получения права на управление транспортными средствами соответствующей категории');
TreeView1.Items.AddChild(TreeView1.Items.Item[0], '2. Для замены российского водительского удостоверения');
TreeView1.Items.AddChild(TreeView1.Items.Item[0], '3. Для замены полученных гражданами РФ в других государствах международных или национальных ВУ');
TreeView1.Items.AddChild(TreeView1.Items.Item[0], '4. Для получения водительского удостоверения взамен утраченного (похищенного) водительского удостоверения');
TreeView1.Items.AddChild(TreeView1.Items.Item[0], '5. Для получения международного водительского удостоверения');
TreeView1.Items.AddChild(TreeView1.Items.Item[0], '6. Если заявителем является лицо в возрасте от 16 до 18 лет');

TreeView1.Items.Add(nil, 'Иностранным гражданам');
TreeView1.Items.AddChild(TreeView1.Items.Item[7], '1. Иностранные граждане, постоянно проживающие на территории РФ');
TreeView1.Items.AddChild(TreeView1.Items.Item[7], '2. Иностранные граждане, временно проживающие на территории РФ');
TreeView1.Items.AddChild(TreeView1.Items.Item[7], '3. Лица без гражданства, постоянно проживающие на территории России');
TreeView1.Items.AddChild(TreeView1.Items.Item[7], '4. Лица без гражданства, временно проживающие на территории РФ');
TreeView1.Items.AddChild(TreeView1.Items.Item[7], '5. Лица, имеющие статус беженца');
TreeView1.Items.AddChild(TreeView1.Items.Item[7], '6. Лица, ходатайствующие о признании беженцами');
TreeView1.Items.AddChild(TreeView1.Items.Item[7], '7. Иностранные граждане и лица без гражданства, прибывшие в РФ в порядке, не требующем получения визы');
TreeView1.Items.AddChild(TreeView1.Items.Item[7], '8. Иностранные граждане и лица без гражданства, прибывшие в РФ в визовом порядке');
TreeView1.Items.AddChild(TreeView1.Items.Item[7], '9. Лица, получившие временное убежище');

TreeView1.Items.Add(nil, 'Сотрудникам дипломатических представительств и консульских учреждений иностранных государств в РФ');
end;

procedure TDriverLicenseForm.TreeView1Click(Sender: TObject);
begin
case TreeView1.Selected.AbsoluteIndex of
0:begin  DM1.DS4.DataSet.RecNo:=18; DriverLicenseForm.Caption:=FormName+' - Гражданам РФ'; end;
1:begin  DM1.DS4.DataSet.RecNo:=1; DriverLicenseForm.Caption:=FormName+' - 1. Для получения права на управление транспортными средствами соответствующей категории'; end;
2:begin  DM1.DS4.DataSet.RecNo:=2; DriverLicenseForm.Caption:=FormName+' - 2. Для замены российского водительского удостоверения'; end;
3:begin  DM1.DS4.DataSet.RecNo:=3; DriverLicenseForm.Caption:=FormName+' - 3. Для замены полученных гражданами РФ в других государствах международных или национальных водительских удостоверений этих государств'; end;
4:begin  DM1.DS4.DataSet.RecNo:=4; DriverLicenseForm.Caption:=FormName+' - 4. Для получения водительского удостоверения взамен утраченного (похищенного) водительского удостоверения'; end;
5:begin  DM1.DS4.DataSet.RecNo:=5; DriverLicenseForm.Caption:=FormName+' - 5. Для получения международного водительского удостоверения'; end;
6:begin  DM1.DS4.DataSet.RecNo:=6; DriverLicenseForm.Caption:=FormName+' - 6. Если заявителем является лицо в возрасте от 16 до 18 лет'; end;
7:begin  DM1.DS4.DataSet.RecNo:=7; DriverLicenseForm.Caption:=FormName+' - Иностранным гражданам'; end;
8:begin  DM1.DS4.DataSet.RecNo:=8; DriverLicenseForm.Caption:=FormName+' - 1. Иностранные граждане, постоянно проживающие на территории Российской Федерации'; end;
9:begin  DM1.DS4.DataSet.RecNo:=9; DriverLicenseForm.Caption:=FormName+' - 2. Иностранные граждане, временно проживающие на территории Российской Федерации'; end;
10:begin  DM1.DS4.DataSet.RecNo:=10; DriverLicenseForm.Caption:=FormName+' - 3. Лица без гражданства, постоянно проживающие на территории России'; end;
11:begin  DM1.DS4.DataSet.RecNo:=11; DriverLicenseForm.Caption:=FormName+' - 4. Лица без гражданства, временно проживающие на территории Российской Федерации'; end;
12:begin  DM1.DS4.DataSet.RecNo:=12; DriverLicenseForm.Caption:=FormName+' - 5. Лица, имеющие статус беженца'; end;
13:begin  DM1.DS4.DataSet.RecNo:=13; DriverLicenseForm.Caption:=FormName+' - 6. Лица, ходатайствующие о признании беженцами'; end;
14:begin  DM1.DS4.DataSet.RecNo:=14; DriverLicenseForm.Caption:=FormName+' - 7. Иностранные граждане и лица без гражданства, прибывшие в РФ в порядке, не требующем получения визы'; end;
15:begin  DM1.DS4.DataSet.RecNo:=15; DriverLicenseForm.Caption:=FormName+' - 8. Иностранные граждане и лица без гражданства, прибывшие в РФ в визовом порядке'; end;
16:begin  DM1.DS4.DataSet.RecNo:=16; DriverLicenseForm.Caption:=FormName+' - 9. Лица, получившие временное убежище'; end;
17:begin  DM1.DS4.DataSet.RecNo:=17; DriverLicenseForm.Caption:=FormName+' - Сотрудникам дипломатических представительств и консульских учреждений иностранных государств в РФ'; end;
end;
 end;

end.
