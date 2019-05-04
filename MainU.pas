unit MainU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ExtCtrls, ScktComp, StdCtrls, ActnList, CseZForm, frxClass,
  Registry, Buttons, sBitBtn, sSkinManager, sSkinProvider,acSelectSkin ,
  sStatusBar, sRichEdit, IniFiles, ImgList, acAlphaImageList, sSpeedButton,
  System.ImageList, System.Actions, MNTEDIT ;

type
  TfmMain = class(TCseZForm)
    sStatusBar1: TsStatusBar;
    ActionList1: TActionList;
    Action11: TAction;
    Action12: TAction;
    Action13: TAction;
    Action14: TAction;
    Action15: TAction;
    Action16: TAction;
    Action21: TAction;
    Action22: TAction;
    Action23: TAction;
    Action24: TAction;
    Action25: TAction;
    Action26: TAction;
    Action27: TAction;
    Action31: TAction;
    Action32: TAction;
    Action33: TAction;
    Action41: TAction;
    Action43: TAction;
    Action44: TAction;
    Action45: TAction;
    Action46: TAction;
    Action51: TAction;
    Action61: TAction;
    TrnRepAction: TAction;
    Action63: TAction;
    Action64: TAction;
    Action65: TAction;
    Action999: TAction;
    sSkinProvider1: TsSkinProvider;
    sSkinManager1: TsSkinManager;
    MainMenu1: TMainMenu;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    Action66: TAction;
    N35: TMenuItem;
    N81: TMenuItem;
    Action67: TAction;
    N36: TMenuItem;
    Action68: TAction;
    Action17: TAction;
    Action990: TAction;
    N38: TMenuItem;
    Action991: TAction;
    sAlphaImageList1: TsAlphaImageList;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    N39: TMenuItem;
    N40: TMenuItem;
    Action71: TAction;
    Action72: TAction;
    N41: TMenuItem;
    Action73: TAction;
    N42: TMenuItem;
    Action74: TAction;
    N43: TMenuItem;
    Action75: TAction;
    N44: TMenuItem;
    Action76: TAction;
    N45: TMenuItem;
    Action77: TAction;
    N46: TMenuItem;
    Action69: TAction;
    N47: TMenuItem;
    Action18: TAction;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    PopupMenu1: TPopupMenu;
    Action19: TAction;
    Action28: TAction;
    N50: TMenuItem;
    N51: TMenuItem;
    Action34: TAction;
    Action29: TAction;
    N52: TMenuItem;
    N53: TMenuItem;
    Action78: TAction;
    N54: TMenuItem;
    Action79: TAction;
    N55: TMenuItem;
    KolMoinYearsUpdate: TAction;
    Reminder: TAction;
    N57: TMenuItem;
    Cash: TAction;
    N58: TMenuItem;
    Amval: TAction;
    N59: TMenuItem;
    CubeHesabMoin: TAction;
    N60: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    Action141: TMenuItem;
    Action151: TMenuItem;
    Action161: TMenuItem;
    N9: TMenuItem;
    N34: TMenuItem;
    N37: TMenuItem;
    Action211: TMenuItem;
    NewKol: TAction;
    N1: TMenuItem;
    sSpeedButton6: TsSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure Action11Execute(Sender: TObject);
    procedure Action12Execute(Sender: TObject);
    procedure Action13Execute(Sender: TObject);
    procedure Action14Execute(Sender: TObject);
    procedure Action21Execute(Sender: TObject);
    procedure Action22Execute(Sender: TObject);
    procedure Action23Execute(Sender: TObject);
    procedure Action24Execute(Sender: TObject);
    procedure Action25Execute(Sender: TObject);
    procedure Action26Execute(Sender: TObject);
    procedure Action31Execute(Sender: TObject);
    procedure Action32Execute(Sender: TObject);
    procedure Action33Execute(Sender: TObject);
    procedure Action27Execute(Sender: TObject);
    procedure Action51Execute(Sender: TObject);
    procedure Action41Execute(Sender: TObject);
    procedure Action44Execute(Sender: TObject);
    procedure Action999Execute(Sender: TObject);
    procedure Action15Execute(Sender: TObject);
    procedure Action16Execute(Sender: TObject);
    procedure Action61Execute(Sender: TObject);
    procedure TrnRepActionExecute(Sender: TObject);
    procedure Action63Execute(Sender: TObject);
    procedure Action64Execute(Sender: TObject);
    procedure Action65Execute(Sender: TObject);
    procedure Action43Execute(Sender: TObject);
    procedure Action45Execute(Sender: TObject);
    procedure Action46Execute(Sender: TObject);
    procedure Action66Execute(Sender: TObject);
    procedure Action67Execute(Sender: TObject);
    procedure Action68Execute(Sender: TObject);
    procedure Action17Execute(Sender: TObject);
    procedure Action990Execute(Sender: TObject);
    procedure Action991Execute(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure Action71Execute(Sender: TObject);
    procedure Action72Execute(Sender: TObject);
    procedure Action73Execute(Sender: TObject);
    procedure Action75Execute(Sender: TObject);
    procedure Action76Execute(Sender: TObject);
    procedure Action74Execute(Sender: TObject);
    procedure Action77Execute(Sender: TObject);
    procedure Action69Execute(Sender: TObject);
    procedure Action18Execute(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure Action19Execute(Sender: TObject);
    procedure Action28Execute(Sender: TObject);
    procedure Action34Execute(Sender: TObject);
    procedure Action29Execute(Sender: TObject);
    procedure sSpeedButton5Click(Sender: TObject);
    procedure Action78Execute(Sender: TObject);
    procedure Action79Execute(Sender: TObject);
    procedure KolMoinYearsUpdateExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ReminderExecute(Sender: TObject);
    procedure CashExecute(Sender: TObject);
    procedure AmvalExecute(Sender: TObject);
    procedure CubeHesabMoinExecute(Sender: TObject);
    procedure NewKolExecute(Sender: TObject);
  private
    { Private declarations }
    Lock:Bool;
    Saham:Real;
    ThisDate:String;
    Function Encrypt (const s: string; Key: Word) : string;
    Function GetHDDSerial:String;
    Procedure SahamHesabAdd(Kol,Moin:String);
    Procedure CustHesabAdd(Kol,Moin:String);
    Procedure MasarefCalc;
    Procedure PreKolQuDo;
    Procedure KolQuDo;
    Procedure MoinQuDo;
    Procedure HesabQuDo;
    Procedure BodJetQuDo;
    Procedure PrePreKolQuDo;
    Procedure PKolQuDo;
    Procedure PreMoinQuDo;
    Procedure PreBodjetQuDo;
    Procedure PreTitleDo;
    Procedure FirsrRowEdit;
    Procedure SecondRowEdit;
    Procedure ThirdRowEdit;
    Procedure FourthRowEdit;
    Procedure FivethRowEdit;
    Procedure BookDo(Code:Integer);
    Procedure ReminderDo;
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;
  const
  c1 = 52845;
  c2 = 22719;

implementation


{$R *.dfm}

uses PassU, MastDataU, CustomeU, SanIDU, CodesU, RegTrnU, TrnRepU;

function tFMMain.Encrypt (const s: string; Key: Word) : string;
var
i : byte;
begin
 Result:=s;
 for i := 0 to (length (s)) do
 begin
  Result[i] := Char (byte (s[i]) xor (Key shr 8));
  Key := (byte (Result[i]) + Key) * c1 + c2
 end
end;

Function tFMMain.GetHDDSerial:String;
var
  SerialNum: DWord;
  A,B: DWord;
  C: array [0..255] of Char;
  Buffer: array [0..255] of Char;
begin
  if GetVolumeInformation(PChar('C:\'),Buffer,256,@SerialNum,A,B,C,256) then
   Result:=IntToStr(SerialNum);
end;

Procedure TfmMain.CustHesabAdd(Kol,Moin:String);
var Hesab_No,CustId:String;
begin
// Hesab_No:=Kol+'/'+Moin+'/'+dmMastData.SQuery1.FieldByName('SCode').AsString;
// with dmMastData.Query1 do begin
//  Sql.Clear;
//  Sql.Add(' Select * From Hesab Where Hesab_no='+QuotedStr(Hesab_No));
//  Open;
///////////////
//  if RecordCount<1 then begin
//   Sql.Clear;
//   Sql.Add(' Select Max(Customer_Id)+1 Id From Customer ');
//   Open;
//   CustId:=FieldByName('Id').AsString;
//   Sql.Clear;
//   Sql.Add(' Insert Into Customer (Customer_Id,FName,LName,FatherName,Id,Gender,NationCode,Sadereh,BirthDate) ');
//   Sql.Add(' Values('+CustId+','+QuotedStr(dmMastData.SQuery1.FieldByName('FName').AsString)+','+QuotedStr(dmMastData.SQuery1.FieldByName('LName').AsString)+',' );
//   Sql.Add(QuotedStr(dmMastData.SQuery1.FieldByName('FatherName').AsString)+','+dmMastData.SQuery1.FieldByName('Id').AsString+',');
//   Sql.Add(dmMastData.SQuery1.FieldByName('Gender').AsString+','+QuotedStr(dmMastData.SQuery1.FieldByName('NationCode').AsString)+',');
//   Sql.Add(QuotedStr(dmMastData.SQuery1.FieldByName('Sadereh').AsString)+','+dmMastData.SQuery1.FieldByName('BirthDate').AsString+')');
//   ExecSql;
//   Sql.Clear;
//   Sql.Add(' Insert Into Hesab (Hesab_No,Kol,Moin,Hesab,Customer_Id,Lock,LimMandeh) ');
//   Sql.Add(' Values ('+QuotedStr(Hesab_No)+','+Kol+','+Moin+','+dmMastData.SQuery1.FieldByName('SCode').AsString+','+CustId+',0,0)');
//   ExecSql;
//  end;//----if
// end;

end;

Procedure TfmMain.MasarefCalc;
var
 Bed,Bes,TopQty,Masaref:Real;
Begin
// Masaref:=0;
// TopQty:=0;
// Bed:=0;
// Bes:=0;
// with fmManabehMasaref.taMASAREF do begin
//  first;
//  while not eof do begin
//   Masaref:=Masaref+fmManabehMasaref.taMASAREFMandeh.Value;
// //  if NOT ((dmMASTDATA.taMASAREFRadif.Value=15) or (dmMASTDATA.taMASAREFRadif.Value=7)) then
//   TopQty:=TopQty+fmManabehMasaref.taMASAREFTopQty.Value;
//   Bed:=Bed+fmManabehMasaref.taMASAREFBedehkar.Value;
//   Bes:=Bes+fmManabehMasaref.taMASAREFBestankar.Value;
//   next;
//   end;
//   First;
//  end;
//  fmManabehMasaref.MoneyMasaref.Text:=MakeMoney(FloatToStr(Masaref));
//  fmManabehMasaref.MoneyTopQty.Text:=MakeMoney(FloatToStr(TopQty));
//  fmManabehMasaref.MoneyBed.Text:=MakeMoney(FloatToStr(Bed));
//  fmManabehMasaref.MoneyBes.Text:=MakeMoney(FloatToStr(Bes));
end;

Procedure TfmMain.SahamHesabAdd(Kol,Moin:String);
begin
// with dmMastData.SQuery1 do begin
//  Sql.Clear;
//  Sql.Add(' Select Saham.SCode,IsNull(FName,'''') FName,IsNull(LName,'''') LName,IsNull(FatherName,'''') FatherName,IsNull(Id,0) Id,IsNull(Gender,0) Gender,IsNull(NationCode,'''') NationCode,IsNull(Sadereh,'''') Sadereh,IsNull(BirthDate,0) BirthDate ');
//  Sql.Add(' From SahamAct Left Outer Join Saham On Saham.SCode=SahamAct.SCode ');
//  Sql.Add(' Left Outer Join Customer On Customer.Customer_Id=Saham.Customer_Id Order By Saham.SCode ');
//  Open;
//  fmProgress.sGauge1.MinValue:=0;
//  fmProgress.sGauge1.MaxValue:=RecordCount;
//  fmProgress.Show;
//  while not Eof do begin
//   fmProgress.sGauge1.Progress:=RecNo;
//   CustHesabAdd(Kol,Moin);
//   Next;
//  end ;//while
//  fmProgress.Close;
// end;//with
end;

Procedure TfmMain.PreKolQuDo;
begin
//    with fmBodjet.QueryPreKol do begin
//     if Active then Close;
////     Prepare;
//     Parameters.ParamByName('SYear').Value:=StrToInt(Copy(IntToStr(dmMastData.IntDate),1,4))-2;//a ((ThisDate div 10000)-2);
//     Open;
//     end;
end;
//

Procedure TfmMain.KolQuDo;
begin
//    with fmBodjet.QueryKol do begin
//     if Active then Close;
////     Prepare;
//     Parameters.ParamByName('SYear').Value:=StrToInt(Copy(IntToStr(dmMastData.IntDate),1,4))-2;//a ((ThisDate div 10000)-2);
//     Open;
//     end;
end;
//

Procedure TfmMain.MoinQuDo;
begin
//    with fmBodjet.QueryMoin do begin
//     if Active then Close;
////     Prepare;
//     Parameters.ParamByName('SYear').Value:=StrToInt(Copy(IntToStr(dmMastData.IntDate),1,4))-2;//a ((ThisDate div 10000)-2);
//     Open;
//     end;
end;
//

Procedure TfmMain.HesabQuDo;
begin
//    with fmBodjet.QueryHesab do begin
//     if Active then Close;
////     Prepare;
//     Parameters.ParamByName('SYear').Value:=StrToInt(Copy(IntToStr(dmMastData.IntDate),1,4))-2;//a ((ThisDate div 10000))-2);
//     Open;
//     end;
end;
//

Procedure TfmMain.BodJetQuDo;
begin
//    with fmBodjet.QueryBodjet do begin
//     if Active then Close;
////     Prepare;
//     Parameters.ParamByName('OkyYear').Value:=StrToInt(Copy(IntToStr(dmMastData.IntDate),1,4))-1;//a ((ThisDate div 10000)-1);
//     Open;
//     end;
end;
//

Procedure  TfmMain.PrePreKolQuDo;
begin
//    with fmPreBodjet.QueryPreKol do begin
//     if Active then Close;
////     Prepare;
//     Parameters.ParamByName('SYear').Value:=StrToInt(Copy(ThisDate,1,4))-2;//a ((ThisDate div 10000)-2);
//     Open;
//     end;
//{    with fmPreBodjet.QuPreKol do begin
//     if Active then Close;
////     Prepare;
//     Parameters.ParamByName('Year1').Value:=StrToInt(Copy(ThisDate,1,4))-2;//a ((ThisDate div 10000)-2);
//     Parameters.ParamByName('Year2').Value:=StrToInt(Copy(ThisDate,1,4))-1;//a ((ThisDate div 10000)-2);
//     Parameters.ParamByName('Year3').Value:=StrToInt(Copy(ThisDate,1,4));//a ((ThisDate div 10000)-2);
//     Open;
//     end;
//    with fmPreBodjet.QuMoin do begin
//     if Active then Close;
////     Prepare;
//     Parameters.ParamByName('Year1').Value:=StrToInt(Copy(ThisDate,1,4))-2;//a ((ThisDate div 10000)-2);
//     Parameters.ParamByName('Year2').Value:=StrToInt(Copy(ThisDate,1,4))-1;//a ((ThisDate div 10000)-2);
//     Parameters.ParamByName('Year3').Value:=StrToInt(Copy(ThisDate,1,4));//a ((ThisDate div 10000)-2);
//     Open;
//     end;}

end;
//

Procedure TfmMain.PKolQuDo;
begin
//    with fmPreBodjet.QueryKol do begin
//     if Active then Close;
////     Prepare;
//     Parameters.ParamByName('SYear').Value:=StrToInt(Copy(ThisDate,1,4))-2;//a (((ThisDate div 10000)-2);
//     Open;
//     end;
end;
//

Procedure TfmMain.PreMoinQuDo;
begin
//    with fmPreBodjet.QueryMoin do begin
//     if Active then Close;
////     Prepare;
//     Parameters.ParamByName('SYear').Value:=StrToInt(Copy(ThisDate,1,4))-2;//a ((ThisDate div 10000)-2);
//     Open;
//     end;
end;
//

Procedure TfmMain.PreBodjetQuDo;
begin
//    with fmPreBodjet.QueryBodjet do begin
//     if Active then Close;
////     Prepare;
//     Parameters.ParamByName('OkyYear').Value:=StrToInt(Copy(ThisDate,1,4))-1;//a ((ThisDate div 10000)-1);
//     Open;
//     end;
end;
//

Procedure TfmMain.PreTitleDo;
begin
FirsrRowEdit;
SecondRowEdit;
ThirdRowEdit;
FourthRowEdit;
FivethRowEdit;
end;
//

Procedure TfmMain.FirsrRowEdit;
begin
//  fmPreBodjet.QRLabel25.Caption:=MakeMoney(fmPreBodjet.QueryBodjetSPreKol_QtyOky.AsString);
//  fmPreBodjet.QRLabel26.Caption:=MakeMoney(fmPreBodjet.QueryBodjetSPreKol_Amalkard.AsString);
//  fmPreBodjet.QRLabel45.Caption:=fmPreBodjet.QueryBodjetPreKol_Per.AsString;
//  fmPreBodjet.QRLabel27.Caption:=MakeMoney(fmPreBodjet.QueryBodjetPreKol_QtyOky.AsString);
//  fmPreBodjet.QRLabel62.Caption:=MakeMoney(fmPreBodjet.QueryBodjetPreKol_Motamam.AsString);
//  fmPreBodjet.QRLabel28.Caption:=MakeMoney(fmPreBodjet.QueryBodjetPreKol_Amalkard.AsString);
//  fmPreBodjet.QRLabel46.Caption:=fmPreBodjet.QueryBodjetSPreKol_Per.AsString;
//  fmPreBodjet.QRLabel29.Caption:=MakeMoney(fmPreBodjet.QueryBodjetPreKol_NextYearPish.AsString);
//  fmPreBodjet.QRLabel83.Caption:=FloatToStr(Round((fmPreBodjet.QueryBodjetPreKol_NextYearPish.Value/Saham)*1000));
//  fmPreBodjet.QRLabel47.Caption:=fmPreBodjet.QueryBodjetPre_PishPer.AsString;
end;
//

Procedure TfmMain.SecondRowEdit;
begin
//with fmPreBodjet.QueryBodjet do begin
// While (not eof) and (fmPreBodjet.QueryBodjetPre_Kol_Code.Value<>20000) do
//  next;
// if (fmPreBodjet.QueryBodjetPre_Kol_Code.Value=20000) then begin
//  fmPreBodjet.QRLabel30.Caption:=MakeMoney(fmPreBodjet.QueryBodjetSPreKol_QtyOky.AsString);
//  fmPreBodjet.QRLabel31.Caption:=MakeMoney(fmPreBodjet.QueryBodjetSPreKol_Amalkard.AsString);
//  fmPreBodjet.QRLabel48.Caption:=fmPreBodjet.QueryBodjetPreKol_Per.AsString;
//  fmPreBodjet.QRLabel32.Caption:=MakeMoney(fmPreBodjet.QueryBodjetPreKol_QtyOky.AsString);
//  fmPreBodjet.QRLabel61.Caption:=MakeMoney(fmPreBodjet.QueryBodjetPreKol_Motamam.AsString);
//  fmPreBodjet.QRLabel33.Caption:=MakeMoney(fmPreBodjet.QueryBodjetPreKol_Amalkard.AsString);
//  fmPreBodjet.QRLabel49.Caption:=fmPreBodjet.QueryBodjetSPreKol_Per.AsString;
//  fmPreBodjet.QRLabel34.Caption:=MakeMoney(fmPreBodjet.QueryBodjetPreKol_NextYearPish.AsString);
//  fmPreBodjet.QRLabel84.Caption:=FloatToStr(Round((fmPreBodjet.QueryBodjetPreKol_NextYearPish.Value/Saham)*1000));
//  fmPreBodjet.QRLabel50.Caption:=fmPreBodjet.QueryBodjetPre_PishPer.AsString;
//  fmPreBodjet.QueryBodjet.First;
//  end;
// end;
end;
//

Procedure TfmMain.FourthRowEdit;
begin
//with fmPreBodjet.QueryBodjet do begin
// First;
// While (not eof) and (fmPreBodjet.QueryBodjetPre_Kol_Code.Value<>30000) do
//  next;
// if (fmPreBodjet.QueryBodjetPre_Kol_Code.Value=30000) then begin
//  fmPreBodjet.QRLabel67.Caption:=MakeMoney(fmPreBodjet.QueryBodjetSPreKol_QtyOky.AsString);
//  fmPreBodjet.QRLabel68.Caption:=MakeMoney(fmPreBodjet.QueryBodjetSPreKol_Amalkard.AsString);
//  fmPreBodjet.QRLabel69.Caption:=fmPreBodjet.QueryBodjetPreKol_Per.AsString;
//  fmPreBodjet.QRLabel70.Caption:=MakeMoney(fmPreBodjet.QueryBodjetPreKol_QtyOky.AsString);
//  fmPreBodjet.QRLabel71.Caption:=MakeMoney(fmPreBodjet.QueryBodjetPreKol_Amalkard.AsString);
//  fmPreBodjet.QRLabel72.Caption:=fmPreBodjet.QueryBodjetSPreKol_Per.AsString;
//  fmPreBodjet.QRLabel73.Caption:=MakeMoney(fmPreBodjet.QueryBodjetPreKol_Motamam.AsString);
//  fmPreBodjet.QRLabel74.Caption:=fmPreBodjet.QueryBodjetPre_PishPer.AsString;
//  fmPreBodjet.QRLabel75.Caption:=MakeMoney(fmPreBodjet.QueryBodjetPreKol_NextYearPish.AsString);
//  fmPreBodjet.QRLabel86.Caption:=FloatToStr(Round((fmPreBodjet.QueryBodjetPreKol_NextYearPish.Value/Saham)*1000));
//  fmPreBodjet.QueryBodjet.First;
//  end;
// end;
end;
//


Procedure TfmMain.ThirdRowEdit;
var
FirstQ,SecondQ:Real;
begin
//  FirstQ:=StrToFloatdef(RefineMoney(fmPreBodjet.QRLabel25.Caption),0)-StrToFloatdef(RefineMoney(fmPreBodjet.QRLabel30.Caption),0);
//  fmPreBodjet.QRLabel35.Caption:=MakeMoney(FloatToStr(FirstQ));
//  SecondQ:=StrToFloatdef(RefineMoney(fmPreBodjet.QRLabel26.Caption),0)-StrToFloatdef(RefineMoney(fmPreBodjet.QRLabel31.Caption),0);
//  fmPreBodjet.QRLabel36.Caption:=MakeMoney(FloatToStr(SecondQ));
//  if  FirstQ<>0 then
//   fmPreBodjet.QRLabel55.Caption:=FloatToStr(Round(SecondQ*10000/FirstQ)/100);
//  FirstQ:=(StrToFloat(RefineMoney(fmPreBodjet.QRLabel27.Caption)))-(StrToFloat(RefineMoney(fmPreBodjet.QRLabel32.Caption)));
//  fmPreBodjet.QRLabel37.Caption:=MakeMoney(FloatToStr(FirstQ));
//  fmPreBodjet.QRLabel38.Caption:=MakeMoney(FloatToStr(StrToFloat(RefineMoney(fmPreBodjet.QRLabel28.Caption))-StrToFloat(RefineMoney(fmPreBodjet.QRLabel33.Caption))));
//  SecondQ:=StrToFloat(RefineMoney(fmPreBodjet.QRLabel62.Caption))-StrToFloat(RefineMoney(fmPreBodjet.QRLabel61.Caption));
//  fmPreBodjet.QRLabel39.Caption:=MakeMoney(FloatToStr(SecondQ));
//  if FirstQ<>0 then
//   fmPreBodjet.QRLabel53.Caption:=FloatToStr(Round((SecondQ-FirstQ)*10000/FirstQ)/100);
//  SecondQ:=StrToFloat(RefineMoney(fmPreBodjet.QRLabel29.Caption))-StrToFloat(RefineMoney(fmPreBodjet.QRLabel34.Caption));
//  fmPreBodjet.QRLabel12.Caption:=MakeMoney(FloatToStr(SecondQ));
//  fmPreBodjet.QRLabel85.Caption:=FloatToStr(Round((SecondQ/Saham)*1000));
//  SecondQ:=StrToFloat(RefineMoney(fmPreBodjet.QRLabel12.Caption))-StrToFloat(RefineMoney(fmPreBodjet.QRLabel39.Caption));
//  FirstQ:=StrToFloat(RefineMoney(fmPreBodjet.QRLabel39.Caption));
//  if SecondQ<>0 then
//   fmPreBodjet.QRLabel51.Caption:=FloatToStr(Round((SecondQ)*10000/FirstQ)/100);
end;
//

Procedure TfmMain.FivethRowEdit;
begin
//with fmPreBodjet.taYEARDEBT do begin
// First;
// While (not eof) and (fmPreBodjet.taYEARDEBTOkyYear.Value<>((StrToInt(Copy(ThisDate,1,4))-2))) do
//  next;
// if (fmPreBodjet.taYEARDEBTOkyYear.Value =(StrToInt(Copy(ThisDate,1,4))-2))and(fmPreBodjet.taYEARDEBTQtyOky.AsFloat<>0) then begin
//  fmPreBodjet.QRLabel40.Caption:=MakeMoney(fmPreBodjet.taYEARDEBTQtyOky.AsString);
//  fmPreBodjet.QRLabel41.Caption:=MakeMoney(fmPreBodjet.taYEARDEBTAmalkard.AsString);
//  fmPreBodjet.QRLabel56.Caption:=FloatToStr(Round(fmPreBodjet.taYEARDEBTAmalkard.Value*10000/fmPreBodjet.taYEARDEBTQtyOky.Value)/100);
//  end;
// While (not eof) and (fmPreBodjet.taYEARDEBTOkyYear.Value<>(StrToInt(Copy(ThisDate,1,4))) ) do begin
//  next;
//  if (fmPreBodjet.taYEARDEBTOkyYear.Value =(StrToInt(Copy(ThisDate,1,4))-1)) then begin
//   fmPreBodjet.QRLabel42.Caption:=MakeMoney(fmPreBodjet.taYEARDEBTQtyOky.AsString);
//   fmPreBodjet.QRLabel43.Caption:=MakeMoney(fmPreBodjet.taYEARDEBTAmalkard.AsString);
//   fmPreBodjet.QRLabel44.Caption:=MakeMoney(fmPreBodjet.taYEARDEBTMotamam.AsString);
//   fmPreBodjet.QRLabel60.Caption:=MakeMoney(fmPreBodjet.taYEARDEBTNextYearPish.AsString);
//   fmPreBodjet.QRLabel87.Caption:=FloatToStr(Round((fmPreBodjet.taYEARDEBTNextYearPish.Value/Saham)*1000));
//   if fmPreBodjet.taYEARDEBTMotamam.Value>0 then
//    fmPreBodjet.QRLabel52.Caption:=FloatToStr(Round((fmPreBodjet.taYEARDEBTNextYearPish.Value-fmPreBodjet.taYEARDEBTMotamam.Value)*10000/fmPreBodjet.taYEARDEBTMotamam.Value)/100);
//   end
// { else  if (fmPreBodjet.taYEARDEBTOkyYear.Value =((ThisDate div 10000))) then begin
//         fmPreBodjet.QRLabel60.Caption:=MakeMoney(fmPreBodjet.taYEARDEBTQtyOky.AsString);
//         if fmPreBodjet.taYEARDEBTQtyOky.Value<>0 then
//         fmPreBodjet.QRLabel52.Caption:=FloatToStr(Round((fmPreBodjet.taYEARDEBTNextYearPish.Value-fmPreBodjet.taYEARDEBTQtyOky.Value)*10000/fmPreBodjet.taYEARDEBTQtyOky.Value)/100);
//         end;}
//  end;
// end;
end;

Procedure TfmMain.BookDo(Code:Integer);
var GroupHeader1:tfrxGroupHeader;
    Memo39,Memo104,Memo1,Memo34,frxDBBookDes:tfrxMemoView;
begin
// Application.CreateForm(TfmPreRep,fmPreRep);
// try
//  fmPreRep.MNMASKEdit1.Text:=IntToStr(dmMastData.IntDate);
//  fmPreRep.MNMASKEdit2.Text:=IntToStr(dmMastData.IntDate);
//  fmPreRep.Label3.Visible:=True;
//  fmPreRep.Label4.Visible:=True;
//  fmPreRep.Label3.Caption:='«“ ”‰œ';
//  fmPreRep.Label4.Caption:=' « ”‰œ';
//  fmPreRep.MNNumEdit3.Visible:=True;
//  fmPreRep.MNNumEdit4.Visible:=True;
//  fmPreRep.MNNumEdit3.Text:='0';
//  fmPreRep.MNNumEdit4.Text:='9999999';
// if fmPreRep.ShowModal=mrOk then begin
//  Application.CreateForm(TfmReport,fmReport);
//  try
//   fmReport.BookSqlDo(fmPreRep.MNMASKEdit1.Text,fmPreRep.MNMASKEdit2.Text,fmPreRep.MNNumEdit3.Text,fmPreRep.MNNumEdit4.Text,Code);
//   Memo104:=fmReport.frxBook.FindObject('Memo104') as tfrxMemoView ;
//   Memo104.Text:='';//'  «—ÌŒ  ÂÌÂ : '+dmMastData.StrDate;
//   Memo34:=fmReport.frxBook.FindObject('Memo34') as tfrxMemoView ;
//   Memo34.Text:='«“  «—ÌŒ'+fmPreRep.MNMASKEdit1.EditText+'«·Ì'+fmPreRep.MNMASKEdit2.EditText+'”‰œ'+fmPreRep.MNNumEdit3.Text+'«·Ì'+fmPreRep.MNNumEdit4.Text;
//   if Code=2 then begin
//    GroupHeader1:=fmReport.frxBook.FindObject('GroupHeader1') as tfrxGroupHeader ;
//    GroupHeader1.Condition:='frxDBBook."Kol"';
//    Memo39:=fmReport.frxBook.FindObject('Memo39') as tfrxMemoView ;
//    Memo39.Text:=' œ› — ò· ';
//    Memo1:=fmReport.frxBook.FindObject('Memo1') as tfrxMemoView ;
//    Memo1.Text:=' òœ ò· : ';
//    frxDBBookDes:=fmReport.frxBook.FindObject('frxDBBookDes') as tfrxMemoView ;
//    frxDBBookDes.Visible:=True;
//   end;
//   fmReport.frxBook.ShowReport();
//  finally
//   fmReport.Free;
//  end;
// end;
// finally
//  fmPreRep.Free;
// end;
end;

Procedure TfmMain.ReminderDo;
begin
// with dmMastData.Query1 do begin
//  Sql.Clear;
//  Sql.Add('Select * From Reminder Where Person_Id='+IntToStr(dmMastData.Per_Code)+' And RDate<='+IntToStr(dmMastData.IntDate)+' And Active=1 Order By RDate');
//  Open;
//  while not Eof do begin
//   dmMastData.PreMessage(fmMain,'Jump','Ì«œ¬Ê—Ì');
//   if dmMastData.Assistant1.MessageDlg(FieldByName('Des').AsString+#13+#10+'¬Ì« „Ãœœ Ì«¬Ê—Ì ‘Êœø',mtInformation,[mbyes,mbno],0)= mrno  then begin
//    Edit;
//    FieldByName('Active').Value:=False;
//    Post;
//   end;
//   Next;
//  end;
//  dmMastData.Assistant1.Hide();
// end;
end;

//---------------------------------------------------

procedure TfmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if Lock=True then
 if dmMastData.taUsers.Active=True then begin
  dmMastData.taUsers.Edit;
  dmMastData.taUsersLock.Value:=False;
  dmMastData.taUsers.Post;
 end;

end;

procedure TfmMain.FormShow(Sender: TObject);
var Reg :tRegistry;
    S:String;
    I:Integer;
begin
 Lock:=False;
// S:=GetHDDSerial+'AccB';
// Reg := tRegistry.Create;
// Reg.RootKey := HKEY_LOCAL_MACHINE;
// Reg.OpenKey('\SOFTWARE\Mahdiyar\AccB',True);
// try
//  I:=StrToInt(Reg.ReadString('Nasrollahpour'));
// except
//  I:=22;
// end;
// S:=encrypt(S,I);
// if S=Reg.ReadString('Mahdiyar') then begin
  if fmPassWord.ShowModal=mrOk then begin
//   ServerSocket1.Active:=True;
   Lock:=True;
   dmMastData.taUsers.Edit;
   dmMastData.taUsersLock.Value:=True;
   dmMastData.taUsers.Post;
   dmMastData.Per_Code:=dmMastData.taUsersPerson_Id.Value;
   sStatusBar1.Panels.Items[0].Text:=MakeDate(dmMastData.StrDate);
   sStatusBar1.Panels.Items[1].Text:='ò«—»—:'+dmMastData.taUsersUserName.Value;
   sStatusBar1.Panels.Items[2].Text:=dmMastData.taMasterName.Value+' - '+dmMastData.taMasterBranch.Value;
   dmMastData.taUsers.Edit;
   dmMastData.taUsersIP.Value:=dmMastData.IdIPWatch1.LocalIP;
   sSkinManager1.SkinDirectory:='Skins';
   sSkinManager1.SkinName:=dmMastData.taUsersSkinName.AsString;
   sSkinManager1.Active:=True;
   ReminderDo;
   if dmMastData.taUsersOpenItemReminder.AsInteger>0 then
    dmMastData.OpenItem(dmMastData.taUsersOpenItemReminder.AsInteger,0);
  end else
  Close;
// end else begin
//  ShowMessage('ò«—»— ê—«„Ì «Ì‰ »—‰«„Â »Â œ—” Ì òÅÌ ‰‘œÂ ·ÿ›« »« »—‰«„Â ‰ÊÌ”  „«” »êÌ—Ìœ');
//  Close;
// end;
// Reg.CloseKey;
// Reg.Free;
end;

procedure TfmMain.ServerSocket1ClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
begin
// suiMSNPopForm1.Title:=''+Socket.LocalAddress;
// suiMSNPopForm1.MessageText:=(Socket.ReceiveText);
// suiMSNPopForm1.Popup;
end;

procedure TfmMain.Action11Execute(Sender: TObject);
begin
  Application.CreateForm(TfmSandoghId,fmSandoghId) ;
  try
   fmSandoghId.ShowModal;
  finally
   fmSandoghId.Free;
  end;

end;

procedure TfmMain.Action12Execute(Sender: TObject);
begin
 Application.CreateForm(TfmCodes,fmCodes) ;
 try
//  fmCodes.taKol.Open;
//  fmCodes.taMoin.Open;
//  fmCodes.quHesab.Open;
  fmCodes.MemTableKol.Open;
  fmCodes.MemTableMoin.Open;
  fmCodes.MemTableHesab.Open;
  fmCodes.ShowModal;
 finally
  fmCodes.Free;
 end;
end;

procedure TfmMain.Action13Execute(Sender: TObject);
begin
 Application.CreateForm(TfmCustomer,fmCustomer) ;
 try
  fmCustomer.ShowModal;
 finally
  fmCustomer.Free;
 end;
end;

procedure TfmMain.Action14Execute(Sender: TObject);
begin
// Application.CreateForm(TfmBranches,fmBranches) ;
// try
//  fmBranches.taBranches.Active:=True;
//  fmBranches.ShowModal;
// finally
//  dmMastData.Assistant1.Hide();
//  fmBranches.Free;
// end;
end;

procedure TfmMain.Action21Execute(Sender: TObject);
begin
// Application.CreateForm(TfmHesabFree,fmHesabFree) ;
// try
//  fmHesabFree.ShowModal;
// finally
//  dmMastData.Assistant1.Hide();
//  fmHesabFree.Free;
// end;
end;

procedure TfmMain.Action22Execute(Sender: TObject);
begin
// Application.CreateForm(TfmInput,fmInput) ;
// try
//  fmInput.MNNumEdit1.Visible:=False;
//  fmInput.MNEdit1.Visible:=True;
////  fmInput.MNEdit1.SetFocus;
//  fmInput.Label1.Caption:='‰«„ ò«—»—';
//  if fmInput.ShowModal=MrOk then begin
//   with fmInput.Query do begin
//    Sql.Add('Update Users Set Lock=0 Where UserName='+QuotedStr(fmInput.MNEdit1.Text));
//    ExecSql;
//   end;
//  end;
// finally
//  dmMastData.Assistant1.Hide();
//  fmInput.Free;
// end;
end;

procedure TfmMain.Action23Execute(Sender: TObject);
begin
// Application.CreateForm(TfmBlock,fmBlock) ;
// try
//  fmBlock.ShowModal;
// finally
//  dmMastData.Assistant1.Hide();
//  fmBlock.Free;
// end;
end;

procedure TfmMain.Action24Execute(Sender: TObject);
begin
// Application.CreateForm(TfmNameSearch,fmNameSearch) ;
// try
//  fmNameSearch.ShowModal;
// finally
//  dmMastData.Assistant1.Hide();
//  fmNameSearch.Free;
// end;
end;

procedure TfmMain.Action25Execute(Sender: TObject);
begin
// Application.CreateForm(TfmMessage,fmMessage) ;
// try
//  fmMessage.ShowModal;
// finally
//  dmMastData.Assistant1.Hide();
//  fmMessage.Free;
// end;
// ClientSocket1.Host:=DmMastdata.taUsersIP.Value;
// ClientSocket1.Active:=True;
// ClientSocket1.Socket.SendText('abcdefghijklmnopqrstuvwxyz');
// ClientSocket1.Active:=False;
end;

procedure TfmMain.Action26Execute(Sender: TObject);
begin
// Application.CreateForm(TfmBlackList,fmBlackList) ;
// try
//  fmBlackList.ShowModal;
// finally
//  dmMastData.Assistant1.Hide();
//  fmBlackList.Free;
// end;
end;

procedure TfmMain.Action31Execute(Sender: TObject);
begin
// Application.CreateForm(TfmCheque,fmCheque) ;
// try
//  fmCheque.ShowModal;
// finally
//  dmMastData.Assistant1.Hide;
//  fmCheque.Free;
// end;
end;

procedure TfmMain.Action32Execute(Sender: TObject);
begin
// Application.CreateForm(TfmSerialFind,fmSerialFind) ;
// try
//  fmSerialFind.ShowModal;
// finally
//  dmMastData.Assistant1.Hide();
//  fmSerialFind.Free;
// end;
end;

procedure TfmMain.Action33Execute(Sender: TObject);
begin
// Application.CreateForm(TfmChangeSerial,fmChangeSerial) ;
// try
//  fmChangeSerial.ShowModal;
// finally
//  dmMastData.Assistant1.Hide();
//  fmChangeSerial.Free;
// end;
end;

procedure TfmMain.Action27Execute(Sender: TObject);
begin
// Application.CreateForm(TfmBaravat,fmBaravat) ;
// try
//  fmBaravat.PReg.PageIndex:=0;
//  fmBaravat.ShowModal;
// finally
//  dmMastData.Assistant1.Hide();
//  fmBaravat.Free;
// end;
end;

procedure TfmMain.Action51Execute(Sender: TObject);
begin
// Application.CreateForm(TfmAbout,fmAbout) ;
// try
//  fmAbout.ShowModal;
// finally
//  dmMastData.Assistant1.Hide();
//  fmAbout.Free;
// end;
end;

procedure TfmMain.Action41Execute(Sender: TObject);
begin
// Application.CreateForm(TfmLoan,fmLoan) ;
// try
//  fmLoan.MNShDate1.Text:=MakeDate(IntToStr(dmMastData.IntDate)) ;
//  fmLoan.ShowModal;
// finally
//  dmMastData.Assistant1.Hide();
//  fmLoan.Free;
// end;
end;

procedure TfmMain.Action44Execute(Sender: TObject);
begin
// Application.CreateForm(TfmCredit,fmCredit) ;
// try
//  fmCredit.MNNumEdit1.Text:=dmMastData.taMasterBranch_Code.AsString;
//  fmCredit.ShowModal;
// finally
//  dmMastData.Assistant1.Hide();
//  fmCredit.Free;
// end;
end;

procedure TfmMain.Action999Execute(Sender: TObject);
begin
// Application.CreateForm(TfmCodeSearch,fmCodeSearch) ;
// try
//  fmCodeSearch.ShowModal;
// finally
//  dmMastData.Assistant1.Hide();
//  fmCodeSearch.Free;
// end;
end;

procedure TfmMain.Action15Execute(Sender: TObject);
begin
 Application.CreateForm(TfmRegTrn,fmRegTrn) ;
 try
  fmRegTrn.ThisDate:=dmMastData.IntDate;
  fmRegTrn.FDTaTrnHead.Open;
  fmRegTrn.FDTaTrnHead.Last;
  fmRegTrn.ShowModal;
 finally
  fmRegTrn.Free;
 end;
end;

procedure TfmMain.Action16Execute(Sender: TObject);
var Control:integer;
begin
// Control:=0;
// Application.CreateForm(TfmCodeSearch,fmCodeSearch);
// try
//  fmCodeSearch.Label1.Visible:=False;
//  fmCodeSearch.MNEdit1.Visible:=False;
//  fmCodeSearch.QuSearch.SQL.Clear;
//  fmCodeSearch.QuSearch.SQL.Add('Select * From SanadHead Where Copied=0 ');
//  fmCodeSearch.QuSearch.Open;
//  fmCodeSearch.ShowModal;
// finally
//  with dmMastData.Query1 do begin
//   if fmCodeSearch.QuSearch.RecordCount>=1 then begin
//    Sql.Clear;
//    Sql.Add('Select SanadNo,Reg_Date,Sum(Sanad_Qty*Sanad_Type) Sanad_Qty From SanadAct Where Deleted=0');
//    Sql.Add(' And Reg_Date='+fmCodeSearch.QuSearch.FieldByName('Reg_Date').AsString);
//    Sql.Add(' Group By SanadNo,Reg_Date ');
//    Open;
//    First;
//    while not Eof do begin
//     if FieldByName('Sanad_Qty').Value<>0 then begin
//      Control:=1;
//      ShowMessage(FieldByName('SanadNo').AsString+'   '+MakeMoney(FieldByName('Sanad_Qty').AsString));
//     end;
//     Next;
//    end;
//    if Control=0 then begin
//     Sql.Clear;
// //    Sql.Add(' Update SanadAct Set Reg_Date='+IntToStr(dmMastData.IntDate));
//
//     Sql.Add(' Update HesabAct Set Eftetah=(Select Min(Reg_Date) From SanadAct Where ');
//     Sql.Add('HesabAct.Hesab_No=SanadAct.Hesab_No And Deleted=0) Where Eftetah Is Null ');
//
////     Sql.Add(' Insert Into SanadDel Select * From SanadAct Where Deleted=1 ');
//
//     Sql.Add(' Delete From Sanad ');
//     Sql.Add(' Where Reg_Date='+fmCodeSearch.QuSearch.FieldByName('Reg_Date').AsString);
//
//     Sql.Add(' Insert Into Sanad Select * From SanadAct Where Deleted=0 ');
//     Sql.Add(' And Reg_Date='+fmCodeSearch.QuSearch.FieldByName('Reg_Date').AsString);
//
//     Sql.Add(' Delete From MoinSum Where Reg_Date='+fmCodeSearch.QuSearch.FieldByName('Reg_Date').AsString);
//
//     Sql.Add(' Insert Into MoinSum Select Max(Reg_Date),Kol,Moin,Sum(Sanad_Qty*Sanad_Type),0,0,Count(Kol),0 ');
//     Sql.Add(' From SanadAct Where Deleted=0 ');
//     Sql.Add(' And Reg_Date='+fmCodeSearch.QuSearch.FieldByName('Reg_Date').AsString);
//     Sql.Add(' Group By Kol,Moin ');
//
//     Sql.Add(' Update MoinSum Set Bed=(Select Sum(Sanad_Qty) From SanadAct Where Sanad_Type=1 And MoinSum.Kol=SanadAct.Kol And MoinSum.Moin=SanadAct.Moin And Deleted=0');
//     Sql.Add(' And SanadAct.Reg_Date='+fmCodeSearch.QuSearch.FieldByName('Reg_Date').AsString+'),');
//     Sql.Add(' Bes=(Select Sum(Sanad_Qty) From SanadAct Where Sanad_Type=-1 And MoinSum.Kol=SanadAct.Kol And MoinSum.Moin=SanadAct.Moin And Deleted=0');
//     Sql.Add(' And SanadAct.Reg_Date='+fmCodeSearch.QuSearch.FieldByName('Reg_Date').AsString+'),');
//     Sql.Add(' Eftetah=(Select Count(Kol) From HesabAct Where Eftetah='+fmCodeSearch.QuSearch.FieldByName('Reg_Date').AsString+' And MoinSum.Kol=HesabAct.Kol And MoinSum.Moin=HesabAct.Moin) ');
//     Sql.Add(' Where Reg_Date='+fmCodeSearch.QuSearch.FieldByName('Reg_Date').AsString);
//
//     Sql.Add(' Update SanadHead Set Copied=1 Where Reg_Date='+fmCodeSearch.QuSearch.FieldByName('Reg_Date').AsString);
// //    Sql.Add(' Delete SanadAct ');
//
////     Sql.Add(' Delete Hesab Where Hesab_No In(Select Hesab_No From HesabAct) ');
////     Sql.Add(' Insert Into Hesab Select *  From HesabAct ');
////     Sql.Add(' Delete HesabAct ');
//     try
//      ExecSql;
//
//     except
//
//     end;
//    end;
//   end else ShowMessage('”‰œÌ »—«Ì »” Â ‘œ‰ „ÊÃÊœ ‰„Ì »«‘œ');
//  end;
//
//  fmCodeSearch.Free;
// end;

end;

procedure TfmMain.Action61Execute(Sender: TObject);
var SumKolRep:tfrxReportPage;
    Memo23,Memo89:tfrxMemoView;
begin
// Application.CreateForm(TfmPreRep,fmPreRep) ;
// try
//  fmPreRep.MNMASKEdit1.Text:=inttostr(dmMastData.IntDate);
//  fmPreRep.MNMASKEdit2.Text:=inttostr(dmMastData.IntDate);
//  if fmPreRep.ShowModal=mrOk then begin
//   Application.CreateForm(TfmReport,fmReport) ;
//    try
//     fmReport.BedMandeh:=0;
//     fmReport.BesMandeh:=0;
//     fmReport.FDate:=StrToInt(fmPreRep.MNMASKEdit1.Text);
//     fmReport.LDate:=StrToInt(fmPreRep.MNMASKEdit2.Text);
//     fmReport.MoinSumDo(fmPreRep.MNMASKEdit1.Text,fmPreRep.MNMASKEdit2.Text);
//     with fmReport.QuSumKol do begin
//      Parameters.ParamByName('Beg_Date').Value:=StrToInt(Copy(fmPreRep.MNMASKEdit1.Text,1,4)+'0101');
//      Parameters.ParamByName('End_Date').Value:=StrToInt(fmPreRep.MNMASKEdit2.Text);
//      Open;
//     end;
//      SumKolRep:=fmReport.frxRep.FindObject('SumKolRep') as tfrxReportPage;
//      Memo23:=fmReport.frxRep.FindObject('Memo23') as tfrxMemoView;
//      Memo89:=fmReport.frxRep.FindObject('Memo89') as tfrxMemoView;
//      SumKolRep.Visible:=True;
//      Memo23.Text:='ê“«—‘  —«“ ò· '+dmMastData.taMasterName.Value+' '+dmMastData.taMasterBranch.Value+' «“  «—ÌŒ '+dmMastData.DateFormat(fmPreRep.MNMASKEdit1.Text)+'  «  «—ÌŒ '+dmMastData.DateFormat(fmPreRep.MNMASKEdit2.Text);
//      Memo89.Text:='';//'  «—ÌŒ  ÂÌÂ : '+dmMastData.StrDate;
//      fmReport.frxRep.ShowReport(True);
//    finally
//     fmReport.Free;
//    end;
//  end;
// finally
//  fmPreRep.Free;
// end;
end;

procedure TfmMain.TrnRepActionExecute(Sender: TObject);
begin
 Application.CreateForm(TfmTrnRep,fmTrnRep) ;
 try
  fmTrnRep.MNTEDit1.Text:=Copy(dmMastData.StrDate,1,4)+'/01/01';
  fmTrnRep.MNTEDit2.Text:=dmMastData.StrDate;
  fmTrnRep.ShowModal;
 finally
  fmTrnRep.Free;
 end;
end;

procedure TfmMain.Action63Execute(Sender: TObject);
begin
// Application.CreateForm(TfmMandehHesab,fmMandehHesab) ;
// try
//  fmMandehHesab.MNShDate1.Text:=MakeDate(IntToStr(dmMastData.IntDate));
//  fmMandehHesab.MNShDate2.Text:=MakeDate(IntToStr(dmMastData.IntDate));
//  fmMandehHesab.ShowModal;
// finally
//  fmMandehHesab.Free;
// end;
end;

procedure TfmMain.Action64Execute(Sender: TObject);
begin
// Application.CreateForm(TfmMoinMandeh,fmMoinMandeh) ;
// try
//  fmMoinMandeh.MNShDate1.Text:=MakeDate(IntToStr(dmMastData.IntDate));
//  fmMoinMandeh.MNShDate2.Text:=MakeDate(IntToStr(dmMastData.IntDate));
//  fmMoinMandeh.ShowModal;
// finally
//  fmMoinMandeh.Free;
// end;
end;

procedure TfmMain.Action65Execute(Sender: TObject);
var DayRep:tfrxReportPage;
//    Memo13,Memo14,Memo15:tfrxMemoView;
begin
// Application.CreateForm(TfmPreRep,fmPreRep) ;
// try
//  fmPreRep.MNMASKEdit1.Visible:=False;
//  fmPreRep.MNMASKEdit2.Visible:=False;
//  fmPreRep.Label1.Caption:='”«· „«·Ì';
//  fmPreRep.Label2.Visible:=False;
//  fmPreRep.Label3.Visible:=True;
//  fmPreRep.Label4.Visible:=True;
//  fmPreRep.Label3.Caption:='«“ ”‰œ';
//  fmPreRep.Label4.Caption:=' « ”‰œ';
//  fmPreRep.MNNumEdit1.Visible:=True;
//  fmPreRep.MNNumEdit3.Visible:=True;
//  fmPreRep.MNNumEdit4.Visible:=True;
//  fmPreRep.MNNumEdit1.Text:=Copy(inttostr(dmMastData.IntDate),1,4);
//  if fmPreRep.ShowModal=mrOk then begin
//   Application.CreateForm(TfmReport,fmReport) ;
//   try
//    fmReport.DayRep(StrToInt(fmPreRep.MNNumEdit1.Text),StrToInt(fmPreRep.MNNumEdit3.Text),StrToInt(fmPreRep.MNNumEdit4.Text),1);
//    fmReport.frxRep.ShowReport(True);
//   finally
//    fmReport.Free;
//   end;
//  end;
// finally
//  fmPreRep.Free;
// end;
end;

procedure TfmMain.Action66Execute(Sender: TObject);
var DayRep:tfrxReportPage;
//    Memo13,Memo14,Memo15:tfrxMemoView;
begin
// Application.CreateForm(TfmPreRep,fmPreRep) ;
// try
//  fmPreRep.MNMASKEdit1.Visible:=False;
//  fmPreRep.MNMASKEdit2.Visible:=False;
//  fmPreRep.Label1.Caption:='”«· „«·Ì';
//  fmPreRep.Label2.Visible:=False;
//  fmPreRep.Label3.Visible:=True;
//  fmPreRep.Label4.Visible:=True;
//  fmPreRep.Label3.Caption:='«“ ”‰œ';
//  fmPreRep.Label4.Caption:=' « ”‰œ';
//  fmPreRep.MNNumEdit1.Visible:=True;
//  fmPreRep.MNNumEdit3.Visible:=True;
//  fmPreRep.MNNumEdit4.Visible:=True;
//  fmPreRep.MNNumEdit1.Text:=Copy(inttostr(dmMastData.IntDate),1,4);
//  if fmPreRep.ShowModal=mrOk then begin
//   Application.CreateForm(TfmReport,fmReport) ;
//   try
//    fmReport.DayRep(StrToInt(fmPreRep.MNNumEdit1.Text),StrToInt(fmPreRep.MNNumEdit3.Text),StrToInt(fmPreRep.MNNumEdit4.Text),2);
//    fmReport.frxRep.ShowReport(True);
//   finally
//    fmReport.Free;
//   end;
//  end;
// finally
//  fmPreRep.Free;
// end;
end;

procedure TfmMain.Action67Execute(Sender: TObject);
var SumKol8:tfrxReportPage;
    Memo81,Memo103:tfrxMemoView;
begin
// Application.CreateForm(TfmPreRep,fmPreRep) ;
// try
//  fmPreRep.MNMASKEdit1.Text:=Copy(inttostr(dmMastData.IntDate),1,4)+'0101';
//  fmPreRep.MNMASKEdit2.Text:=inttostr(dmMastData.IntDate);
//  if fmPreRep.ShowModal=mrOk then begin
//   Application.CreateForm(TfmReport,fmReport) ;
//    try
//     fmReport.BedMandeh:=0;
//     fmReport.BesMandeh:=0;
//     fmReport.FDate:=StrToInt(fmPreRep.MNMASKEdit1.Text);
//     fmReport.LDate:=StrToInt(fmPreRep.MNMASKEdit2.Text);
//     fmReport.MoinSum8Do(fmPreRep.MNMASKEdit1.Text,fmPreRep.MNMASKEdit2.Text);
//     with fmReport.QuSumKol do begin
//      Parameters.ParamByName('Beg_Date').Value:=StrToInt(Copy(fmPreRep.MNMASKEdit1.Text,1,4)+'0101');
//      Parameters.ParamByName('End_Date').Value:=StrToInt(fmPreRep.MNMASKEdit2.Text);
//      Open;
//     end;
//      SumKol8:=fmReport.frxRep.FindObject('SumKol8') as tfrxReportPage;
//      Memo81:=fmReport.frxRep.FindObject('Memo81') as tfrxMemoView;
//      Memo103:=fmReport.frxRep.FindObject('Memo103') as tfrxMemoView;
//      SumKol8.Visible:=True;
//      Memo81.Text:=' ê“«—‘ Â‘  ” Ê‰Ì  —«“ ò· '+dmMastData.taMasterName.Value+' '+dmMastData.taMasterBranch.Value+' «“  «—ÌŒ '+dmMastData.DateFormat(fmPreRep.MNMASKEdit1.Text)+'  «  «—ÌŒ '+dmMastData.DateFormat(fmPreRep.MNMASKEdit2.Text);
//      Memo103.Text:='';//'  «—ÌŒ  ÂÌÂ : '+dmMastData.StrDate;
//      fmReport.frxRep.ShowReport(True);
//    finally
//     fmReport.Free;
//    end;
//  end;
// finally
//  fmPreRep.Free;
// end;
end;

procedure TfmMain.Action43Execute(Sender: TObject);
begin
// Application.CreateForm(TfmInterest,fmInterest) ;
// try
//  fmInterest.MNMASKEdit1.Text:=IntToStr(dmMastData.IntDate);
//  fmInterest.ShowModal;
// finally
//  fmInterest.Free;
// end;
end;

procedure TfmMain.Action45Execute(Sender: TObject);
begin
// Application.CreateForm(TfmLoanLate,fmLoanLate) ;
// try
//  fmLoanLate.ShowModal;
// finally
//  dmMastData.Assistant1.Hide();
//  fmLoanLate.Free;
// end;
end;

procedure TfmMain.Action46Execute(Sender: TObject);
begin
// Application.CreateForm(TfmAghsatRep,fmAghsatRep) ;
// try
//  fmAghsatRep.ShowModal;
// finally
//  dmMastData.Assistant1.Hide();
//  fmAghsatRep.Free;
// end;
end;

procedure TfmMain.Action68Execute(Sender: TObject);
begin
// Application.CreateForm(tfmTestTaraz,fmTestTaraz);
// try
//  fmTestTaraz.MNShDate1.Text:=MakeDate(IntToStr(dmMastData.GetDate));
//  fmTestTaraz.MNShDate2.Text:=MakeDate(IntToStr(dmMastData.GetDate));
//  fmTestTaraz.ShowModal;
// finally
//  fmTestTaraz.Free;
// end;
end;

procedure TfmMain.Action17Execute(Sender: TObject);
begin
// Application.CreateForm(TfmHesabOfHesab,fmHesabOfHesab);
// try
//  fmHesabOfHesab.ShowModal;
// finally
//  dmMastData.Assistant1.Visible:=False;
//  fmHesabOfHesab.Free;
// end;
end;

procedure TfmMain.Action990Execute(Sender: TObject);
var Inif:TIniFile;
begin
// Inif:=TIniFile.Create('C:\MNConfig.ini');
// try
//  dmMastData.AdoConnection2.ConnectionString:=Inif.ReadString('Saham','1','');
//  dmMastData.AdoConnection2.Connected:=True;
// except
//  Application.CreateForm(TfmPreConnection,fmPreConnection) ;
//  try
//   fmPreConnection.PName:='Saham';
//   fmPreConnection.ShowModal;
//  finally
//   fmPreConnection.Free;
//  end;
// end;
end;

procedure TfmMain.Action991Execute(Sender: TObject);
begin
// Application.CreateForm(TfmInput,fmInput);
// try
//  fmInput.Label1.Caption:='ò·';
//  fmInput.Label2.Caption:='„⁄Ì‰';
//  fmInput.Label1.Visible:=True;
//  fmInput.Label2.Visible:=True;
//  fmInput.MNNumEdit1.Visible:=True;
//  fmInput.MNNumEdit2.Visible:=True;
//  if fmInput.ShowModal=mrOk then begin
//   SahamHesabAdd(fmInput.MNNumEdit1.Text,fmInput.MNNumEdit2.Text);
//  end;
// finally
//  fmInput.Free;
// end;
end;

procedure TfmMain.sSpeedButton1Click(Sender: TObject);
begin
 Action15Execute(Self);
end;

procedure TfmMain.sSpeedButton2Click(Sender: TObject);
begin
 Action12Execute(Self);
end;

procedure TfmMain.sSpeedButton3Click(Sender: TObject);
begin
 Action13Execute(Self);
end;

procedure TfmMain.Action71Execute(Sender: TObject);
begin
//  Application.CreateForm(TPagesDlgBodjeh, PagesDlgBodjeh);
// try
//  PagesDlgBodjeh.ShowModal;
// Finally
//  PagesDlgBodjeh.Free;
// end;
end;

procedure TfmMain.Action72Execute(Sender: TObject);
begin
//  Application.CreateForm(TfmManMas, fmManMas);
// try
//  fmManMas.ShowModal;
// Finally
//  fmManMas.Free;
// end;
end;

procedure TfmMain.Action73Execute(Sender: TObject);
var
DateS:String[10];
This_DateAz,Manabeh_DateTa:String;//Integer;
SumManabeh : Real;
begin
//Application.CreateForm(TfmPreRep,fmPreRep);
// try
//  DateS:=dmMastData.StrDate;//a DateDo;
// if fmPreRep.ShowModal=mrOk then begin
//  This_DateAz:=fmPreRep.MNMASKEdit1.Text;
//  Manabeh_DateTa:=fmPreRep.MNMASKEdit2.Text;
//  Application.CreateForm(TfmManabehMasaref,fmManabehMasaref);
//   try
//    fmManabehMasaref.Caption:='                            ÃœÊ· „‰«»⁄ Ê„’«—›   '+dmMastData.taMasterName.Value;
//     fmManabehMasaref.QuUpdt.Close;
//     fmManabehMasaref.QuUpdt.Parameters.ParamByName('V_Manabeh_BegDate').Value :=Copy(Manabeh_DateTa,1,4)+'0101';//This_DateAz;
//     fmManabehMasaref.QuUpdt.Parameters.ParamByName('V_Manabeh_RegDate').Value :=Manabeh_DateTa;
//     fmManabehMasaref.QuUpdt.Parameters.ParamByName('V_Masaref_BegDate').Value :=Copy(This_DateAz,1,4)+'0101';//This_DateAz;
//     fmManabehMasaref.QuUpdt.Parameters.ParamByName('V_Masaref_RegDate').Value :=Manabeh_DateTa;//This_DateAz;
//     fmManabehMasaref.QuUpdt.ExecSQL;
//     SumManabeh :=dmMastData.FindSUMNumFieldsTbName(dmMastData.Query1, 'ManMas', 'Mandeh', 'Kind=1');
//     fmManabehMasaref.MoneyManabeh.Text:=MakeMoney(FloatToStr(SumManabeh));
//     begin
//      fmManabehMasaref.taMASAREF.Filter:='(Kind=2)';
//      fmManabehMasaref.taMASAREF.Open;
//      MasarefCalc;
//      end;
//     fmManabehMasaref.taMANABEH.Open;
//     fmManabehMasaref.MaskEdit1.Text:=MakeDate(Manabeh_DateTa);
//     fmManabehMasaref.MaskEdit2.Text:=fmManabehMasaref.MaskEdit1.Text;
//     fmManabehMasaref.ShowModal;
//    Finally
//     fmManabehMasaref.taMASAREF.Close;
//     fmManabehMasaref.taMANABEH.Close;
//     fmManabehMasaref.Free;
//    end;
// end;
// Finally
//  fmPreRep.Free;
//  end;
end;

procedure TfmMain.Action75Execute(Sender: TObject);
begin
//  Application.CreateForm(TfmBodjMosavab, fmBodjMosavab);
// try
//  fmBodjMosavab.ShowModal;
// Finally
//  fmBodjMosavab.Free;
// end;
end;

procedure TfmMain.Action76Execute(Sender: TObject);
var
DateS,YearS:String;
begin
DateS:=dmMastData.StrDate;

//Application.CreateForm(TfmPreRep,fmPreRep);
//
//{with fmPreRep do begin
//fmDateGet.Caption :='';
//fmDateGet.Height :=149;
//fmDateGet.Width :=339;
//BitBtnOk.Top :=65;
//BitBtnCancel.Top :=65;
//
//CBxFltrKol.Visible :=False;
//Label3.Visible :=False;
//Label4.Visible :=False;
//LblAz.Visible :=False;
//LblTa.Visible :=False;
//DBEKol_Code.Visible :=False;
//DBEKol_Code1.Visible :=False;
//FDAz.Visible :=False;
//FDTa.Visible :=False;
//SpeedBtnHlpSf1.Visible :=False;
//SpeedBtnHlpSf2.Visible :=False;
//Label6.Visible :=False;
//Label5.Visible :=False;
//CBxGbBastan.Visible :=False;
//DBEKol_Des.Visible :=False;
//DBEKol_Des1.Visible :=False;
//RadioGroup1.Visible :=False;
//end;}
//
// try
////  DateS:=PdateToStr(Date);
//  YearS :=Copy(DateS,1,4);
//  //a if Pos('/',DateS)=5 then
////a   DateS:=Copy(DateS,9,2)+'/'+Copy(DateS,6,2)+'/'+Copy(DateS,1,4);
////  fmDateGet.MaskEdit1.Visible:=True;
////  fmDateGet.Label1.Visible:=True;
////a  DateS:=Copy(DateS,9,2);
////  fmDateGet.MaskEdit1.Text:=IntToStr(StrToInt(YearS)+1)+'/01/01';
//
////  fmDateGet.FDAz.Text:=IntToStr(StrToInt(YearS)+1)+'/01/01';
//  //fmDateGet.FDTa.Text:=DateS;
//  if fmPreRep.ShowModal=mrOk then begin
////   ThisDate:=StrToInt(Copy(fmDateGet.MaskEdit1.Text,1,2)+Copy(fmDateGet.MaskEdit1.Text,4,2)+Copy(fmDateGet.MaskEdit1.Text,7,2));
////  DateS:=PdateToStr(Date);
//   Dates:=fmPreRep.MNMaskEdit1.Text;
//  YearS :=Copy(DateS,1,4);
//   Application.CreateForm(TfmBodjet,fmBodjet);
//   try
//    fmBodjet.ThisYear:=StrToInt(YearS);//a ThisDate div 10000;
//    fmBodjet.taKOL.Active:=True;
//    fmBodjet.taMOIN.Active:=True;
//    fmBodjet.taHESAB.Active:=True;
//    PreKolQuDo;
//    KolQuDo;
//    MoinQuDo;
//    HesabQuDo;
//    BodjetQuDo;
//     fmBodjet.QuickRep1.Preview;
//    Finally
//    fmBodjet.taKOL.Active:=False;
//    fmBodjet.taMOIN.Active:=False;
//    fmBodjet.taHESAB.Active:=False;
//     fmBodjet.QuickRep1.QRPrinter:=nil;
//     fmBodjet.QueryBodjet.Close;
//     fmBodjet.Release;
//    end;
// end;
// Finally
//  fmPreRep.Release;
//  end;
end;

procedure TfmMain.Action74Execute(Sender: TObject);
begin
//  Application.CreateForm(TfmNewBodjet, fmNewBodjet);
// try
//  fmNewBodjet.ShowModal;
// Finally
//  fmNewBodjet.Free;
// end;
end;

procedure TfmMain.Action77Execute(Sender: TObject);
var
DateS,YearS:String;
begin
//Application.CreateForm(TfmPreRep,fmPreRep);
//Saham:=121900000;
//{with fmDateGet do begin
//fmDateGet.Caption :='';
//fmDateGet.Height :=149;
//fmDateGet.Width :=339;
//BitBtnOk.Top :=65;
//BitBtnCancel.Top :=65;
//
//CBxFltrKol.Visible :=False;
//Label3.Visible :=False;
//Label4.Visible :=False;
//LblAz.Visible :=False;
//LblTa.Visible :=False;
//DBEKol_Code.Visible :=False;
//DBEKol_Code1.Visible :=False;
//FDAz.Visible :=False;
//FDTa.Visible :=False;
//SpeedBtnHlpSf1.Visible :=False;
//SpeedBtnHlpSf2.Visible :=False;
//Label6.Visible :=False;
//Label5.Visible :=False;
//CBxGbBastan.Visible :=False;
//DBEKol_Des.Visible :=False;
//DBEKol_Des1.Visible :=False;
//RadioGroup1.Visible :=False;
//end;}
//
// try
//  DateS:=dmMastData.StrDate;//PdateToStr(Date);
//  YearS :=Copy(DateS,1,4);
////  if Pos('/',DateS)=5 then
//  // DateS:=Copy(DateS,9,2)+'/'+Copy(DateS,6,2)+'/'+Copy(DateS,1,4);
//  fmPreRep.MNMaskEdit1.Visible:=True;
////a  fmDateGet.Label1.Visible:=True;
////  DateS:=Copy(DateS,9,2);
//  fmPreRep.MNMaskEdit1.Text:=IntToStr(StrToInt(YearS)+1)+'0101';
//  fmPreRep.MNMaskEdit2.Visible:=False;
//  fmPreRep.Label2.Visible:=False;
//  if fmPreRep.ShowModal=mrOk then begin
////   ThisDate:=StrToInt(Copy(fmDateGet.MaskEdit1.Text,1,2)+Copy(fmDateGet.MaskEdit1.Text,4,2)+Copy(fmDateGet.MaskEdit1.Text,7,2));
//  ThisDate:=fmPreRep.MNMaskEdit1.Text;
//  YearS :=Copy(fmPreRep.MNMaskEdit1.Text,1,4);
//   Application.CreateForm(TfmPreBodjet,fmPreBodjet);
//   try
//    fmPreBodjet.ThisYear:=StrToInt(YearS);//a ThisDate div 10000;
//    PrePreKolQuDo;
//    PKolQuDo;
//    PreMoinQuDo;
//    PreBodjetQuDo;
//    PreTitleDo;
//    fmPreBodjet.QuickRep1.Preview;
////    fmPreBodjet.frxReport1.ShowReport(True);
//    Finally
//     fmPreBodjet.QuickRep1.QRPrinter:=nil;
//     fmPreBodjet.QueryBodjet.Close;
//     fmPreBodjet.Release;
//    end;
// end;
// Finally
//  fmPreRep.Release;
//  end;
end;

procedure TfmMain.Action69Execute(Sender: TObject);
begin
//  Application.CreateForm(TfmTotalReport, fmTotalReport);
// try
//  fmTotalReport.MNShDate1.Text:=MakeDate(Copy(IntToStr(dmMAstData.IntDate),1,4)+'0101');
//  fmTotalReport.MNShDate2.Text:=MakeDate(IntToStr(dmMastData.IntDate));
//  fmTotalReport.ShowModal;
// Finally
//  fmTotalReport.Free;
// end;
end;

procedure TfmMain.Action18Execute(Sender: TObject);
begin
// with dmMastData.Query2 do begin
//
//  Sql.Clear;
//  Sql.Add('Insert Into HesabAct Select * From Hesab Where Hesab_No Not In(Select Hesab_No From HesabAct)');
//  ExecSql;
//
//  Sql.Clear;
//  Sql.Add('Update HesabAct Set Last_Mandeh=(Select Sum(Sanad_Qty*Sanad_Type) From Sanad Where HesabAct.Hesab_No=Sanad.Hesab_No )');
//  Sql.Add(' Where IsNull(Last_Mandeh,0)<>(Select Sum(Sanad_Qty*Sanad_Type) From Sanad Where HesabAct.Hesab_No=Sanad.Hesab_No )');
//  ExecSql;
//
//  Sql.Clear;
//  Sql.Add('Update HesabAct Set Eftetah=(Select Min(Reg_Date) From Sanad Where HesabAct.Hesab_No=Sanad.Hesab_No )');
//  Sql.Add(' Where IsNull(Eftetah,0)<>(Select Min(Reg_Date) From Sanad Where HesabAct.Hesab_No=Sanad.Hesab_No )');
//  ExecSql;
//
//  Sql.Clear;
//  Sql.Add('Update Hesab Set Customer_Id=(Select Customer_Id From HesabAct ha Where Hesab.Hesab_No=ha.Hesab_No )');
//  ExecSql;
//
//  dmMastData.PreMessage(fmMain,'Hide','Å«Ì«‰ »«“”«“Ì');
//  dmMastData.Assistant1.MessageDlg('',mtInformation,[mbOk],0);
//  dmMastData.Assistant1.Visible:=False;
// end;
end;

procedure TfmMain.sSpeedButton4Click(Sender: TObject);
begin
 Close;
end;

procedure TfmMain.Action19Execute(Sender: TObject);
var NewYear,EndDate,ThisYear,SanadNo,OldSanadNo,OldRegDate:String;
begin
// Application.CreateForm(TfmInput,fmInput) ;
// try
//  fmInput.MNNumEdit1.Visible:=True;
//  fmInput.MNNumEdit1.Text:=IntToStr(StrToInt(Copy(dmMastData.StrDate,1,4))+1);
//  fmInput.MNEdit1.Visible:=False;
//  fmInput.Label1.Caption:='”«· ÃœÌœ';
//  if (fmInput.ShowModal=MrOk) then begin//and(dmMastData.EndKolCheck('9'))and(dmMastData.EndKolCheck('10')) then begin
//   NewYear:=fmInput.MNNumEdit1.Text;
//   ThisYear:=IntToStr(StrToInt(NewYear)-1);
//   if IsKabiceh(ThisYear) then
//    EndDate:=ThisYear+'1230' else
//    EndDate:=ThisYear+'1229' ;
//   with dmMastData.Query1 do begin
//    if dmMastData.CopiedControl(EndDate) then begin
//     Sql.Clear;
//     Sql.Add(' Select * From SanadHead Where (YearOf='+ThisYear+' And Copied=3) Or (YearOf='+NewYear+' And Copied=2) ');
//     Open;
//     if RecordCount>0 then
//      while not eof do begin
//       SanadNo:=IntToStr(FieldByName('SanadNo').AsInteger);
//       OldSanadNo:=IntToStr(FieldByName('SanadNo').AsInteger);
//       OldRegDate:=IntToStr(FieldByName('Reg_Date').AsInteger);
//       with dmMastData.Query2 do begin
//        Sql.Clear;
//        Sql.Add(' Delete From MoinSum Where Reg_Date='+OldRegDate);
//        Sql.Add(' Delete From Sanad Where Reg_Date='+OldRegDate+' And SanadNo='+OldSanadNo);
//        Sql.Add(' Delete From SanadAct Where Reg_Date='+OldRegDate+' And SanadNo='+OldSanadNo);
//        Sql.Add(' Delete From SanadHead Where Reg_Date='+OldRegDate+' And SanadNo='+OldSanadNo);
//        Sql.Add(' Delete From KolYears Where YearOf='+ThisYear);
//        Sql.Add(' Delete From MoinYears Where YearOf='+ThisYear);
//        ExecSql;
//       end;
//       Next;
//      end;
// //    showmessage(sql.Text);
//     Sql.Clear;
//     Sql.Add('Select Max(SanadNo)+1 SanadNo From SanadHead Where YearOf='+ThisYear);
//     Open;
//     dmMastData.SanadEndDo(EndDate,FieldByName('SanadNo').AsString);
//     dmMastData.PreMessage(fmMain,'Information','ÅÌ«„');
//     dmMastData.Assistant1.MessageDlg('»—‰«„Â »—«Ì ”«· ÃœÌœ ¬„«œÂ ‘œ',mtInformation,[mbOk],0);
//    end else begin
//     dmMastData.PreMessage(fmMain,'Decline','Œÿ«');
//     dmMastData.Assistant1.MessageDlg('·ÿ›« œﬁ  ‘Êœ.œ— »Ì‰ «”‰«œ ”‰œ „Êﬁ  ÊÃÊœ œ«—œ.',mterror,[mbok],0);
//    end;
//   end;
//  end;
// finally
//  dmMastData.Assistant1.Hide();
//  fmInput.Free;
// end;
// dmMastData.Assistant1.Hide();
end;

procedure TfmMain.Action28Execute(Sender: TObject);
begin
// Application.CreateForm(TfmProjects,fmProjects);
// try
//  fmProjects.ShowModal;
// Finally
//  fmProjects.Free;
// end;
end;

procedure TfmMain.Action29Execute(Sender: TObject);
begin
// dmMastData.OpenItem(dmMastData.taUsersOpenItemReminder.AsInteger,1);
end;

procedure TfmMain.Action34Execute(Sender: TObject);
begin
// Application.CreateForm(TfmChequePr,fmChequePr);
// try
//  fmChequePr.ShowModal;
// Finally
//  fmChequePr.Free;
// end;
end;


procedure TfmMain.sSpeedButton5Click(Sender: TObject);
var sDir,s:String;
begin
  if sSkinProvider1.AddedTitle.Text = '' then begin // If in the SkinEditor preview mode
    sDir := sSkinManager1.SkinDirectory;
    s := sSkinManager1.SkinName;
    if SelectSkin(s, sDir) then begin
//      SkinsDirectoryEdit.Text := sDir;
      sSkinManager1.SkinName := s;
      dmMastData.taUsers.Edit;
      dmMastData.taUsersSkinName.Value:=s;
      dmMastData.taUsers.Post;
    end;
  end
  else SelectSkin(sSkinManager1);
end;

procedure TfmMain.Action78Execute(Sender: TObject);
begin
 BookDo(1);
end;

procedure TfmMain.Action79Execute(Sender: TObject);
begin
 BookDo(2);
end;

procedure TfmMain.KolMoinYearsUpdateExecute(Sender: TObject);
var YearOf:String;
begin
// Application.CreateForm(TfmInput,fmInput) ;
// try
//  fmInput.MNNumEdit1.Visible:=True;
//  fmInput.MNNumEdit1.Text:=IntToStr(StrToInt(Copy(dmMastData.StrDate,1,4))+1);
//  fmInput.MNEdit1.Visible:=False;
//  fmInput.Label1.Caption:='”«· „Ê—œ ‰Ÿ—';
//  if (fmInput.ShowModal=MrOk) then begin
//   YearOf:=fmInput.MNNumEdit1.Text;
//   with dmMastData.Query1 do begin
//    Sql.Clear;
//    Sql.Add(' Select Count(*) Count From KolYears Where YearOf='+YearOf);
//    Open;
//    if FieldByName('Count').AsInteger>0 then begin
//     Sql.Clear;
//     Sql.Add(' Delete From Kol ');
//     Sql.Add(' Insert Into Kol Select Kol,Des,Kind,Kol_Kind,OpenItem From KolYears Where YearOf='+YearOf);
//     ExecSql;
//    end;
//    Sql.Clear;
//    Sql.Add(' Select Count(*) Count From MoinYears Where YearOf='+YearOf);
//    Open;
//    if FieldByName('Count').AsInteger>0 then begin
//     Sql.Clear;
//     Sql.Add(' Delete From Moin ');
//     Sql.Add(' Insert Into Moin Select Kol,Moin,Des,SerialControl,MandehControl,SignPath From MoinYears Where YearOf='+YearOf);
//     ExecSql;
//    end;
//   end;
//  end;
// finally
//  fmInput.Free;
// end;
end;

procedure TfmMain.FormCreate(Sender: TObject);
var fs:TFormatSettings;
begin
 fs:=TFormatSettings.Create();
 if fs.ShortDateFormat<>'yyyy/MM/dd' then
  fs.ShortDateFormat:='yyyy/MM/dd';
 dmMastData.CompactAndRepair('MNdb.mdb');
end;

procedure TfmMain.ReminderExecute(Sender: TObject);
begin
// Application.CreateForm(TfmReminder,fmReminder);
// try
//  fmReminder.ShowModal;
// Finally
//  fmReminder.Free;
// end;
end;

procedure TfmMain.CashExecute(Sender: TObject);
begin
// Application.CreateForm(TfmCash,fmCash);
// try
//  fmCash.taCash.Open;
//  fmCash.taCashes.Open;
//  fmCash.CreateTableDo;
//  fmCash.MNShDate1.Text:=dmMastData.StrDate;
//  fmCash.MNShDate2.Text:=dmMastData.StrDate;
//  fmCash.MNShDate3.Text:=dmMastData.StrDate;
//  fmCash.MNShDate4.Text:=dmMastData.StrDate;
//  fmCash.ShowModal;
// Finally
//  fmCash.Free;
// end;
end;

procedure TfmMain.AmvalExecute(Sender: TObject);
begin
// Application.CreateForm(TfmAmval,fmAmval);
// try
//  fmAmval.taAmvalBranch.Open;
//  fmAmval.ShowModal;
// Finally
//  fmAmval.Free;
// end;
end;

procedure TfmMain.CubeHesabMoinExecute(Sender: TObject);
var Memo1,Memo34,Memo39,Memo104:TfrxMemoView;
begin
// Application.CreateForm(TfmInput,fmInput) ;
// try
//  fmInput.MNShDate1.Visible:=True;
//  fmInput.MNShDate1.Text:=dmMastData.StrDate;
//  fmInput.Label1.Caption:=' «—ÌŒ';
//  fmInput.MNNumEdit2.Visible:=True;
//  fmInput.Label2.Visible:=True;
//  fmInput.Label2.Caption:='òœ ò·';
//  fmInput.MNNumEdit3.Visible:=True;
//  fmInput.Label3.Visible:=True;
//  fmInput.Label3.Caption:='«“ „⁄Ì‰';
//  fmInput.MNNumEdit4.Visible:=True;
//  fmInput.Label4.Visible:=True;
//  fmInput.Label4.Caption:=' « „⁄Ì‰';
//  if (fmInput.ShowModal=MrOk) then begin
//   Application.CreateForm(TfmReport,fmReport) ;
//   try
//    Memo34:=fmReport.frxCube.FindObject('Memo34') as TfrxMemoView;
//    Memo34.Text:='ò«—»— : '+dmMastData.taUsersPerson_Id.AsString+'-'+dmMastData.taUsersFName.Value+' '+dmMastData.taUsersLName.Value;
//    Memo39:=fmReport.frxCube.FindObject('Memo39') as TfrxMemoView;
//    Memo39.Text:='”Ì«ÂÂ „«‰œÂ Õ”«» Â« «“ òœ ò· '+fmInput.MNNumEdit2.Text+' «“ „⁄Ì‰ '+fmInput.MNNumEdit3.Text+' «·Ì '+fmInput.MNNumEdit4.Text+'  «—ÌŒ '+fmInput.MNShDate1.Text;
//    Memo104:=fmReport.frxCube.FindObject('Memo104') as TfrxMemoView;
//    Memo104.Text:='';//' «—ÌŒ  ÂÌÂ : '+dmMastData.StrDate;
//    Memo1:=fmReport.frxCube.FindObject('Memo1') as TfrxMemoView;
//    fmReport.QuCube.Parameters.ParamByName('Reg_Date').Value:=StrToInt(RefineDate(fmInput.MNShDate1.Text));
//    fmReport.QuCube.Parameters.ParamByName('Kol').Value:=StrToInt(fmInput.MNNumEdit2.Text);
//    fmReport.QuCube.Parameters.ParamByName('Moin1').Value:=StrToInt(fmInput.MNNumEdit3.Text);
//    fmReport.QuCube.Parameters.ParamByName('Moin2').Value:=StrToInt(fmInput.MNNumEdit4.Text);
//    fmReport.QuCube.Open;
//    with dmMastData.Query1 do begin
//     Sql.Clear;
//     Sql.Add(' select Count(Distinct Hesab) Count from Sanad ');
//     Sql.Add(' Where Reg_Date<='+RefineDate(fmInput.MNShDate1.Text)+' And Kol='+fmInput.MNNumEdit2.Text+' And Moin Between '+fmInput.MNNumEdit3.Text+' And '+fmInput.MNNumEdit4.Text);
//     Open;
//     Memo1.Text:=' ⁄œ«œ : '+FieldByName('Count').AsString;
//    end;
//    fmReport.frxCube.ShowReport();
//   finally
//    fmReport.Free;
//   end;
//  end;
//  finally
//   fmInput.Free;
//  end;
end;

procedure TfmMain.NewKolExecute(Sender: TObject);
begin
// Application.CreateForm(TfmKolSum,fmKolSum);
// try
//  fmKolSum.MNShDate1.Text:=MakeDate(Copy(IntToStr(dmMAstData.IntDate),1,4)+'0101');
//  fmKolSum.MNShDate2.Text:=MakeDate(IntToStr(dmMastData.IntDate));
//  fmKolSum.ShowModal;
// Finally
//  fmKolSum.Free;
// end;
end;

end.
