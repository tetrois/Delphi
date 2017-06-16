unit MainForm1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Menus,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Vcl.Buttons;

type
  TMainForm = class(TForm)
    Image1: TImage;
    BitBtn1: TBitBtn;
    btnZnaki: TBitBtn;
    btnPDD: TBitBtn;
    btnShtraf: TBitBtn;
    btnInsurance: TBitBtn;
    btnDriveLic: TBitBtn;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDriveLicClick(Sender: TObject);
    procedure btnInsuranceClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPDDClick(Sender: TObject);
    procedure btnShtrafClick(Sender: TObject);
    procedure btnZnakiClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;



implementation
uses EasterEggsForm1,ForfeitForm1,ZnakForm1,DataModule1,TaxForm1,PDDForm1,DriverLicenseForm1,InsuranceForm1;
{$R *.dfm}

procedure TMainForm.btnPDDClick(Sender: TObject);
begin
  PDDForm.ComboBox1.ItemIndex:=0;
 DM1.tblPDD0.Active:=True; DM1.DS3.DataSet:=DM1.tblPDD0;
 PDDForm.Show;
end;

procedure TMainForm.btnShtrafClick(Sender: TObject);
begin
  ForfeitForm.Show;
 ForfeitForm.btnShtraf1.Click;
end;

procedure TMainForm.btnZnakiClick(Sender: TObject);
begin
znakForm.Show;
end;

procedure TMainForm.BitBtn1Click(Sender: TObject);
begin
MainForm.Close;
end;

procedure TMainForm.btnDriveLicClick(Sender: TObject);
begin
DriverLicenseForm.btnPickDriveLic.Click;
DriverLicenseForm.Show;

end;

procedure TMainForm.btnInsuranceClick(Sender: TObject);
begin
  InsuranceForm.Show;
end;



procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DM1.FDC1.Connected:=False;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
if FileExists('BD1.db') then
begin
  if DirectoryExists('Picture') then
  else begin
      MessageBox(0, 'Папка "Picture" не обнаружена в папке с программой!' +
        #13#10 + 'Проверьте местоположение папки.' + #13#10#13#10 +
        'Пункт меню "Дорожные знаки" будет недоступен!', 'Папка не найдена!',
        MB_OK + MB_ICONSTOP + MB_TOPMOST);
      btnZnaki.Enabled:=False;
end;
end
else begin
MessageBox(0,
  'Файл базы данных "BD1" не обнаружен в папке с программой!' + #13#10
  + 'Проверьте местоположение файла и перезапустите программу.' +
  #13#10 + 'Дальнейшая работа невозможна!', 'Запуск не возможен!',
  MB_OK + MB_ICONSTOP + MB_TOPMOST);
      Application.Terminate;
     end;
end;
procedure TMainForm.Label1Click(Sender: TObject);
begin
  EasterEggsForm.Show;
end;

end.
