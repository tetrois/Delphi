unit InsuranceForm1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.Menus;

type
  TInsuranceForm = class(TForm)
    GB2Osago: TGroupBox;
    TreeView1: TTreeView;
    DBMemo2: TDBMemo;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    procedure TreeView1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGoMainFClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InsuranceForm: TInsuranceForm;

implementation
  uses MainForm1,DataModule1;
{$R *.dfm}

procedure TInsuranceForm.btnGoMainFClick(Sender: TObject);
begin
  InsuranceForm.Visible:=False;
  MainForm.Show;
end;

procedure TInsuranceForm.FormCreate(Sender: TObject);
begin
DM1.tblMainInsurance.Active:=True;
DM1.DS5.DataSet:=DM1.tblMainInsurance;

TreeView1.Items.Add(nil,'Главная');                                                       //0
TreeView1.Items.AddChild(TreeView1.Items.Item[0], 'Виды автострахования');
TreeView1.Items.AddChild(TreeView1.Items.Item[0], 'КАСКО И ОСАГО: ОТЛИЧИЯ ДВУХ ВИДОВ АВТОСТРАХОВАНИЯ');
TreeView1.Items.AddChild(TreeView1.Items.Item[0], 'КАСКО');
TreeView1.Items.AddChild(TreeView1.Items.Item[0], 'ОСАГО');
TreeView1.Items.AddChild(TreeView1.Items.Item[0], 'Обязательное КАСКО — как такое возможно?');
TreeView1.Items.AddChild(TreeView1.Items.Item[0], 'Как рассчитывается страховка КАСКО, ОСАГО?');
TreeView1.Items.AddChild(TreeView1.Items.Item[0], 'Зачем вам КАСКО?');


TreeView1.Items.Add(nil,'ОСАГО');                                                           //8
TreeView1.Items.AddChild(TreeView1.Items.Item[8], '1. Что такое ОСАГО?');
TreeView1.Items.AddChild(TreeView1.Items.Item[8], '2. Кто должен приобретать полис ОСАГО?');
TreeView1.Items.AddChild(TreeView1.Items.Item[8], '3. Кто устанавливает тарифы по ОСАГО?');
TreeView1.Items.AddChild(TreeView1.Items.Item[8], '4. От чего зависит стоимость полиса ОСАГО?');
TreeView1.Items.AddChild(TreeView1.Items.Item[8], '5. Лимит ответственности страховой компании по ОСАГО');
TreeView1.Items.AddChild(TreeView1.Items.Item[8], '6. Исключения из ОСАГО');
TreeView1.Items.AddChild(TreeView1.Items.Item[8], '7. Срок действия договора ОСАГО');
TreeView1.Items.AddChild(TreeView1.Items.Item[8], '8. Документы, необходимые при оформлении договора');

TreeView1.Items.Add(nil,'КАСКО');                                                            //16+1
TreeView1.Items.AddChild(TreeView1.Items.Item[17], '1.Что такое КАСКО? ');
TreeView1.Items.AddChild(TreeView1.Items.Item[17], '2.Какие транспортные средства могут быть приняты на страхование? ');
TreeView1.Items.AddChild(TreeView1.Items.Item[17], '3.Страховые риски ');
TreeView1.Items.AddChild(TreeView1.Items.Item[17], '4.Застрахованные и исключенные риски при страховании КАСКО ');
TreeView1.Items.AddChild(TreeView1.Items.Item[17], '5.От чего зависит стоимость КАСКО ');
TreeView1.Items.AddChild(TreeView1.Items.Item[17], '6.Срок действия страховки КАСКО ');
TreeView1.Items.AddChild(TreeView1.Items.Item[17], '7.Страховые сумма и премия при страховании КАСКО ');
TreeView1.Items.AddChild(TreeView1.Items.Item[17], '8.Неагрегатная и агрегатная страховая сумма ');
TreeView1.Items.AddChild(TreeView1.Items.Item[17], '9.Франшиза при КАСКО ');
TreeView1.Items.AddChild(TreeView1.Items.Item[17], '10.Условия выплаты страхового возмещения при страховании КАСКО ');
TreeView1.Items.AddChild(TreeView1.Items.Item[17], '11.Варианты возмещения по риску «Ущерб» ');
TreeView1.Items.AddChild(TreeView1.Items.Item[17], '12.Требования к противоугонным устройствам ');
TreeView1.Items.AddChild(TreeView1.Items.Item[17], '13.Страхование кредитных автомобилей ');
TreeView1.Items.AddChild(TreeView1.Items.Item[17], '14.Документы, необходимые для заключения договора: ');
TreeView1.Items.AddChild(TreeView1.Items.Item[17], '15.Страхование по риску «Дополнительное оборудование» ');
TreeView1.Items.AddChild(TreeView1.Items.Item[17], '16.Страхование по риску «Несчастный случай» ');
TreeView1.Items.AddChild(TreeView1.Items.Item[17], '17.Страхование по риску «Гражданская ответственность» ');

TreeView1.Items.Add(nil, 'Дешевое КАСКО — насколько это реально?');                             //34 +1
TreeView1.Items.AddChild(TreeView1.Items.Item[35], '1.Как понизить цену на КАСКО?');
TreeView1.Items.AddChild(TreeView1.Items.Item[35], '2.Где КАСКО дешевле?');
TreeView1.Items.AddChild(TreeView1.Items.Item[35], '3.Из чего складывается цена полиса?');

TreeView1.Items.Add(nil, 'Как выбрать выгодный вариант КАСКО?');                               //38 +1
TreeView1.Items.Add(nil, 'Необходимые документы для оформления КАСКО');                         //39 +1
TreeView1.Items.Add(nil, 'Оформление КАСКО: какие трудности могут встретиться?');                   //40  +1
TreeView1.Items.Add(nil, 'Вы решили приобрести или приобрели услугу АВТОКАСКО, что нужно знать?');      //41  +1

TreeView1.Items.Add(nil,'Доп. информация');                                                              //42 1+
TreeView1.Items.AddChild(TreeView1.Items.Item[43], 'Правила обязательного страхования гражданской ответственности владельцев транспортных средств');
TreeView1.Items.AddChild(TreeView1.Items.Item[44], 'I. Общие положения');
TreeView1.Items.AddChild(TreeView1.Items.Item[44], 'II. Объект обязательного страхования, страховой случай');
TreeView1.Items.AddChild(TreeView1.Items.Item[44], 'III. Страховая сумма, страховая премия и порядок ее уплаты');
TreeView1.Items.AddChild(TreeView1.Items.Item[44], 'IV. Срок действия, порядок заключения и изменения договора обязательного страхования');
TreeView1.Items.AddChild(TreeView1.Items.Item[44], 'V. Порядок продления срока действия договора обязательного страхования');
TreeView1.Items.AddChild(TreeView1.Items.Item[44], 'VI. Досрочное прекращение действия договора обязательного страхования');
TreeView1.Items.AddChild(TreeView1.Items.Item[44], 'VII. Действия лиц при наступлении страхового случая');
TreeView1.Items.AddChild(TreeView1.Items.Item[44], 'VIII. Определение размера страховой выплаты при причинении вреда жизни и здоровью потерпевших');
TreeView1.Items.AddChild(TreeView1.Items.Item[44], 'IX. Определение размера страховой выплаты при причинении вреда имуществу потерпевшего');
TreeView1.Items.AddChild(TreeView1.Items.Item[44], 'X. Осуществление страховой выплаты');
TreeView1.Items.AddChild(TreeView1.Items.Item[44], 'XI. Право предъявления регрессного требования страховщика');
TreeView1.Items.AddChild(TreeView1.Items.Item[44], 'XII. Порядок разрешения споров');
TreeView1.ReadOnly:=True;

end;

procedure TInsuranceForm.N1Click(Sender: TObject);
begin
    InsuranceForm.Close;
    MainForm.Show;
end;

procedure TInsuranceForm.TreeView1Click(Sender: TObject);
begin
case TreeView1.Selected.AbsoluteIndex of
0:  begin DM1.DS5.DataSet.RecNo:=1; end;
1:  begin DM1.DS5.DataSet.RecNo:=2; end;
2:  begin DM1.DS5.DataSet.RecNo:=3; end;
3:  begin DM1.DS5.DataSet.RecNo:=4; end;
4:  begin DM1.DS5.DataSet.RecNo:=5; end;
5:  begin DM1.DS5.DataSet.RecNo:=6; end;
6:  begin DM1.DS5.DataSet.RecNo:=7; end;
7:  begin DM1.DS5.DataSet.RecNo:=8; end;
8:  begin DM1.DS5.DataSet.RecNo:=9; end;
9:  begin DM1.DS5.DataSet.RecNo:=10; end;
10: begin DM1.DS5.DataSet.RecNo:=11; end;
11: begin DM1.DS5.DataSet.RecNo:=12; end;
12: begin DM1.DS5.DataSet.RecNo:=13; end;
13: begin DM1.DS5.DataSet.RecNo:=14; end;
14: begin DM1.DS5.DataSet.RecNo:=15; end;
15: begin DM1.DS5.DataSet.RecNo:=16; end;
16: begin DM1.DS5.DataSet.RecNo:=17; end;
17: begin DM1.DS5.DataSet.RecNo:=18; end;
18: begin DM1.DS5.DataSet.RecNo:=19; end;
19: begin DM1.DS5.DataSet.RecNo:=20; end;
20: begin DM1.DS5.DataSet.RecNo:=21; end;
21: begin DM1.DS5.DataSet.RecNo:=22; end;
22: begin DM1.DS5.DataSet.RecNo:=23; end;
23: begin DM1.DS5.DataSet.RecNo:=24; end;
24: begin DM1.DS5.DataSet.RecNo:=25; end;
25: begin DM1.DS5.DataSet.RecNo:=26; end;
26: begin DM1.DS5.DataSet.RecNo:=27; end;
27: begin DM1.DS5.DataSet.RecNo:=28; end;
28: begin DM1.DS5.DataSet.RecNo:=29; end;
29: begin DM1.DS5.DataSet.RecNo:=30; end;
30: begin DM1.DS5.DataSet.RecNo:=31; end;
31: begin DM1.DS5.DataSet.RecNo:=32; end;
32: begin DM1.DS5.DataSet.RecNo:=33; end;
33: begin DM1.DS5.DataSet.RecNo:=34; end;
34: begin DM1.DS5.DataSet.RecNo:=35; end;
35: begin DM1.DS5.DataSet.RecNo:=36; end;
36: begin DM1.DS5.DataSet.RecNo:=37; end;
37: begin DM1.DS5.DataSet.RecNo:=38; end;
38: begin DM1.DS5.DataSet.RecNo:=39; end;
39: begin DM1.DS5.DataSet.RecNo:=40; end;
40: begin DM1.DS5.DataSet.RecNo:=41; end;
41: begin DM1.DS5.DataSet.RecNo:=42; end;
42: begin DM1.DS5.DataSet.RecNo:=43; end;
43: begin {DM1.DS5.DataSet.RecNo:=; }end;
44: begin {DM1.DS5.DataSet.RecNo:=;} end;
45: begin DM1.DS5.DataSet.RecNo:=44; end;
46: begin DM1.DS5.DataSet.RecNo:=45; end;
47: begin DM1.DS5.DataSet.RecNo:=46; end;
48: begin DM1.DS5.DataSet.RecNo:=47; end;
49: begin DM1.DS5.DataSet.RecNo:=48; end;
50: begin DM1.DS5.DataSet.RecNo:=49; end;
51: begin DM1.DS5.DataSet.RecNo:=50; end;
52: begin DM1.DS5.DataSet.RecNo:=51; end;
53: begin DM1.DS5.DataSet.RecNo:=52; end;
54: begin DM1.DS5.DataSet.RecNo:=53; end;
55: begin DM1.DS5.DataSet.RecNo:=54; end;
56: begin DM1.DS5.DataSet.RecNo:=55; end;
end;
end;

end.

