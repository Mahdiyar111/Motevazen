unit CustomeU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, MNTEDIT, CseZForm, DB, ADODB,
  Buttons, Menus, Mask,
  DBCtrls, sDialogs,
  sLabel, sGroupBox, sBitBtn, sSkinProvider;

type
  TfmCustomer = class(TCseZForm)
    Query1: TADOQuery;
    QuSaham: TADOQuery;
    QuSahamSCode: TIntegerField;
    QuSahamCustomer_Id: TIntegerField;
    QuSahamSPercent: TFloatField;
    QuSahamSKind: TSmallintField;
    QuSahamFDate: TIntegerField;
    QuSahamTDate: TIntegerField;
    dsSaham: TDataSource;
    QuSahamPPicture: TBlobField;
    sGroupBox1: TsGroupBox;
    Label1: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    MNNumEdit12: TMNTEdit;
    MNNumEdit13: TMNTEdit;
    MNNumEdit14: TMNTEdit;
    sLabelFX1: TsLabelFX;
    sGroupBox2: TsGroupBox;
    Label21: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    MNEdit1: TMNTEdit;
    MNEdit2: TMNTEdit;
    MNEdit3: TMNTEdit;
    MNEdit4: TMNTEdit;
    MNNumEdit5: TMNTEdit;
    MNNumEdit7: TMNTEdit;
    MNNumEdit8: TMNTEdit;
    MNNumEdit9: TMNTEdit;
    MNEdit5: TMNTEdit;
    MNEdit6: TMNTEdit;
    MNMASKEdit1: TMNTEdit;
    MNShDate1: TMNTEdit;
    MNMASKEdit2: TMNTEdit;
    MNEdit7: TMNTEdit;
    MNNumEdit2: TMNTEdit;
    MNNumEdit3: TMNTEdit;
    MNEdit8: TMNTEdit;
    MNEdit9: TMNTEdit;
    MNEdit10: TMNTEdit;
    MNMASKEdit3: TMNTEdit;
    MNNumEdit4: TMNTEdit;
    MNNumEdit6: TMNTEdit;
    MNNumEdit10: TMNTEdit;
    MNNumEdit11: TMNTEdit;
    RadioGroup1: TRadioGroup;
    ComboBox1: TComboBox;
    sGroupBox3: TsGroupBox;
    BtnSave: TButton;
    BtnRep: TButton;
    BtnCancel: TButton;
    BtnSearch: TButton;
    BtnNew: TButton;
    BtnPic: TButton;
    MNNumEdit1: TMNTEdit;
    Label22: TLabel;
    Label31: TLabel;
    MNEdit11: TMNTEdit;
    Button1: TButton;
    sBitBtn1: TsBitBtn;
    sSkinProvider1: TsSkinProvider;
    procedure MNMASKEdit1Exit(Sender: TObject);
    procedure QuSahamAfterScroll(DataSet: TDataSet);
    procedure suitempBtnSaveClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure suitempBtnCancelClick(Sender: TObject);
    procedure suitempBtnSearchClick(Sender: TObject);
    procedure suitempBtnNewClick(Sender: TObject);
    procedure MNNumEdit12Exit(Sender: TObject);
    procedure MNNumEdit12Enter(Sender: TObject);
    procedure MNNumEdit13Exit(Sender: TObject);
    procedure MNNumEdit13Enter(Sender: TObject);
    procedure MNNumEdit14Enter(Sender: TObject);
    procedure MNNumEdit14Exit(Sender: TObject);
    procedure BtnRepClick(Sender: TObject);
    procedure MNEdit7Exit(Sender: TObject);
    procedure MNNumEdit1Exit(Sender: TObject);
    procedure MNEdit11Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    Procedure FillDo(Customer_ID:Integer);
    Procedure ClearDo;
    Procedure Customer(St,Customer_Id:String);
    Procedure SahamFind(SCode:String);
    Procedure CustomerFind(Customer_Id:Integer);
    Procedure NationFind(NationCode:String);
    Function  GetCustId:Integer;
    Function  GetSCode:Integer;
    Procedure HesabAdd(Kol,Moin,Hesab,Customer_Id,Update:String);
  public
    { Public declarations }
    Escaped:Integer;
    Kind:Real;
  end;

var
  fmCustomer: TfmCustomer;

implementation

uses CodeSeaU, MastDataU;


{$R *.dfm}


Procedure TfmCustomer.FillDo(Customer_Id:Integer);
begin
 with Query1 do begin
  Sql.Clear;
  Sql.Add('Select * From Customer Where Customer_Id='+IntToStr(Customer_Id));
  Open;
  Label21.Caption:=FieldByName('Customer_Id').AsString;
  if FieldByName('Customer_Id').AsInteger>0 then begin
   RadioGroup1.ItemIndex:=FieldByName('Gender').AsInteger;
   ComboBox1.ItemIndex:=FieldByName('EDU').AsInteger;
   MNEdit1.Text:=FieldByName('FName').AsString;
   MNEdit2.Text:=FieldByName('LName').AsString;
   MNEdit3.Text:=FieldByName('FatherName').AsString;
   MNEdit4.Text:=FieldByName('Sadereh').AsString;
   MNShDate1.Text:=MakeDate(FieldByName('BirthDate').AsString);
   MNEdit8.Text:=FieldByName('Course').AsString;
   MNEdit9.Text:=FieldByName('ActionWork').AsString;
   MNNumEdit5.Text:=FieldByName('Id').AsString;
   MNMASKEdit1.Text:=FieldByName('NationCode').AsString;
   MNNumEdit2.Text:=FieldByName('CityCode1').AsString;
   MNNumEdit7.Text:=FieldByName('Tel1').AsString;
   MNNumEdit4.Text:=FieldByName('CityCode2').AsString;
   MNNumEdit3.Text:=FieldByName('Tel2').AsString;
   MNNumEdit6.Text:=FieldByName('FaxCode').AsString;
   MNNumEdit8.Text:=FieldByName('Fax').AsString;
   MNNumEdit9.Text:=FieldByName('Mobile').AsString;
   MNNumEdit11.Text:=FieldByName('WorkCityCode').AsString;
   MNNumEdit10.Text:=FieldByName('WorkTel').AsString;
   MNEdit5.Text:=FieldByName('EMail').AsString;
   MNMASKEdit2.Text:=FieldByName('PostalCode').AsString;
   MNEdit6.Text:=FieldByName('Address').AsString;
   MNMASKEdit3.Text:=FieldByName('WorkPostalCode').AsString;
   MNEdit10.Text:=FieldByName('WorkAddress').AsString;
   MNEdit7.Text:=FieldByName('Des').AsString;
  end else ClearDo;
 end;
end;

Procedure TfmCustomer.ClearDo;
begin
   sLabelFX1.Caption:='.....';
   Label21.Caption:='0';
   MNEdit1.Text:='';
   MNEdit2.Text:='';
   MNEdit3.Text:='';
   MNEdit4.Text:='';
   MNShDate1.Text:='';
   MNNumEdit5.Text:='';
   MNMASKEdit1.Text:='';
   MNNumEdit2.Text:='';
   MNNumEdit7.Text:='';
   MNNumEdit4.Text:='';
   MNNumEdit8.Text:='';
   MNNumEdit9.Text:='';
   RadioGroup1.ItemIndex:=0;
   MNEdit5.Text:='';
   MNMASKEdit2.Text:='';
   MNEdit6.Text:='';
   MNEdit7.Text:='';
   ComboBox1.ItemIndex:=0;
   MNEdit8.Text:='';
   MNEdit9.Text:='';
   MNNumEdit3.Text:='';
   MNNumEdit6.Text:='';
   MNNumEdit1.Text:='';
   MNNumEdit10.Text:='';
   MNNumEdit11.Text:='';
   MNNumEdit12.Text:='';
   MNNumEdit13.Text:='';
   MNNumEdit14.Text:='';
   MNMASKEdit3.Text:='';
   MNEdit10.Text:='';
   MNEdit11.Text:='';   
end;

Procedure TfmCustomer.Customer(St,Customer_Id:String);
 var Code:String;
begin
 Code:='Customer_Id='+Customer_Id ;
 if MNEdit1.Text='' then Code:=Code+',FName=Null' else Code:=Code+',FName='+QuotedStr(MNEdit1.Text) ;
 if MNEdit2.Text='' then Code:=Code+',LName=Null' else Code:=Code+',LName='+''''+MNEdit2.Text+'''' ;
 if MNEDit3.Text='' then Code:=Code+',FatherName=Null' else Code:=Code+',FatherName='+''''+MNEdit3.Text+'''' ;
 if MNEdit4.Text='' then Code:=Code+',Sadereh=Null' else Code:=Code+',Sadereh='+''''+MNEdit4.Text+'''' ;
 if MNNumEdit5.Text='' then Code:=Code+',Id=Null' else Code:=Code+',Id='+MNNumEdit5.Text ;
 if MNMASKEdit1.Text='' then Code:=Code+',NationCode=Null' else Code:=Code+',NationCode='+''''+MNMASKEdit1.Text+'''' ;
 if MNShDate1.Text='' then Code:=Code+',BirthDate=Null' else Code:=Code+',BirthDate='+RefineDate(MNShDate1.Text) ;
 Code:=Code+',EDU='+IntToStr(ComboBox1.ItemIndex) ;
 if MNEdit8.Text='' then Code:=Code+',Course=Null' else Code:=Code+',Course='+QuotedStr(MNEdit8.Text) ;
 if MNEdit9.Text='' then Code:=Code+',ActionWork=Null' else Code:=Code+',ActionWork='+QuotedStr(MNEdit9.Text) ;
 if MNNumEdit2.Text='' then Code:=Code+',CityCode1=Null' else Code:=Code+',CityCode1='+MNNumEdit2.Text ;
 if MNNumEdit7.Text='' then Code:=Code+',Tel1=Null' else Code:=Code+',Tel1='+MNNumEdit7.Text ;
 if MNNumEdit4.Text='' then Code:=Code+',CityCode2=Null' else Code:=Code+',CityCode2='+MNNumEdit4.Text ;
 if MNNumEdit3.Text='' then Code:=Code+',Tel2=Null' else Code:=Code+',Tel2='+MNNumEdit3.Text ;
 if MNNumEdit6.Text='' then Code:=Code+',FaxCode=Null' else Code:=Code+',FaxCode='+MNNumEdit6.Text ;
 if MNNumEdit8.Text='' then Code:=Code+',Fax=Null' else Code:=Code+',Fax='+MNNumEdit8.Text ;
 if MNNumEdit9.Text='' then Code:=Code+',Mobile=Null' else Code:=Code+',Mobile='+MNNumEdit9.Text ;
 if MNNumEdit11.Text='' then Code:=Code+',WorkCityCode=Null' else Code:=Code+',WorkCityCode='+MNNumEdit11.Text ;
 if MNNumEdit10.Text='' then Code:=Code+',WorkTel=Null' else Code:=Code+',WorkTel='+MNNumEdit10.Text ;
 Code:=Code+',Gender='+IntToStr(RadioGroup1.ItemIndex) ;
 if MNEdit5.Text='' then Code:=Code+',EMail=Null' else Code:=Code+',EMail='+''''+MNEdit5.Text+'''' ;
 if MNMASKEdit2.Text='' then Code:=Code+',PostalCode=Null' else Code:=Code+',PostalCode='+MNMASKEdit2.Text ;
 if MNEdit6.Text='' then Code:=Code+',Address=Null' else Code:=Code+',Address='+''''+MNEdit6.Text+'''' ;
 if MNMASKEdit3.Text='' then Code:=Code+',WorkPostalCode=Null' else Code:=Code+',WorkPostalCode='+MNMASKEdit3.Text ;
 if MNEdit10.Text='' then Code:=Code+',WorkAddress=Null' else Code:=Code+',WorkAddress='+''''+MNEdit10.Text+'''' ;
 if MNEdit7.Text='' then Code:=Code+',Des=Null' else Code:=Code+',Des='+''''+MNEdit7.Text+'''' ;
 Code:=Code+',Last_Date='+IntToStr(dmMastData.GetDate)+',Per_Code='+IntToStr(dmMastData.Per_Code);
 with Query1 do begin
  if St='Add' then begin
   Sql.Clear;
   Sql.Add('Insert Into Customer Select '+Code) ;
   ExecSql;
  end else begin
   Sql.Clear;
   Sql.Add('Update Customer Set '+Code+' Where Customer_Id='+Customer_Id);
   ExecSql;
  end;
 end;
end;

Procedure TfmCustomer.SahamFind(SCode:String);
begin
 with QuSaham do begin
  Close;
  Parameters.ParamByName('SCode').Value:=StrToInt(SCode);
  Open;
//  Label1.Caption:=' ÊÚÏÇÏ ÓåÇã ÊÇ Çíä ÊÇÑíÎ : ' +MakeMoney(FloatToStr(dmMastData.SahamCountFind(SCode,19000101)));
 end;
end;

Procedure TfmCustomer.CustomerFind(Customer_Id:Integer);
begin
 with Query1 do begin
  Sql.Clear;
  Sql.Add('Select * From Customer Where Customer_Id='+IntToStr(Customer_Id));
  Open;
  if RecordCount>0 then Label21.Caption:=IntToStr(Customer_Id);
 end;
end;

Procedure TfmCustomer.NationFind(NationCode:String);
begin
 with Query1 do begin
  Sql.Clear;
  Sql.Add('Select * From Customer Where NationCode='+QuotedStr(NationCode));
  Open;
  if RecordCount>0 then begin
   FillDo(FieldByName('Customer_Id').AsInteger);
   HesabAdd(MNNumEdit12.Text,MNNumEdit13.Text,MNNumEdit14.Text,Label21.Caption,'2');
  end;
 end;
end;

Function TfmCustomer.GetCustId:Integer;
begin
 with Query1 do begin
  Sql.Clear;
  Sql.Add('Select Max(Customer_Id) CustId From Customer ');
  Open;
  Result:=FieldByName('CustId').AsInteger+1;
 end;
end;

Function TfmCustomer.GetSCode:Integer;
begin
 with Query1 do begin
  Sql.Clear;
  Sql.Add('Select Max(SCode) SCode From Saham ');
  Open;
  Result:=FieldByName('SCode').AsInteger+1;
 end;
end;

Procedure TfmCustomer.HesabAdd(Kol,Moin,Hesab,Customer_Id,Update:String);
var Hesab_No:String;
begin
 Hesab_No:=Kol+'/'+Moin+'/'+Hesab;
 with Query1 do begin
  Sql.Clear;
  if Update='0' then begin
   Sql.Add('Insert Into Hesab (Hesab_No,Kol,Moin,Hesab,LimMandeh,Customer_Id) ') ;
   Sql.Add('Values('+QuotedStr(Hesab_No)+','+Kol+','+Moin+','+Hesab+',0,'+Customer_Id+')');
  end else begin
   Sql.Add(' Update HesabAct Set Customer_Id='+Customer_Id+' Where Hesab_No='+QuotedStr(Hesab_No)) ;
   Sql.Add(' Update Hesab Set Customer_Id='+Customer_Id+' Where Hesab_No='+QuotedStr(Hesab_No)) ;
  end;
  ExecSql;
  Sql.Clear;
  Sql.Add('Insert Into Customer (Customer_Id) Values('+Customer_Id+') ');
  if Update<'2' then
   ExecSql;
 end;
end;

procedure TfmCustomer.MNMASKEdit1Exit(Sender: TObject);
begin
 if Length(MNMaskEdit1.Text)=10 then
  NationFind(MNMaskEdit1.Text);
end;

procedure TfmCustomer.QuSahamAfterScroll(DataSet: TDataSet);
begin
 CustomerFind(QuSahamCustomer_Id.Value);
 FillDo(QuSahamCustomer_Id.Value);
end;

procedure TfmCustomer.suitempBtnSaveClick(Sender: TObject);
begin

 Customer('Update',Label21.Caption);
// FillDo(QuSahamCustomer_Id.Value);
 FillDo(StrToInt(Label21.Caption));
 BtnNew.SetFocus;
end;

procedure TfmCustomer.suitempBtnCancelClick(Sender: TObject);
begin
 FillDo(QuSahamCustomer_Id.Value);
 BtnNew.SetFocus;
end;

procedure TfmCustomer.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=VK_F2 then BtnSave.Click else
 if key=VK_F3 then BtnNew.Click else 
 if Key=VK_Escape then begin
  Escaped:=1;
  BtnCancel.Click;
 end;
end;


procedure TfmCustomer.suitempBtnSearchClick(Sender: TObject);
var HesabNo:String;
begin
 HesabNo:=MNNumEdit12.Text+'/'+MNNUmEdit13.Text+'/'+MNNumEdit14.Text;
 with dmMastData.Query2 do begin
  Sql.Clear;
  Sql.Add('Select Count(*) SC From SamadAct Where Hesab_No='+QuotedStr(HesabNo));
  Open;
  if FieldByName('SC').AsInteger=0 then begin
   Sql.Clear;
   Sql.Add('Delete From Hesab Where Hesab_No='+QuotedStr(HesabNo));
   ExecSql;
   Sql.Clear;
   Sql.Add('Delete From HesabAct Where Hesab_No='+QuotedStr(HesabNo));
   ExecSql;
  end else begin
//   dmMastData.PreMessage(fmCustomer,'Decline','ÎØÇ');
   MessageDlg('Çíä ÍÓÇÈ ÊÑÇ˜äÔ ÏÇÑÏ æ äãíÊæÇä ÂäÑÇ ÍÐÝ ˜ÑÏ.',mtError,[mbok],0);
  end;
 end;
 MNNumEdit12.SetFocus;
end;

procedure TfmCustomer.suitempBtnNewClick(Sender: TObject);
var SCode:Integer;
begin
// SCode:=GetSCode;
// SahamAdd(SCode,GetCustId);
// MNNumEdit12.Text:=IntToStr(SCode);
 MNNumEdit12.SetFocus;
end;

procedure TfmCustomer.MNNumEdit12Exit(Sender: TObject);
begin
 if MNNumEdit12.Text<'0' then MNNumEdit12.Text:='0';
 if Escaped=0 then begin
  if dmMastData.KolFind(MNNumEdit12.Text)='False' then begin
   if sMessageDlg('ÎØÇ æ ÓæÇá','˜Ï ˜á ãæÑÏ äÙÑ íÏÇ äÔÏ. ÂíÇ ãí ÎæÇåíÏ ÌÓÊÌæ ˜äíÏ¿',mtConfirmation,[mbYes,mbNo],0)=mrYes then begin
    Application.CreateForm(TfmCodeSearch,fmCodeSearch) ;
    try
     fmCodeSearch.ShowModal;
    finally
     if fmCodeSearch.Kol>0 then MNNumEdit12.Text:=FloatToStr(fmCodeSearch.Kol);
     if fmCodeSearch.Moin>0 then MNNumEdit13.Text:=FloatToStr(fmCodeSearch.Moin);
     if fmCodeSearch.Hesab>0 then MNNumEdit14.Text:=FloatToStr(fmCodeSearch.Hesab);
     fmCodeSearch.Free;
     MNNumEdit12.SetFocus;
    end;
   end else MNNumEdit12.SetFocus;
  end;
 end;
end;

procedure TfmCustomer.MNNumEdit12Enter(Sender: TObject);
begin
 sLabelFX1.Caption:='.....';
 Label21.Caption:='0';
 Escaped:=0;
end;

procedure TfmCustomer.MNNumEdit13Exit(Sender: TObject);
begin
 if MNNumEdit13.Text<'0' then MNNumEdit13.Text:='0';
 if (Escaped=0) and (UP_ARROC=False) then begin
  if dmMastData.MoinFind(MNNumEdit12.Text,MNNumEdit13.Text)='False' then begin
   if MessageDlg('˜Ï ãÚíä ãæÑÏ äÙÑ íÏÇ äÔÏ. ÂíÇ ãí ÎæÇåíÏ ÌÓÊÌæ ˜äíÏ¿',mterror,[mbYes,mbNo],0)=mrYes then begin
    Application.CreateForm(TfmCodeSearch,fmCodeSearch) ;
    try
     fmCodeSearch.Kol:=StrToInt(MNNumEdit12.Text);
     fmCodeSearch.ShowModal;
    finally
      if fmCodeSearch.Kol>0 then MNNumEdit12.Text:=FloatToStr(fmCodeSearch.Kol);
      if fmCodeSearch.Moin>0 then MNNumEdit13.Text:=FloatToStr(fmCodeSearch.Moin);
      if fmCodeSearch.Hesab>0 then MNNumEdit14.Text:=FloatToStr(fmCodeSearch.Hesab);
     fmCodeSearch.Free;
     MNNumEdit13.SetFocus;
    end;
   end else MNNumEdit13.SetFocus;
  end;
 end;
end;

procedure TfmCustomer.MNNumEdit13Enter(Sender: TObject);
begin
 sLabelFX1.Caption:=dmMastData.KolFind(MNNumEdit12.Text);
 Label21.Caption:='0';
end;

procedure TfmCustomer.MNNumEdit14Enter(Sender: TObject);
begin
 sLabelFX1.Caption:=dmMastData.KolFind(MNNumEdit12.Text)+' - '+dmMastData.MoinFind(MNNumEdit12.Text,MNNumEdit13.Text);
 Label21.Caption:='0';
end;

procedure TfmCustomer.MNNumEdit14Exit(Sender: TObject);
var Hesab_No:String;
begin
 if MNNumEdit14.Text<='0' then MNNumEdit14.Text:='0';
 MNNumEdit14.Text:=FloatToStr(StrToFloat(MNNumEdit14.Text));
 Hesab_No:=MNNumEdit12.Text+'/'+MNNUmEdit13.Text+'/'+MNNumEdit14.Text;
 if (Escaped=0) and (UP_ARROC=False) then begin
  sLabelFX1.Caption:=dmMastData.HesabFind(Hesab_No);
  if dmMastData.Query1.RecordCount<1 then  begin  //Hesab not found
   if MessageDlg('ÔãÇÑå ÍÓÇÈ æÇÑÏå íÏÇ äÔÏ ÂíÇ ÇíÌÇÏ ÔæÏ¿ ',mtConfirmation,[mbYes,mbNo],0)=mrYes then begin
    HesabAdd(MNNumEdit12.Text,MNNUmEdit13.Text,MNNumEdit14.Text,IntToStr(GetCustId),'0');
    dmMastData.HesabFind(Hesab_No);
    Label21.Caption:=dmMastData.Query1.FieldByName('Customer_Id').AsString;
    RadioGroup1.ItemIndex:=0;
   end else begin
    MNNumEdit14.SetFocus ;
    Label21.Caption:='0';
   end;//message
  end else begin
//   MNNumEdit1.Text:=dmMastData.Query1.FieldByName('Bodjet_Code').AsString;
   MNEdit11.Text:=dmMastData.Query1.FieldByName('Des').AsString;
   RadioGroup1.SetFocus;
   if dmMastData.Query1.FieldByName('Customer_Id').AsInteger<1 then begin //Hesab found but customer_id is 0
    HesabAdd(MNNumEdit12.Text,MNNUmEdit13.Text,MNNumEdit14.Text,IntToStr(GetCustId),'1');
    dmMastData.HesabFind(Hesab_No);
   end;
   Label21.Caption:=dmMastData.Query1.FieldByName('Customer_Id').AsString;
   FillDo(dmMastData.Query1.FieldByName('Customer_Id').AsInteger);
  end;
 end;
end;

procedure TfmCustomer.BtnRepClick(Sender: TObject);
begin
// Application.CreateForm(TfmHesabOfHesab,fmHesabOfHesab);
// try
//  fmHesabOfHesab.ShowModal;
// finally
//  fmHesabOfHesab.Free;
// end;
end;

procedure TfmCustomer.MNEdit7Exit(Sender: TObject);
begin
 BtnSave.SetFocus;
end;

procedure TfmCustomer.MNNumEdit1Exit(Sender: TObject);
var Hesab_No:String;
begin
 Hesab_No:=MNNumEdit12.Text+'/'+MNNUmEdit13.Text+'/'+MNNumEdit14.Text;
 with dmMastData.Query2 do begin
  Sql.Clear;
  Sql.Add(' Update HesabAct Set Bodjet_Code='+MNNumEdit1.Text+' Where Hesab_No='+QuotedStr(Hesab_No));
  Sql.Add(' Update Hesab Set Bodjet_Code='+MNNumEdit1.Text+' Where Hesab_No='+QuotedStr(Hesab_No));
  ExecSql;
 end;
end;

procedure TfmCustomer.MNEdit11Exit(Sender: TObject);
var Hesab_No:String;
begin
 Hesab_No:=MNNumEdit12.Text+'/'+MNNUmEdit13.Text+'/'+MNNumEdit14.Text;
 with dmMastData.Query2 do begin
  Sql.Clear;
  Sql.Add(' Update HesabAct Set Des='+QuotedStr(MNEdit11.Text)+' Where Hesab_No='+QuotedStr(Hesab_No));
  Sql.Add(' Update Hesab Set Des='+QuotedStr(MNEdit11.Text)+' Where Hesab_No='+QuotedStr(Hesab_No));
  ExecSql;
 end;
end;

procedure TfmCustomer.Button1Click(Sender: TObject);
begin
 with dmMastData.Query1 do begin
  Sql.Clear;
  Sql.Add(' Delete From GeneralHesab Where Hesab='+MNNumEdit14.Text);
  Sql.Add(' Insert into GeneralHesab Select '+MNNumEdit14.Text+','+Label21.Caption);
  ExecSql;
 end;
end;

procedure TfmCustomer.sBitBtn1Click(Sender: TObject);
begin
 Application.CreateForm(TfmCodeSearch,fmCodeSearch) ;
 try
  fmCodeSearch.Control:='Customer';
  fmCodeSearch.ShowModal;
 finally
  if fmCodeSearch.CustomerId>0 then begin
   Label21.Caption:=IntToStr(fmCodeSearch.CustomerId);
   HesabAdd(MNNumEdit12.Text,MNNumEdit13.Text,MNNumEdit14.Text,Label21.Caption,'2');
   FillDo(StrToInt(Label21.Caption));
  end;
  fmCodeSearch.Free;
  MNNumEdit12.SetFocus;
 end;
end;

end.
