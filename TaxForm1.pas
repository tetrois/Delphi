unit TaxForm1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TTaxForm = class(TForm)
    btnTax1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    procedure btnTax1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TaxForm: TTaxForm;

implementation

{$R *.dfm}

procedure TTaxForm.btnTax1Click(Sender: TObject);
var total,rate,power,pos:real;
begin
power:=StrToFloat(Edit1.Text);
if power<=100 then
   rate:=10 else
      begin
        if (100<power) and (power<=150) then
            rate:=35 else
              if (power<150) and (power<=200)  then
                  rate:=50 else
                    if (power<200)and(power<=250) then
                         rate:=75 else
                            if power>250 then
                                  rate:=150;
        end;

pos:=StrToFloat(Edit2.Text);
  if pos=12 then
    total:=rate*power else
      total:=rate*power*(pos/12);
Edit3.Text:=FloatToStr(total);
end;

end.
