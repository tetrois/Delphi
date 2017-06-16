program Project1;

uses
  Vcl.Forms,
  MainForm1 in 'MainForm1.pas' {MainForm},
  ZnakForm1 in 'ZnakForm1.pas' {znakForm},
  DataModule1 in 'DataModule1.pas' {DM1: TDataModule},
  ForfeitForm1 in 'ForfeitForm1.pas' {ForfeitForm},
  PDDForm1 in 'PDDForm1.pas' {PDDForm},
  DriverLicenseForm1 in 'DriverLicenseForm1.pas' {DriverLicenseForm},
  InsuranceForm1 in 'InsuranceForm1.pas' {InsuranceForm},
  EasterEggsForm1 in 'EasterEggsForm1.pas' {EasterEggsForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TznakForm, znakForm);
  Application.CreateForm(TDM1, DM1);
  Application.CreateForm(TForfeitForm, ForfeitForm);
  Application.CreateForm(TPDDForm, PDDForm);
  Application.CreateForm(TDriverLicenseForm, DriverLicenseForm);
  Application.CreateForm(TInsuranceForm, InsuranceForm);
  Application.CreateForm(TEasterEggsForm, EasterEggsForm);
  Application.Run;
end.
