unit RegTrnU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, MNTEDIT, Vcl.ExtCtrls, Vcl.DBCtrls, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CSEZForm, sDialogs, sLabel;

type
  TfmRegTrn = class(TCSEZForm)
    GroupBox1: TGroupBox;
    MNTEdit1: TMNTEdit;
    FDTaTrnHead: TFDTable;
    FDTaTrnHeadRegDate: TIntegerField;
    FDQuTrn: TFDQuery;
    DBNavigator1: TDBNavigator;
    dsTrnHead: TDataSource;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBGridEh1: TDBGridEh;
    dsTrn: TDataSource;
    FDQuTrnId: TFDAutoIncField;
    FDQuTrnHesabNo: TStringField;
    FDQuTrnKol: TIntegerField;
    FDQuTrnMoin: TIntegerField;
    FDQuTrnHesab: TFMTBCDField;
    FDQuTrnRadif: TIntegerField;
    FDQuTrnDes: TStringField;
    FDQuTrnSanadQty: TFMTBCDField;
    FDQuTrnSanadType: TIntegerField;
    FDQuTrnProfit: TFMTBCDField;
    FDQuTrnRegDate: TIntegerField;
    FDQuTrnCoPercent: TFloatField;
    Label30: TLabel;
    MNNumEdit12: TMNTEdit;
    MNNumEdit13: TMNTEdit;
    Label29: TLabel;
    Label1: TLabel;
    MNNumEdit14: TMNTEdit;
    sLabelFX1: TsLabelFX;
    procedure FDTaTrnHeadAfterScroll(DataSet: TDataSet);
    procedure MNTEdit1Exit(Sender: TObject);
    procedure MNNumEdit12Exit(Sender: TObject);
    procedure MNNumEdit13Exit(Sender: TObject);
    procedure MNNumEdit14Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ThisDate:integer;
    Escaped:Integer;
  end;

var
  fmRegTrn: TfmRegTrn;

implementation

{$R *.dfm}

uses MastDataU, CodeSeaU;

procedure TfmRegTrn.FDTaTrnHeadAfterScroll(DataSet: TDataSet);
begin
  with FDQuTrn do begin
    Open('Select * From Trn Where RegDate=:RegDate',[FDTaTrnHeadRegDate.Value]);

  end;
  MNTEdit1.Text:=MakeDate(FDTaTrnHeadRegDate.AsString);
end;

procedure TfmRegTrn.MNNumEdit12Exit(Sender: TObject);
begin
 if MNNumEdit12.Text<'0' then MNNumEdit12.Text:='0';
 if Escaped=0 then begin
  if dmMastData.KolFind(MNNumEdit12.Text)='False' then begin
   if sMessageDlg('خطا و سوال','کد کل مورد نظر پيدا نشد. آيا مي خواهيد جستجو کنيد؟',mtConfirmation,[mbYes,mbNo],0)=mrYes then begin
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

procedure TfmRegTrn.MNNumEdit13Exit(Sender: TObject);
begin
 if MNNumEdit13.Text<'0' then MNNumEdit13.Text:='0';
 if (Escaped=0) and (UP_ARROC=False) then begin
  if dmMastData.MoinFind(MNNumEdit12.Text,MNNumEdit13.Text)='False' then begin
   if MessageDlg('کد معين مورد نظر پيدا نشد. آيا مي خواهيد جستجو کنيد؟',mterror,[mbYes,mbNo],0)=mrYes then begin
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

procedure TfmRegTrn.MNNumEdit14Exit(Sender: TObject);
var Hesab_No:String;
begin
 if MNNumEdit14.Text<='0' then MNNumEdit14.Text:='0';
 MNNumEdit14.Text:=FloatToStr(StrToFloat(MNNumEdit14.Text));
 Hesab_No:=MNNumEdit12.Text+'/'+MNNUmEdit13.Text+'/'+MNNumEdit14.Text;
 if (Escaped=0) and (UP_ARROC=False) then begin
  sLabelFX1.Caption:=dmMastData.HesabFind(Hesab_No);
  if dmMastData.Query1.RecordCount<1 then  begin  //Hesab not found
   if MessageDlg('شماره حساب وارده پيدا نشد آيا ايجاد شود؟ ',mtConfirmation,[mbYes,mbNo],0)=mrYes then begin
     Application.CreateForm(TfmCodeSearch,fmCodeSearch) ;
     try
      fmCodeSearch.Kol:=StrToInt(MNNumEdit12.Text);
      fmCodeSearch.Moin:=StrToInt(MNNumEdit13.Text);
      fmCodeSearch.ShowModal;
     finally
      if fmCodeSearch.Kol>0 then MNNumEdit12.Text:=FloatToStr(fmCodeSearch.Kol);
      if fmCodeSearch.Moin>0 then MNNumEdit13.Text:=FloatToStr(fmCodeSearch.Moin);
      if fmCodeSearch.Hesab>0 then MNNumEdit14.Text:=FloatToStr(fmCodeSearch.Hesab);
      fmCodeSearch.Free;
      MNNumEdit14.SetFocus;
     end;
    end else
     MNNumEdit14.SetFocus;

   end;
//   Label21.Caption:=dmMastData.Query1.FieldByName('Customer_Id').AsString;
//   FillDo(dmMastData.Query1.FieldByName('Customer_Id').AsInteger);
  end;
// end;
end;

procedure TfmRegTrn.MNTEdit1Exit(Sender: TObject);
begin
  if not FDTaTrnHead.FindKey([RefineDate(MNTEdit1.Text)]) then begin
    if sMessageDlg('سوال','این تاریخ سابقه ندارد آیا ایجاد شود؟',mtConfirmation,[mbno,mbyes],0)=mrYes then begin
      FDTaTrnHead.AppendRecord([RefineDate(MNTEdit1.Text)]);
    end else
      MNTEdit1.SetFocus;
  end;

end;

end.
