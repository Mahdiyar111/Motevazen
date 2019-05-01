unit TrnRepU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, MNTEDIT, sLabel, CSEZForm, SDialogs,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TfmTrnRep = class(TCSEZForm)
    GroupBox1: TGroupBox;
    sLabelFX1: TsLabelFX;
    MNNumEdit12: TMNTEdit;
    MNNumEdit13: TMNTEdit;
    MNNumEdit14: TMNTEdit;
    MNTEdit1: TMNTEdit;
    MNTEdit2: TMNTEdit;
    GroupBox3: TGroupBox;
    DBGridEh1: TDBGridEh;
    dsTrn: TDataSource;
    FDQuTrn: TFDQuery;
    FDQuTrnHesabNo: TStringField;
    FDQuTrnKol: TIntegerField;
    FDQuTrnMoin: TIntegerField;
    FDQuTrnHesab: TFMTBCDField;
    FDQuTrnRadif: TIntegerField;
    FDQuTrnDes: TStringField;
    FDQuTrnSanadQty: TFMTBCDField;
    FDQuTrnSanadType: TIntegerField;
    FDQuTrnCoPercent: TFloatField;
    FDQuTrnProfit: TFMTBCDField;
    FDQuTrnRegDate: TIntegerField;
    FDQuTrnId: TFDAutoIncField;
    procedure MNNumEdit12Exit(Sender: TObject);
    procedure MNNumEdit13Exit(Sender: TObject);
    procedure MNNumEdit14Exit(Sender: TObject);
    procedure MNTEdit2Exit(Sender: TObject);
  private
    { Private declarations }
    ESCaped:integer;
  public
    { Public declarations }
  end;

var
  fmTrnRep: TfmTrnRep;

implementation

{$R *.dfm}

uses MastDataU, CodeSeaU;

procedure TfmTrnRep.MNNumEdit12Exit(Sender: TObject);
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

procedure TfmTrnRep.MNNumEdit13Exit(Sender: TObject);
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

procedure TfmTrnRep.MNNumEdit14Exit(Sender: TObject);
var Hesab_No:String;
begin
 if MNNumEdit14.Text<='0' then MNNumEdit14.Text:='0';
 MNNumEdit14.Text:=FloatToStr(StrToFloat(MNNumEdit14.Text));
 Hesab_No:=MNNumEdit12.Text+'/'+MNNUmEdit13.Text+'/'+MNNumEdit14.Text;
 if (Escaped=0) and (UP_ARROC=False) then begin
  sLabelFX1.Caption:=dmMastData.HesabFind(Hesab_No);
  if dmMastData.Query1.RecordCount<1 then  begin  //Hesab not found
   if MessageDlg('ÔãÇÑå ÍÓÇÈ æÇÑÏå íÏÇ äÔÏ ÂíÇ ÇíÌÇÏ ÔæÏ¿ ',mtConfirmation,[mbYes,mbNo],0)=mrYes then begin
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

procedure TfmTrnRep.MNTEdit2Exit(Sender: TObject);
var HesabNo:string;
begin
  HesabNo:=MNNumEdit12.Text+'/'+MNNumEdit13.Text+'/'+MNNumEdit14.Text;
  with FDQuTrn do begin
    Open('Select * From Trn Where RegDate Between :R1 And :R2 And HesabNo=:H ',[RefineDate(MNTEdit1.Text),RefineDate(MNTEdit2.Text),HesabNo]);

  end;
end;

end.
