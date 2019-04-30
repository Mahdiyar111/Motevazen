unit MastDataU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, IdBaseComponent, IdComponent, IdIPWatch,
  Sockets, ADODB, DB,MNTEdit ,
  ImgList, acAlphaImageList, frxClass, frxDBSet, frxExportHTML,
  frxExportImage, frxExportXLS, StrUtils, ComObj, Dialogs, sDialogs,
  DBClient, frxExportPDF, frxExportBaseDialog, System.ImageList,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client  ;

type
  TdmMastData = class(TDataModule)
    ADOConnection1: TADOConnection;
    taUsers: TADOTable;
    taUsersUserName: TStringField;
    taUsersPassWord: TStringField;
    taUsersPerson_Id: TIntegerField;
    taUsersFName: TStringField;
    taUsersLName: TStringField;
    taUsersLock: TBooleanField;
    taUsersNum_Date: TIntegerField;
    taUsersNum: TIntegerField;
    taMaster: TADOTable;
    taMasterName: TStringField;
    taMasterTel: TStringField;
    taMasterEmail: TStringField;
    taMasterAddress: TStringField;
    Query1: TADOQuery;
    IdIPWatch1: TIdIPWatch;
    taUsersIP: TStringField;
    MNdb: TADOConnection;
    MNQuery1: TADOQuery;
    Query2: TADOQuery;
    sAlphaImageList2: TsAlphaImageList;
    frxDBMaster: TfrxDBDataset;
    ADOConnection2: TADOConnection;
    SQuery1: TADOQuery;
    SQuery2: TADOQuery;
    ADOConnection3: TADOConnection;
    taUsersOpenItemReminder: TSmallintField;
    taUsersSkinName: TStringField;
    frxJPEGExport1: TfrxJPEGExport;
    frxHTMLExport1: TfrxHTMLExport;
    taMasterBranch_Code: TIntegerField;
    taMasterBranch: TStringField;
    taBranches: TADOTable;
    taBranchesBranch_Code: TIntegerField;
    taBranchesBranch_Name: TStringField;
    taBranchesTel: TStringField;
    taBranchesAddress: TStringField;
    taBranchesEMail: TStringField;
    taBranchesIP: TStringField;
    taBranchesDBName: TStringField;
    sOpenDialog1: TsOpenDialog;
    ClientDataSet1: TClientDataSet;
    frxPDFExport1: TfrxPDFExport;
    sCharImageList1: TsCharImageList;
    FDConnection1: TFDConnection;
    procedure ADOConnection1AfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    KolBeg,KolEnd:String;
    StrDate:String[10];
    IntDate:Integer;
    Per_Code:Integer;
    function FindSUMNumFieldsTbName(Qu:TADOQuery; TbName, FieldName,WhereS:String):Real;
    Procedure HesabPieces(var Kol,Moin,Hesab:String;Hesab_no:String);
    Procedure GeneralHesabDo(Hesab_No:String);
    Function HesabFind(Hesab_No:String):String;
    Function KolFind(Kol:String):String;
    Function MoinFind(Kol,Moin:String):String;
    Function DateFormat(Date:String):String;
    Function DateReFormat(Date:String):String;
    Function GetNumerator(Reg_Date,SanadNo:String):Integer;
    Procedure AveCDS;
    Function AveCalc(Hesab_No:String;FDate,TDate,SanadType,CDS:Integer):Real;
    Function AveMoinCalc(Kol,FMoin,LMoin,FDate,TDate:String):Real;
    Function InterestCalc(Qty,Rate:Real;PayDistance,DistanceType,PayTimes:Integer;Loan_Date,First_Step:String):Real;
    Function RateCalc(Qty,Interest:Real;PayTimes:Integer):Real;
    Procedure MakeGhest(Qty,Rate:Real;PayTimes,LoanDate,FirstStep,InterestPay:Integer);
    Procedure AghsatRepare(Loan_No:String);
    Function GetDate:Integer;
    Function GetTime:String;
    Function TimeToSecond(Time:String):Integer;
    Function SecondToTime(Second:Integer):String;
    Procedure PreMessage(DockSite:TForm;Play,Title:String);
    Procedure ChequeVReg(Reg_Date,SanadNo:String);
    Procedure MoinSumDo(Reg_Date:String);
    Procedure SanadClose(Reg_Date,SanadNo,Copied:String);
    Function CopiedControl(Reg_Date:String):Boolean;
    Procedure SanadShift(YearOf,SanadNo,ShiftCount:String);
    Function EndKolCheck(KolKind:String):Boolean;
    Procedure SanadReg(RegDate,SanadNo:String;Control:Integer);//⁄«œÌ=0 Å«Ì«‰ ”«·=1 Õ”«»Â«Ì „Êﬁ =2
    Procedure InsertSanad(RegDate,SanadNo:String);
    Procedure SanadEndDo(RegDate,SanadNo:String);
    Function BalanceOK(Reg_Date,SanadNo:String):Real;
    Function AdadToHarf(number:int64):string;
    Function CompactAndRepair(DB: string): Boolean; {DB = Path to Access Database}
    Function YearEndDate(YearOf:String):String;
    Procedure OpenItem(Days,Show:Integer);
  end;

var
  dmMastData: TdmMastData;

implementation

uses PassU;

{$R *.dfm}

function TdmMastData.FindSUMNumFieldsTbName(Qu:TADOQuery; TbName, FieldName,WhereS:String):Real;
var Ans:Real;
begin
  Ans :=0;
  Qu.Close;
  Qu.SQL.Clear;
  Qu.SQL.Add('SELECT SUM('+ FieldName +') SM FROM '+TbName);
  if Trim(WhereS) <> '' then
    Qu.SQL.Add('WHERE '+WhereS);
//  Qu.Prepare;
  Qu.Open;

  if not Qu.FieldByName('SM').IsNull then
    Ans :=Qu['SM'];

  Result := Ans;
end;

Procedure TdmMastData.HesabPieces(var Kol,Moin,Hesab:String;Hesab_no:String);
var Pos1,Pos2:Integer;
begin
 pos1:=Pos('/',Hesab_No);
 Pos2:=Pos('/',Copy(Hesab_No,Pos1+1,100));
 Kol:=Copy(Hesab_No,1,Pos1-1);
 Moin:=Copy(Hesab_No,Pos1+1,Pos2-1);
 Hesab:=Copy(Hesab_No,Pos1+Pos2+1,100);
end;

Procedure TdmMastData.GeneralHesabDo(Hesab_No:String);
var Kol,Moin,Hesab:String;
    Customer_Id:String;
begin
 HesabPieces(Kol,Moin,Hesab,Hesab_No);
 with dmMastData.Query1 do begin
  Sql.Clear;
  Sql.Add('Select * From GeneralHesab Where Hesab='+Hesab);
  Open;
  if RecordCount>0 then begin
   Customer_Id:=FieldByName('Customer_Id').AsString;
   Sql.Clear;
   Sql.Add('Select * From HesabAct Where Hesab_No='+QuotedStr(Hesab_No));
   Open;
   if RecordCount>0 then begin
    if FieldByName('Customer_Id').AsString<>Customer_Id then begin
     Edit;
     FieldByName('Customer_Id').Value:=StrToInt(Customer_Id);
     Post;
     Sql.Clear;
     Sql.Add('Update Hesab Set Customer_Id='+Customer_Id+' Where Hesab_No='+QuotedStr(Hesab_No));
     ExecSql;
    end;
   end else begin
    Sql.Clear;
    Sql.Add('Insert Into Hesab (Hesab_No,Kol,Moin,Hesab,LimMandeh,Customer_Id) ') ;
    Sql.Add('Values('+QuotedStr(Hesab_No)+','+Kol+','+Moin+','+Hesab+',0,'+Customer_Id+')');
    ExecSql
   end;
  end;
 end;
end;

Function TdmMastData.HesabFind(Hesab_No:String):String;
begin
// GeneralHesabDo(Hesab_No);
 with Query1 do begin
{
  Sql.Clear;
  Sql.Add('Insert Into HesabAct Select * From Hesab Where Hesab_No='+QuotedStr(Hesab_No)+' And Hesab_No Not In(Select Hesab_No From HesabAct)');
  ExecSql;
}
  Sql.Clear;
  Sql.Add('Select Hesab.*,IsNull(FName,'+QuotedStr('')+')+'+QuotedStr('  ')+'+IsNull(LName,'+QuotedStr('')+') as Name From Hesab Left Outer Join Customer ');
  Sql.Add('On Hesab.Customer_Id=Customer.Customer_Id   Where Hesab_No='+QuotedStr(Hesab_No));
  Open;
  if RecordCount>0 then
   Result:=Trim(FieldByName('Name').AsString) else
   Result:='False';
 end;
end;

Function TdmMastData.KolFind(Kol:String):String;
begin
 with Query1 do begin
  Sql.Clear;
  Sql.Add('Select * From Kol Where Kol='+Kol);
  Open;
  if RecordCount>0 then
   Result:=FieldByName('Des').AsString else
   Result:='False';
 end;
end;

Function TdmMastData.MoinFind(Kol,Moin:String):String;
begin
 with Query1 do begin
  Sql.Clear;
  Sql.Add('Select * From Moin Where Kol='+Kol+' And Moin='+Moin);
  Open;
  if RecordCount>0 then
   Result:=FieldByName('Des').AsString else
   Result:='False';
 end;
end;

Function TdmMastData.DateFormat(Date:String):String;
begin
 Result:=Copy(Date,1,4)+'/'+Copy(Date,5,2)+'/'+Copy(Date,7,2);
end;

Function TdmMastData.DateReFormat(Date:String):String;
begin
 Result:=Copy(Date,1,4)+Copy(Date,6,2)+Copy(Date,9,2);
end;

Function TdmMastData.GetNumerator(Reg_Date,SanadNo:String):Integer;
//var Num_Date,Person_Id:Integer;
begin
{ Person_Id:=taUsersPerson_Id.Value;
 try
  Num_Date:=taUsersNum_Date.Value;
 Except
  Num_Date:=13550801;
 end;
 with Query1 do begin
  Sql.Clear;
  Sql.Add('Select Max(Numerator) As Numerator From SanadAct Where Person_Id='+IntToStr(Person_Id));
  Open;
  if FieldByName('Numerator').AsInteger>0 then Result:=FieldByName('Numerator').AsInteger+1 else
   if IntDate/100=Num_Date/100 then Result:=taUsersNum.Value else
   Result:=taUsersPerson_Id.Value*10000+1;
 end;}
 with Query1 do begin
  Sql.Clear;
  Sql.Add('Select Max(Numerator) Numerator From SanadAct Where Reg_Date='+Reg_Date+' And SanadNo='+SanadNo );
  Open;
  Result:=FieldByName('Numerator').AsInteger+1 ;
 end;
end;

procedure TdmMastData.AveCDS;
begin
 with ClientDataSet1 do begin
  Close;
  FieldDefs.Clear;
  FieldDefs.Add('RegDate',ftInteger);
  FieldDefs.Add('BedBes',ftFloat);
  FieldDefs.Add('Mandeh',ftFloat);
  FieldDefs.Add('DayCount',ftInteger);
  CreateDataSet;
  Open;
  EmptyDataSet;
 end;
end;

Function TdmMastData.AveCalc(Hesab_No:String;FDate,TDate,SanadType,CDS:Integer):Real;
var Mandeh,Emtiaz:Real;
    LDate:Integer;
    SType:String;
begin
 Case SanadType of
  0 : SType:='';
  1 : SType:=' And Sanad_Type=1 ';
  2 : SType:=' And Sanad_Type=-1 ';
 end;
 if CDS=1 then
  AveCDS;
 with Query1 do begin
  Sql.Clear;
  Sql.Add(' Select Reg_Date='+IntToStr(FDate)+',Sum(Sanad_Qty*Sanad_Type) DayMandeh From Sanad Where Hesab_No='+QuotedStr(Hesab_No));
  Sql.Add(' And Reg_Date<='+IntToStr(FDate)+SType+' UNION ');
  Sql.Add(' Select Reg_Date,Sum(Sanad_Qty*Sanad_Type) DayMandeh From Sanad Where Hesab_No='+QuotedStr(Hesab_No));
  Sql.Add(' And Reg_Date>'+IntToStr(FDate)+' And Reg_Date<='+IntToStr(TDate)+SType+' Group By Reg_Date Order By Reg_Date ');
  Open;
  First;
  Mandeh:=0;
  Emtiaz:=0;
  LDate:=FDate;
  while not eof do begin
   Emtiaz:=Emtiaz+((Mandeh)*(ShamDifDay(FieldByName('Reg_Date').AsString,IntToStr(LDate))));
   Mandeh:=Mandeh+FieldByName('DayMandeh').AsFloat;
   LDate:=FieldByName('Reg_Date').Value;
   Next;
   if CDS=1 then
    if EOF then
     ClientDataSet1.AppendRecord([LDate,0,Mandeh,ShamDifDay(IntToStr(TDate),FieldByName('Reg_Date').AsString)+1]) else
     ClientDataSet1.AppendRecord([LDate,0,Mandeh,ShamDifDay(FieldByName('Reg_Date').AsString,IntToStr(LDate))]) ;

  end;
  Emtiaz:=Emtiaz+((Mandeh)*(ShamDifDay(IntToStr(TDate),FieldByName('Reg_Date').AsString)));

 end;
 AveCalc:=Emtiaz+Mandeh;
end;

Function TdmMastData.AveMoinCalc(Kol,FMoin,LMoin,FDate,TDate:String):Real;
var Mandeh,Emtiaz:Real;
    LDate:String;
begin
 with Query1 do begin
  Sql.Clear;
  Sql.Add(' Select Reg_Date='+FDate+',Sum(Mandeh) DayMandeh From MoinSum Where Kol='+Kol);
  Sql.Add(' And Moin Between '+FMoin+' And '+LMoin);
  Sql.Add(' And Reg_Date<='+FDate+' And Reg_Date>='+Copy(FDate,1,4)+'0101 UNION ');
  Sql.Add(' Select Reg_Date,Sum(Mandeh) DayMandeh From MoinSum Where Kol='+Kol+' And Moin Between '+FMoin+' And '+LMoin);
  Sql.Add(' And Reg_Date>'+FDate+' And Reg_Date<='+TDate+' Group By Reg_Date Order By Reg_Date ');
  Open;
  First;
  Mandeh:=0;
  Emtiaz:=0;
  LDate:=FDate;
  while not eof do begin
   Emtiaz:=Emtiaz+((Mandeh)*(ShamDifDay(FieldByName('Reg_Date').AsString,LDate)));
   Mandeh:=Mandeh+FieldByName('DayMandeh').AsFloat;
   LDate:=FieldByName('Reg_Date').Value;
   Next;
  end;
  Emtiaz:=Emtiaz+((Mandeh)*(ShamDifDay(TDate,FieldByName('Reg_Date').AsString)));
 end;
 AveMoinCalc:=Emtiaz+Mandeh;
end;

Function TdmMastData.InterestCalc(Qty,Rate:Real;PayDistance,DistanceType,PayTimes:Integer;Loan_Date,First_Step:String):Real;
var Ghest,Mandeh,Inter:Real;
    I,SarRasid,LastDate,Days:Integer;
begin
 Inter:=0;
 Mandeh:=Qty;
 Ghest:=Round((Qty/PayTimes)/1000)*1000;
 LastDate:=StrToInt(Loan_Date);
 SarRasid:=StrToInt(First_Step);
 if DistanceType=1 then begin
  for I:=1 to PayTimes do begin
   if I=PayTimes then Ghest:=Mandeh;
   Days:=ShamDifDay(IntToStr(SarRasid),IntToStr(LastDate));
   Inter:=Inter+(Mandeh*0.00002777777778*(Rate)*Days);
   Inter:=Round(Inter/1000)*1000;
   Mandeh:=Mandeh-Ghest;
   LastDate:=SarRasid;
//   SarRasid:=AddMonth2Date(First_Step,inttostr(I));
  end;
 end else
  Inter:=Round((((Qty*Rate)/365)/100)*PayDistance);
 InterestCalc:=Inter;
end;

Function TdmMastData.RateCalc(Qty,Interest:Real;PayTimes:Integer):Real;
var Ghest,Mandeh,Inter:Real;
    I:Integer;
begin
{ Inter:=0;
 Mandeh:=Qty;
 Ghest:=Qty/PayTimes;
 for I:=1 to PayTimes do begin
  Inter:=Inter+(Mandeh*0.00002777777778*(Rate)*30);
  Inter:=Round(Inter/1000)*1000;
  Mandeh:=Mandeh-Ghest;
 end;
 InterestCalc:=Inter;}
end;

Procedure TdmMAstData.MakeGhest(Qty,Rate:Real;PayTimes,LoanDate,FirstStep,InterestPay:Integer);
var I,SarRasid,LastDate:Integer;
    Ghest,Mandeh,Interest,InterGhest,InterMandeh:Real;
begin
 if MNdb.Connected=False then MNdb.Connected:=True;
 with MNQuery1 do begin
  Sql.Clear;
  Sql.Add('Drop Table Aghsat ');
  Try
   ExecSql;
  Except
  end;
  Sql.Clear;
  Sql.Add('CREATE TABLE Aghsat (Ghest_No Number,Ghest_Qty Number,SarRasid_Date Number,SarRasid_Year Number,Mandeh Number,Interest Number)');
  ExecSql;
  Ghest:=Round((Qty/PayTimes)/1000)*1000;
  SarRasid:=FirstStep;
  LastDate:=LoanDate;
  Mandeh:=Qty;
  InterMandeh:=Qty+InterestCalc(Qty,Rate,0,1,PayTimes,IntToStr(LoanDate),IntToStr(FirstStep));
  InterGhest:=Round((InterMandeh/PayTimes)/1000)*1000;
  for I:=1 to PayTimes do begin
   if I=PayTimes then begin
    Ghest:=Mandeh;
    InterGhest:=InterMandeh;
   end;
   Interest:=Round((Mandeh*Rate*(ShamDifDay(IntToStr(SarRasid),IntToStr(LastDate)))*0.00002777777778)/1000)*1000 ;
   Sql.Clear;
   if InterestPay=1 then Sql.Add('Insert Into Aghsat Values ('+IntToStr(I)+','+FloatToStr(InterGhest)+','+IntToStr(SarRasid)+','+IntToStr(SarRasid div 10000)+','+FloatToStr(InterMandeh)+','+FloatToStr(Interest)+')') else
    Sql.Add('Insert Into Aghsat Values ('+IntToStr(I)+','+FloatToStr(Ghest)+','+IntToStr(SarRasid)+','+IntToStr(SarRasid div 10000)+','+FloatToStr(Mandeh)+','+FloatToStr(Interest)+')');
   ExecSql;
   LastDate:=SarRasid;
//   SarRasid:=AddMoon(FirstStep,I);
   Mandeh:=Mandeh-Ghest;
   InterMandeh:=InterMandeh-InterGhest;
  end;
 end;
end;

Procedure TdmMastData.AghsatRepare(Loan_No:String);
begin
 with Query1 do begin
  Sql.Clear;
  Sql.Add('Select * From Loan Where Loan_No='+QuotedStr(Loan_No));
  Open;
  if RecordCount>0 then begin
   Sql.Clear;
   Sql.Add('Update Aghsat Set Reg_Date=(Select Reg_Date From Sanad Where Sanad.Hesab_No=Aghsat.Loan_No And Sanad.Serial=Aghsat.Ghest_No And Sanad_Type=-1 ');
   Sql.Add('UNION Select Reg_Date From SanadAct Where SanadAct.Hesab_No=Aghsat.Loan_No And SanadAct.Serial=Aghsat.Ghest_No And Sanad_Type=-1 And Deleted=0 ) ');
   Sql.Add('Where Loan_No='+QuotedStr(Loan_No));
   ExecSql;
   Sql.Clear;
   Sql.Add('Update Aghsat Set Reg_Date=0 Where Loan_No='+QuotedStr(Loan_No)+' And Reg_Date Is Null ');
   ExecSql;
  end;
 end;
end;

Function TdmMastData.GetDate:Integer;
begin
 with Query1 do begin
  Sql.Clear;
  Sql.Add('Select GETDATE() DDate ');
  Open;
  Result:=StrToInt(RefineDate(Milad2Sham2(FieldByName('DDate').Value)));
 end;
end;

Function TdmMastData.GetTime:String;
begin
 with Query1 do begin
  Sql.Clear;
  Sql.Add('Select GETDATE() DDate ');
  Open;
  Result:=Copy(FieldByName('DDate').AsString,12,20);
 end;
end;

Function TdmMastData.TimeToSecond(Time:String):Integer;
var H,M,S:Integer;
begin
 if (Copy(Time,10,3)='».Ÿ')and(StrToInt(Copy(Time,1,2))<12) then
  H:=StrToInt(Copy(Time,1,2))+12 else
 H:=StrToInt(Copy(Time,1,2));
 M:=StrToInt(Copy(Time,4,2));
 S:=StrToInt(Copy(Time,7,2));
 TimeToSecond:=(H*3600)+(M*60)+(S);
end;

Function TdmMastData.SecondToTime(Second:Integer):String;
var H,M,S:String;
begin
 H:=IntToStr(Second div 3600);
 if Length(H)=1 then H:='0'+H ;
 M:=IntToStr((Second mod 3600) div 60);
 if Length(M)=1 then M:='0'+M ;
 S:=IntToStr((Second mod 3600) mod 60);
 if Length(S)=1 then S:='0'+S ;
 SecondToTime:=H+':'+M+':'+S ;
end;

Procedure TdmMastData.PreMessage(DockSite:TForm;Play,Title:String);
begin
// Assistant1.DockSite:=DockSite;
// Assistant1.Visible:=True;
// Assistant1.Play(Play);
// Assistant1.MsgDlg.Title:=Title;
end;

Procedure TdmMastData.ChequeVReg(Reg_Date,SanadNo:String);
begin
 with Query2 do begin
  Sql.Clear;
//FReg_Date,FSanadNo,FNumerator   Hesab_No,Qty,Serial
  Sql.Add(' Update ChequeV Set FReg_Date=SanadAct.Reg_Date,FSanadNo=SanadNo,FNumerator=Numerator ');
  Sql.Add(' And ChequeV.Serial=SanadAct.Serial And ChequeV.Qty=Sanad_Qty And SanadAct.Reg_Date='+Reg_Date+' And SanadNo='+SanadNo);
  Sql.Add(' And Deleted=0 And Sanad_Type=-1  Where FReg_Date Is Null ');
  ExecSql;
 end;
end;

Procedure TdmMastData.MoinSumDo(Reg_Date:String);
begin
 with Query1 do begin
  Sql.Clear;
  Sql.Add(' Delete From MoinSum Where Reg_Date='+Reg_Date);

  Sql.Add(' Insert Into MoinSum Select Max(Reg_Date),Kol,Moin,Sum(Sanad_Qty*Sanad_Type),0,0,Count(Kol),0 ');
  Sql.Add(' From Sanad Where Deleted=0 ');
  Sql.Add(' And Reg_Date='+Reg_Date);
  Sql.Add(' Group By Kol,Moin ');

  Sql.Add(' Update MoinSum Set Bed=(Select Sum(Sanad_Qty) From Sanad Where Sanad_Type=1 And MoinSum.Kol=Sanad.Kol And MoinSum.Moin=Sanad.Moin And Deleted=0');
  Sql.Add(' And Sanad.Reg_Date='+Reg_Date+'),');
  Sql.Add(' Bes=(Select Sum(Sanad_Qty) From Sanad Where Sanad_Type=-1 And MoinSum.Kol=Sanad.Kol And MoinSum.Moin=Sanad.Moin And Deleted=0');
  Sql.Add(' And Sanad.Reg_Date='+Reg_Date+'),');
  Sql.Add(' Eftetah=(Select Count(Kol) From HesabAct Where Eftetah='+Reg_Date+' And MoinSum.Kol=HesabAct.Kol And MoinSum.Moin=HesabAct.Moin) ');
  Sql.Add(' Where Reg_Date='+Reg_Date);
  ExecSql;
 end;
end;

Procedure TdmMastData.SanadClose(Reg_Date,SanadNo,Copied:String);
begin
// ChequeVReg(Reg_Date,SanadNo);
 MoinSumDo(Reg_Date);
 with Query1 do begin
     Sql.Clear;
 //    Sql.Add(' Update SanadAct Set Reg_Date='+IntToStr(dmMastData.IntDate));

     Sql.Add(' Update HesabAct Set Eftetah=(Select Min(Reg_Date) From SanadAct Where ');
     Sql.Add('HesabAct.Hesab_No=SanadAct.Hesab_No And Deleted=0) Where Eftetah Is Null ');

//     Sql.Add(' Insert Into SanadDel Select * From SanadAct Where Deleted=1 ');

     Sql.Add(' Delete From Sanad ');
     Sql.Add(' Where Reg_Date='+Reg_Date+' And SanadNo='+SanadNo);

     Sql.Add(' Insert Into Sanad Select * From SanadAct Where Deleted=0 ');
     Sql.Add(' And Reg_Date='+Reg_Date+' And SanadNo='+SanadNo);

     Sql.Add(' Update SanadHead Set Copied='+Copied+' Where Reg_Date='+Reg_Date+' And SanadNo='+SanadNo);
 //    Sql.Add(' Delete SanadAct ');

//     Sql.Add(' Delete Hesab Where Hesab_No In(Select Hesab_No From HesabAct) ');
//     Sql.Add(' Insert Into Hesab Select *  From HesabAct ');
//     Sql.Add(' Delete HesabAct ');
     try
      ExecSql;
      MoinSumDo(Reg_Date);
     except
    //  ShowMessage('Error');
     end;

 end; //with
end;

Function TdmMastData.CopiedControl(Reg_Date:String):Boolean;
begin
 with dmMastData.Query2 do begin
  Sql.Clear;
  Sql.Add(' Select * From SanadHead Where Reg_Date<='+Reg_Date+' And Copied=0 ');
  Open;
  if RecordCount>0 then
   Result:=False else
   Result:=True;
 end;
end;

Procedure TdmMastData.SanadShift(YearOf,SanadNo,ShiftCount:String);
var BegDate,EndDate:String;
begin
 BegDate:=YearOf+'0101';
 EndDate:=YearOf+'1230';
 with Query1 do begin
  Sql.Clear;
  Sql.Add(' Update SanadHead Set SanadNo=SanadNo+'+ShiftCount+' Where YearOf='+YearOf+' And SanadNo>='+SanadNo);
  Sql.Add(' Update Sanad Set SanadNo=SanadNo+'+ShiftCount+' Where Reg_Date>='+BegDate+' And SanadNo>='+SanadNo+' And Reg_Date<='+EndDate);
  Sql.Add(' Update SanadAct Set SanadNo=SanadNo+'+ShiftCount+' Where Reg_Date>='+BegDate+' And SanadNo>='+SanadNo+' And Reg_Date<='+EndDate);
  ExecSql;
 end;
end;

Function TdmMastData.EndKolCheck(KolKind:String):Boolean;
var Kol:String;
begin
 Result:=False;
 with Query2 do begin
  Sql.Clear;
  Sql.Add(' Select * From Kol Where Kol_Kind='+KolKind);
  Open;
  if RecordCount<1 then
   Exit;
  Kol:=FieldByName('Kol').AsString;
  Sql.Clear;
  Sql.Add('Select * From "Moin" Where Kol='+Kol+' And Moin=0');
  Open;
  if RecordCount<1 then begin
   Sql.Clear;
   Sql.Add('Insert Into Moin (Kol,Moin) Values('+Kol+',0)');
   ExecSql;
  end;
  Sql.Clear;
  Sql.Add('Select * From Hesab Where Hesab_No='+QuotedStr(Kol+'/0/0'));
  Open;
  if RecordCount<1 then begin
   Sql.Clear;
   Sql.Add('Insert Into Hesab (Hesab_No,Kol,Moin,Hesab,Last_Mandeh) Values('+QuotedStr(Kol+'/0/0')+','+Kol+',0,0,0) ');
   Sql.Add('Insert Into HesabAct (Hesab_No,Kol,Moin,Hesab,Last_Mandeh) Values('+QuotedStr(Kol+'/0/0')+','+Kol+',0,0,0) ');
   ExecSql;
  end;
 end;
 if KolKind='9' then KolEnd:=Kol else if KolKind='10' then KolBeg:=Kol;
 Result:=True;
end;

procedure TdmMastData.SanadReg(RegDate,SanadNo:String;Control:Integer);
var SanadType,SanadQty,BedSum,BesSum:Real;
    PerSonId,ShobehCode,HesabNo,Kol,Moin,Hesab,Des,EndDate,NewDate,SNo1,SNo2:String;
begin
 PersonId:=taUsersPerson_Id.AsString;
 ShobehCode:=taMasterBranch_Code.AsString;
 BedSum:=0;
 BesSum:=0;
 EndDate:=RegDate;
 Case Control of
  1:Des:='”‰œ «Œ  «„ÌÂ' ;
  2:Des:='»«»  »” ‰ Õ”«» Â«Ì „Êﬁ ';
 end;
 NewDate:=IntToStr(StrToInt(Copy(RegDate,1,4))+1)+'0101';
 with Query1 do begin
  First;
  while not Eof do begin
   SanadQty:=FieldByName('Mandeh').AsFloat;
   if SanadQty>0 then begin
    SanadType:=-1;
    BesSum:=BesSum+SanadQty;
   end else begin
    SanadType:=1;
    SanadQty:=SanadQty*-1;
    BedSum:=BedSum+SanadQty;
   end;
   if Control in([1,2]) then begin
    if SanadType=1 then
     SNo1:=SanadNo else
     SNo1:=IntToStr(StrToInt(SanadNo)+1);
   end else
    SNo1:=SanadNo;
   HesabNo:=FieldByName('Hesab_No').AsString;
   Kol:=FieldByName('Kol').AsString;
   Moin:=FieldByName('Moin').AsString;
   Hesab:=FieldByName('Hesab').AsString;
   Query2.SQL.Clear;
   Query2.SQL.Add('Insert Into SanadAct (Shobeh_Code,Kol,Moin,Hesab,Hesab_No,Reg_Date,SanadNo,Des,Sanad_Qty,Sanad_Type,Naghdi_Enteghali,SarRasid,Numerator,Seri,Serial,Person_Id,Sanad_Time,Last_Mandeh,Deleted,To_Shobeh_Code) ');
   Query2.SQL.Add('Values('+ShobehCode+','+Kol+','+Moin+','+Hesab+','+QuotedStr(HesabNo)+','+RegDate+','+SNo1+','+QuotedStr(Des)+','+FloatToStr(SanadQty)+','+FloatToStr(SanadType)+',1,0,'+IntToStr(RecNo)+',Null,0,'+PersonId+',0,0,0,'+ShobehCode+')' );
   Query2.ExecSql;
   Next;
  end;
 end;
 if Control=1 then begin
   Des:='”‰œ «›  «ÕÌÂ';
   Query2.SQL.Clear;
   Query2.SQL.Add(' Insert Into SanadAct (Shobeh_Code,Kol,Moin,Hesab,Hesab_No,Reg_Date,SanadNo,Des,Sanad_Qty,Sanad_Type,Naghdi_Enteghali,SarRasid,Numerator,Seri,Serial,Person_Id,Sanad_Time,Last_Mandeh,Deleted,To_Shobeh_Code) ');
   Query2.SQL.Add(' Select Shobeh_Code,Kol,Moin,Hesab,Hesab_No,'+NewDate+',SanadNo-'+IntToStr(StrToInt(SanadNo)-1)+','+QuotedStr(Des)+',Sanad_Qty,Sanad_Type*-1,Naghdi_Enteghali,SarRasid,Numerator,Seri,Serial,Person_Id,Sanad_Time,Sanad_Qty*Sanad_Type*-1,Deleted,To_Shobeh_Code From SanadAct Where Reg_Date='+RegDate+' And SanadNo in('+SanadNo+','+IntToStr(StrToInt(SanadNo)+1)+')');
   Query2.ExecSQL;
   with Query1 do begin//”‰œ Å«Ì«‰ ”«·
    Sql.Clear;
    Sql.Add(' Select H.Kol,Moin,Hesab,Hesab_No,Kol_Kind From Hesab H Left Outer Join Kol K On H.Kol=K.Kol Where K.Kol_Kind In(9,10) ');
    Open;
    Query2.SQL.Clear;
    Query2.SQL.Add(' Insert Into SanadAct (Shobeh_Code,Kol,Moin,Hesab,Hesab_No,Reg_Date,SanadNo,Des,Sanad_Qty,Sanad_Type,Naghdi_Enteghali,SarRasid,Numerator,Seri,Serial,Person_Id,Sanad_Time,Last_Mandeh,Deleted,To_Shobeh_Code) ');
    while not eof do begin
     if FieldByName('Kol_Kind').Value=9 then begin
      Des:='”‰œ «Œ  «„ÌÂ' ;
     end else begin
      Des:='”‰œ «›  «ÕÌÂ';
     end;
     Kol:=FieldByName('Kol').AsString;
     Moin:=FieldByName('Moin').AsString;
     Hesab:=FieldByName('Hesab').AsString;
     HesabNo:=FieldByName('Hesab_No').AsString;
     SNo1:=SanadNo;
     SanadType:=-1;
     if RecNo=2 then begin
      Query2.SQL.Add(' Union ');
      SNo1:='1';
      RegDate:=NewDate;
      SanadType:=1;
     end;
     Query2.SQL.Add(' Select '+ShobehCode+','+Kol+','+Moin+','+Hesab+','+QuotedStr(HesabNo)+','+RegDate+','+SNo1+','+QuotedStr(Des)+','+FloatToStr(BesSum)+','+FloatToStr(SanadType)+',1,0,0,Null,0,'+PersonId+',0,0,0,'+ShobehCode );
     Query2.SQL.Add(' Union ');
     Query2.SQL.Add(' Select '+ShobehCode+','+Kol+','+Moin+','+Hesab+','+QuotedStr(HesabNo)+','+RegDate+','+IntToStr(StrToInt(SNo1)+1)+','+QuotedStr(Des)+','+FloatToStr(BedSum)+','+FloatToStr(SanadType*-1)+',1,0,0,Null,0,'+PersonId+',0,0,0,'+ShobehCode );
     next;
    end;
    Query2.ExecSQL;
   end;
   SanadClose(EndDate,SanadNo,'3');
   SanadClose(NewDate,'1','2');
   SanadClose(EndDate,IntToStr(StrToInt(SanadNo)+1),'3');
   SanadClose(NewDate,'2','2');
 end;
end;

Procedure TdmMastData.InsertSanad(RegDate,SanadNo:String);
var YearOf:String;
begin
 YearOf:=Copy(RegDate,1,4);
 SanadShift(YearOf,SanadNo,'1');
 with Query1 do begin
  Sql.Clear;
  Sql.Add(' Insert Into SanadHead (YearOf,SanadNo,Reg_Date,Copied) ');
  Sql.Add(' Values('+YearOf+','+SanadNo+','+RegDate+',0) ');
  ExecSql;
 end;
end;

Procedure TdmMastData.SanadEndDo(RegDate,SanadNo:String);
var NewDate:String;
begin
 NewDate:=IntToStr(StrToInt(Copy(RegDate,1,4))+1)+'0101';
 with Query1 do begin
  Sql.Clear;
  Sql.Add(' Insert Into SanadHead (YearOf,SanadNo,Reg_Date,Copied) ');
  Sql.Add(' Values('+Copy(RegDate,1,4)+','+SanadNo+','+RegDate+',3) ');
  Sql.Add(' Insert Into SanadHead (YearOf,SanadNo,Reg_Date,Copied) ');
  Sql.Add(' Values('+Copy(NewDate,1,4)+',1,'+NewDate+',2) ');
  Sql.Add(' Insert Into SanadHead (YearOf,SanadNo,Reg_Date,Copied) ');
  Sql.Add(' Values('+Copy(RegDate,1,4)+','+IntToStr(StrToInt(SanadNo)+1)+','+RegDate+',3) ');
  Sql.Add(' Insert Into SanadHead (YearOf,SanadNo,Reg_Date,Copied) ');
  Sql.Add(' Values('+Copy(NewDate,1,4)+',2,'+NewDate+',2) ');
  Sql.Add(' Insert Into KolYears Select YearOf='+Copy(NewDate,1,4)+',* From Kol ');
  Sql.Add(' Insert Into MoinYears Select YearOf='+Copy(NewDate,1,4)+',* From Moin ');  
  ExecSql;
  Sql.Clear;
  Sql.Add(' Select Hesab_No,Kol,Moin,Hesab,Sum(Sanad_Qty*Sanad_Type) Mandeh From Sanad where Reg_Date<='+RegDate);
  Sql.Add(' group by Hesab_No,Kol,Moin,Hesab Having Sum(Sanad_Qty*Sanad_Type)<>0 Order By Sum(Sanad_Qty*Sanad_Type) ');
  Open;
 end;
 SanadReg(RegDate,SanadNo,1);
end;

Function TdmMastData.BalanceOK(Reg_Date,SanadNo:String):Real;
begin
 with Query1 do begin
  Sql.Clear;
  Sql.Add('Select Sum(sanad_Qty*Sanad_Type) Mandeh From SanadAct Where Reg_Date='+Reg_Date+' And SanadNo='+SanadNo);
  Open;
  Result:=FieldByName('Mandeh').AsFloat;
 end;
end;

function three(number:int64):string;
var
    s:string;
    i,l:longint;
    h:array[1..3]of byte;
    flag:boolean;
begin
    str(number,s);
    l:=length(s);
    s:='';
    if(number=0)then
         three:='';
    if(number=100)then
         three:='Ìﬂ’œ';
    if(l=2) then
       h[1]:=0;
    if(l=1)then
    begin
      h[1]:=0;
      h[2]:=0;
      h[3]:=number;
    end;
        h[3]:=number mod 10;
        number:=number div 10;
        h[2]:=number mod 10;
        h[1]:=number div 10;

    case h[1] of
              1:
                 s:=' Ìﬂ’œ ';
              2:
                 s:=' œÊÌ”  ';
              3:
                 s:=' ”Ì’œ ';
              4:
                 s:=' çÂ«—’œ ';
              5:
                 s:=' Å«‰’œ ';
              6:
                 s:=' ‘‘’œ ';
              7:
                 s:=' Â› ’œ ';
              8:
                 s:=' Â‘ ’œ ';
              9:
                 s:=' ‰Â’œ ';
    end;
    case h[2] of
          1:
             case h[3] of
                0:
                   s:=s+'Ê'+' œÂ ';
                1:
                   s:=s+'Ê'+' Ì«“œÂ ';
                2:
                   s:=s+'Ê'+' œÊ«“œÂ ';
               3:
                   s:=s+'Ê'+' ”Ì“œÂ ';
                4:
                   s:=s+'Ê'+' çÂ«—œÂ ';
                5:
                   s:=s+'Ê'+' Å«‰“œÂ ';
                6:
                   s:=s+'Ê'+' ‘«‰“œÂ ';
                7:
                   s:=s+'Ê'+' Â›œÂ ';
                8:
                   s:=s+'Ê'+' ÂÃœÂ ';
                9:
                   s:=s+'Ê'+' ‰Ê“œÂ ';
             end;
               2:
                   s:=s+'Ê'+' »Ì”  ';
               3:
                   s:=s+'Ê'+' ”Ì ';
                4:
                   s:=s+'Ê'+' çÂ· ';
                5:
                   s:=s+'Ê'+' Å‰Ã«Â ';
                6:
                   s:=s+'Ê'+' ‘’  ';
                7:
                   s:=s+'Ê'+' Â› «œ ';
                8:
                   s:=s+'Ê'+' Â‘ «œ ';
                9:
                   s:=s+'Ê'+' ‰Êœ ';
           end;

    if h[2]<>1 then
         case h[3] of
             1:
                 s:=s+'Ê'+' Ìﬂ ';
              2:
                   s:=s+'Ê'+' œÊ ';
               3:
                   s:=s+'Ê'+' ”Â ';
                4:
                   s:=s+'Ê'+' çÂ«— ';
                5:
                   s:=s+'Ê'+' Å‰Ã ';
                6:
                   s:=s+'Ê'+' ‘‘ ';
                7:
                   s:=s+'Ê'+' Â›  ';
                8:
                   s:=s+'Ê'+' Â‘  ';
                9:
                   s:=s+'Ê'+' ‰Â ';
      end;
      three:=s;
end;

function TdmMastData.AdadToHarf(number:int64):string;
var
    flag:boolean;
    s,u:string;
    i,l,q,op:byte;
    k:array[1..5]of longint;
begin
op:=number;
 if (number=0)then
   AdadToHarf:='’›—';
   str(number,s);
   l:=length(s);
   if(l<=15)then
   begin

for i:=1 to 15-l do
    s:='0'+s;
for i:=1 to trunc((l/3)+0.99) do
begin
  u:=copy(s,3*(5-i)+1,3);
  delete(s,3*(5-i)+1,3);
  K[5 - I + 1] :=strtoint(u);
end;
if(l>2)then
   flag:=false
else
   flag:=true;
s:='';
for i:=1 to 5 do
   if(k[i]<>0)then
        case i of
                1:
                    s:=s+three(k[i])+'  —Ì·ÌÊ‰ ';
                2:
                    if (flag=false)then
                       s:=s+'Ê'+three(k[i])+' „Ì·Ì«—œ '
                    else
                    begin
                        s:=s+''+three(k[i])+' „Ì·Ì«—œ ';
                        flag:=true;
                    end;
                3:
                    if (flag=false)then
                       s:=s+'Ê'+three(k[i])+' „Ì·ÌÊ‰ '
                    else
                    begin
                      s:=s+''+three(k[i])+' „Ì·ÌÊ‰ ';
                      flag:=true;
                    end;
                4:
                      if (flag=false)then
                       s:=s+'Ê'+three(k[i])+' Â“«— '
                    else
                    begin
                        s:=s+''+three(k[i])+' Â“«— ';
                        flag:=true;
                    end;
                5:
                      if (flag=false)then
                         s:=s+'Ê'+three(k[i])
                      else
                         s:=s+three(k[i]);
                    else
                    begin
                      s:=s+''+three(k[i]);
                      flag:=true;
                    end;


        end;
        trimright(s);
        trimleft(s);
        l:=length(s);
        for i:=1 to 10 do
           if (s[i]<>'Ê')and(s[i]<>' ')then
              break
           else
               s[i]:=' ';
        for i:=1 to l do
           if s[i]='Ê'then
              if s[i]=s[i+1] then
                 s[i]:=' ';
   end
   else
   begin
       s:='................⁄œœ »”Ì«— »“—ê «” ';
   end;


        AdadToHarf:=s;
end;{function}

function TdmMastData.CompactAndRepair(DB: string): Boolean; {DB = Path to Access Database}
var
v: OLEvariant;
begin
 Result := True;
 try
  v := CreateOLEObject('JRO.JetEngine');
  try
   V.CompactDatabase('Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+DB,
   'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+DB+'x;Jet OLEDB:Engine Type=5');
   DeleteFile(DB);
   RenameFile(DB+'x',DB);
  finally
   V := Unassigned;
  end;
 except
  Result := False;
 end;
end;

Function TdmMastData.YearEndDate(YearOf:String):String;
begin
 with Query2 do begin
  Sql.Clear;
  Sql.Add('Select Max(Reg_Date) Reg_Date From SanadHead Where YearOf='+YearOf);
  Open;
  Result:=FieldByName('Reg_Date').AsString;
 end;
end;

Procedure TdmMastData.OpenItem(Days,Show:Integer);
var Reg_Date:String;
begin
// Reg_Date:=RefineDate(AddDayToDate(dmMastData.StrDate,Days));
// Application.CreateForm(TfmOpenItem,fmOpenItem);
// try
//  with fmOpenItem.QuOpenItem do begin
//   Sql.Clear;
//   Sql.Add('Select * From OpenItem Where SarRasid<='+Reg_Date+' And IsNull(Out_SanadNo,0)=0 Order By SarRasid  ');
//   Open;
//   if (RecordCount>0)or(Show=1) then begin
//    if Show=2 then
//     fmOpenItem.Sanad:=True;
//    fmOpenItem.ShowModal;
//   end;
//  end;
// Finally
//  fmOpenItem.Free;
// end;
end;

procedure TdmMastData.ADOConnection1AfterConnect(Sender: TObject);
begin
 taMaster.Open;
end;





end.
