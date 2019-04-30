unit PassU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,CseZForm, StdCtrls, Buttons, MNTEDIT, ExtCtrls, IniFiles,
  sGroupBox, sSpeedButton, sBitBtn ;

type
  TfmPassWord = class(TCseZForm)
    sGroupBox1: TsGroupBox;
    Image2: TImage;
    Label2: TLabel;
    Image1: TImage;
    Label1: TLabel;
    Image3: TImage;
    Label3: TLabel;
    BitBtn2: TBitBtn;
    MNEdit2: TMNTEdit;
    MNEdit1: TMNTEdit;
    MNEdit3: TMNTEdit;
    sGroupBox2: TsGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    MNEdit4: TMNTEdit;
    MNEdit5: TMNTEdit;
    MNEdit6: TMNTEdit;
    sSpeedButton1: TsSpeedButton;
    Label7: TLabel;
    Label8: TLabel;
    MNEdit7: TMNTEdit;
    MNEdit8: TMNTEdit;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    procedure MNEdit1Exit(Sender: TObject);
    procedure MNEdit2Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MNEdit3Exit(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   Code:Integer;
  end;

var
  fmPassWord: TfmPassWord;

implementation

uses MastDataU, MainU, PreConnU;

{$R *.dfm}

procedure TfmPassWord.MNEdit1Exit(Sender: TObject);
begin
 dmMastData.taUsers.Filter:='UserName='+''''+MNEdit1.Text+'''';
 dmMastData.taUsers.Filtered:=True;
 dmMastData.taUsers.Open;
 if dmMastData.taUsers.RecordCount<1 then begin
  ShowMessage('äÇã ˜ÇÑÈÑ ÑÇ ÇÔÊÈÇå æÇÑÏ ˜ÑÏíÏ');
  MNEdit1.SetFocus;
 end else
 MNEdit2.SetFocus;
end;

procedure TfmPassWord.MNEdit2Exit(Sender: TObject);
begin
 if dmMastData.taUsersPassWord.Value=MNEdit2.Text then begin
  sSpeedButton1.Enabled:=True;
  if dmMastData.taUsersLock.Value=True then begin
   ShowMessage('Çíä ˜ÇÑÈÑ ÏÑ ÍÇá ÇÓÊÝÇÏå ÇÒ ÈÑäÇãå ãí ÈÇÔÏ');
//   MNEdit2.SetFocus;
  end;
  sBitBtn2.SetFocus end else begin
   ShowMessage('˜áãå ÚÈæÑ ÑÇ ÇÔÊÈÇå æÇÑÏ ˜ÑÏíÏ');
   MNEdit2.SetFocus;
  end;
end;



procedure TfmPassWord.FormShow(Sender: TObject);
begin
// AnimateWindow(Handle,400,AW_CENTER);
// fmPassWord.Ctl3D:=False;
// fmPassWord.Ctl3D:=True;

end;

procedure TfmPassWord.MNEdit3Exit(Sender: TObject);
var Inif:TIniFile;
begin
 Inif:=TIniFile.Create('Data\MNConfig.ini');
 try
  dmMastData.AdoConnection1.ConnectionString:=Inif.ReadString('Motevazen',MNEdit3.Text,'');
  dmMastData.AdoConnection1.Connected:=True;
  dmMastData.FDConnection1.Params.Clear;
  dmMastData.FDConnection1.Params.Add('Server='+Inif.ReadString('FDMotevazen','Server',''));
  dmMastData.FDConnection1.Params.Add('Database='+Inif.ReadString('FDMotevazen','Database',''));
  dmMastData.FDConnection1.Params.Add('Workstation=Auto');
  dmMastData.FDConnection1.Params.Add('DriverID=MSSQL');
  dmMastData.FDConnection1.Connected:=True;
  with dmMastData.Query1 do begin
   Sql.Clear;
   Sql.Add('select getdate() as Reg_Date');
   Open;
   dmMastData.StrDate:=MakeDate(Milad2Sham2(FieldByName('Reg_Date').Value));
   dmMastData.intDate:=StrToInt(RefineDate(dmMastData.StrDate));
   MNEdit1.SetFocus;
  end;
//  if FileExists('Shegefti.aal') then
//   dmMastData.Assistant1.ActorLibrary:='Shegefti.aal';
 except
  Application.CreateForm(TfmPreConnection,fmPreConnection) ;
  try
   fmPreConnection.PName:='Motevazen';
   fmPreConnection.ShowModal;
  finally
   fmPreConnection.Free;
  end;
 end;
end;

procedure TfmPassWord.sSpeedButton1Click(Sender: TObject);
begin
 sGroupBox2.Visible:=True;
 MNEdit6.Text:=dmMastData.taUsersPerson_Id.AsString;
 MNEdit5.Text:=dmMastData.taUsersUserName.AsString;
 MNEdit4.Text:=dmMastData.taUsersPassWord.AsString;
 MNEdit8.Text:=dmMastData.taUsersFName.AsString;
 MNEdit7.Text:=dmMastData.taUsersLName.AsString;
end;

procedure TfmPassWord.sBitBtn1Click(Sender: TObject);
begin
 dmMastData.taUsers.Edit;
// MNEdit6.Text:=dmMastData.taUsersPerson_Id.AsString;
 dmMastData.taUsersUserName.AsString:=MNEdit5.Text;
 dmMastData.taUsersPassWord.AsString:=MNEdit4.Text;
 dmMastData.taUsersFName.AsString:=MNEdit8.Text;
 dmMastData.taUsersLName.AsString:=MNEdit7.Text;
 dmMastData.taUsers.Post;
end;

procedure TfmPassWord.sBitBtn2Click(Sender: TObject);
begin
  ModalResult:=mrOk;
end;

end.
