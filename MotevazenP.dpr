program MotevazenP;

uses
  Forms,
  MainU in 'MainU.pas' {fmMain},
  PassU in 'PassU.pas' {fmPassWord},
  MastDataU in 'MastDataU.pas' {dmMastData: TDataModule},
  PreConnU in 'PreConnU.pas',
  CseZForm in 'CseZForm.pas',
  CustomeU in 'CustomeU.pas' {fmCustomer},
  CodeSeaU in 'CodeSeaU.pas' {fmCodeSearch},
  SanIDU in 'SanIDU.pas',
  CodesU in 'CodesU.pas' {fmCodes},
  RegTrnU in 'RegTrnU.pas' {fmRegTrn};

{$R *.res}

begin                          
  Application.Initialize;
  Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(TfmPassWord, fmPassWord);
  Application.CreateForm(TdmMastData, dmMastData);
  Application.Run;
end.
