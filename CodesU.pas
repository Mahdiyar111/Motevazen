unit CodesU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CseZForm, DBCtrls, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, Grids, DBGrids, MNTEDIT, Menus, ExtDlgs, FileCtrl, ComCtrls, ShellCtrls,
  sGroupBox, sCheckBox, sComboBox, sBitBtn, sTreeView, frxClass,
  frxGradient, frxDBSet, GridsEh, DBGridEh, MemTableDataEh, DataDriverEh,
  MemTableEh, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, DBAxisGridsEh;

type
  TfmCodes = class(TCseZForm)
    taKol: TADOTable;
    taMoin: TADOTable;
    dsKol: TDataSource;
    dsMoin: TDataSource;
    taKolDes: TStringField;
    taKolKind: TSmallintField;
    taMoinDes: TStringField;
    Query: TADOQuery;
    dsQuery: TDataSource;
    QuRep: TADOQuery;
    QuRepKol: TIntegerField;
    QuRepDes: TStringField;
    QuRepMoin: TIntegerField;
    QuRepKolDes: TStringField;
    taMoinSerialControl: TSmallintField;
    taMoinMandehControl: TSmallintField;
    taMoinSignPath: TStringField;
    sGroupBox1: TsGroupBox;
    Label2: TLabel;
    MNNumEdit1: TMNTEdit;
    MNEdit1: TMNTEdit;
    BitBtn1: TButton;
    BitBtn2: TButton;
    DBNavigator1: TDBNavigator;
    sRadioGroup1: TsRadioGroup;
    Label1: TLabel;
    sGroupBox2: TsGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    MNNumEdit2: TMNTEdit;
    MNEdit2: TMNTEdit;
    sRadioGroup2: TsRadioGroup;
    Label5: TLabel;
    BitBtn3: TButton;
    BitBtn4: TButton;
    DBNavigator2: TDBNavigator;
    BitBtn7: TButton;
    sCheckBox1: TsCheckBox;
    taKolKol_Kind: TSmallintField;
    Label6: TLabel;
    sComboBox1: TsComboBox;
    sGroupBox3: TsGroupBox;
    sBitBtn1: TsBitBtn;
    Button1: TButton;
    frxDBKolMoin: TfrxDBDataset;
    frxGradientObject1: TfrxGradientObject;
    frxKolMoinRep: TfrxReport;
    Button2: TButton;
    taKolKol: TIntegerField;
    taMoinKol: TIntegerField;
    taMoinMoin: TIntegerField;
    dsHesab: TDataSource;
    QuHesab: TADOQuery;
    QuHesabHesab_No: TStringField;
    QuHesabDes: TStringField;
    DBGridEh2: TDBGridEh;
    DataSetDriverKol: TDataSetDriverEh;
    MemTableKol: TMemTableEh;
    DataSetDriverMoin: TDataSetDriverEh;
    MemTableMoin: TMemTableEh;
    DataSetDriverHesab: TDataSetDriverEh;
    MemTableHesab: TMemTableEh;
    QuHesabKol: TIntegerField;
    QuHesabMoin: TIntegerField;
    MemTableKolKol: TIntegerField;
    MemTableKolDes: TStringField;
    MemTableKolKind: TSmallintField;
    MemTableKolKol_Kind: TSmallintField;
    MemTableMoinKol: TIntegerField;
    MemTableMoinMoin: TIntegerField;
    MemTableMoinDes: TStringField;
    MemTableMoinSerialControl: TSmallintField;
    MemTableMoinMandehControl: TSmallintField;
    MemTableMoinSignPath: TStringField;
    DBGridEh1: TDBGridEh;
    DBGridEh3: TDBGridEh;
    QuHesabHesab: TFloatField;
    MemTableHesabHesab: TFloatField;
    MemTableHesabDes: TStringField;
    MemTableHesabHesab_No: TStringField;
    MemTableHesabKol: TIntegerField;
    MemTableHesabMoin: TIntegerField;
    sCheckBox2: TsCheckBox;
    taKolOpenItem: TSmallintField;
    MemTableKolOpenItem: TSmallintField;
    taKolCash: TSmallintField;
    sCheckBox3: TsCheckBox;
    MemTableKolCash: TSmallintField;
    taMoinBuySell: TSmallintField;
    MemTableMoinBuySell: TSmallintField;
    sCheckBox4: TsCheckBox;
    sCheckBox5: TsCheckBox;
    taMoinSourceHN: TSmallintField;
    MemTableMoinSourceHN: TSmallintField;
    procedure taKolAfterScroll(DataSet: TDataSet);
    procedure taMoinAfterScroll(DataSet: TDataSet);
    procedure MNNumEdit1Exit(Sender: TObject);
    procedure suitempBitBtn1Click(Sender: TObject);
    procedure MNNumEdit2Exit(Sender: TObject);
    procedure suitempBitBtn3Click(Sender: TObject);
    procedure suitempBitBtn2Click(Sender: TObject);
    procedure suitempBitBtn4Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure QuHesabAfterPost(DataSet: TDataSet);
    procedure MemTableKolAfterScroll(DataSet: TDataSet);
    procedure MemTableMoinAfterScroll(DataSet: TDataSet);
    procedure MemTableKolAfterPost(DataSet: TDataSet);
    procedure MemTableMoinAfterPost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MemTableHesabAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    Procedure MoinGroupCreate(FKol,TKol,FMoin,TMoin:String);
    Procedure HesabGroupCreate(FKol,TKol,FMoin,TMoin:String);
    Procedure HesabGroup1MoinCreate(FKol,TKol,FMoin,TMoin:String);    
  public
    { Public declarations }
  end;

var
  fmCodes: TfmCodes;

implementation

uses MastDataU;

{$R *.dfm}

Procedure TfmCodes.MoinGroupCreate(FKol,TKol,FMoin,TMoin:String);
begin
 with dmMastData.Query1 do begin
  Sql.Clear;
  Sql.Add(' Insert Into Moin Select '+TKol+',Moin,Des,SerialControl,MandehControl,Null,0,0 From Moin ');
  Sql.Add(' Where Kol='+FKol+' And Moin BETWEEN '+FMoin+' And '+TMoin+' And Moin Not In(Select Moin From Moin Where Kol='+TKol+') ');
  ExecSql;
 end;
end;

Procedure TfmCodes.HesabGroupCreate(FKol,TKol,FMoin,TMoin:String);
begin
 with dmMastData.Query1 do begin
  Sql.Clear;
  Sql.Add('Insert Into Hesab ');
  Sql.Add(' Select '+QuotedStr(TKol+'/')+'+cast(Moin as varchar)+'+QuotedStr('/')+'+cast(hesab as varchar) ');
  Sql.Add(' ,'+Tkol+',Moin,Hesab,Des,0,Customer_Id,0,0,0,0,0,0,0,0 From Hesab ');
  Sql.Add(' Where Kol='+FKol+' And Moin Between '+FMoin+' And '+TMoin+' And ');
  Sql.Add(QuotedStr(TKol+'/')+'+cast(Moin as varchar)+'+QuotedStr('/')+'+cast(hesab as varchar) Not In(Select Hesab_No From Hesab) ');
//  showmessage(sql.text);
  ExecSql;
 end;
end;

Procedure TfmCodes.HesabGroup1MoinCreate(FKol,TKol,FMoin,TMoin:String);
begin
 with dmMastData.Query1 do begin
  Sql.Clear;
  Sql.Add('Insert Into Hesab ');
  Sql.Add(' Select '+QuotedStr(TKol+'/'+TMoin)+'+'+QuotedStr('/')+'+cast(hesab as varchar) ');
  Sql.Add(' ,'+Tkol+','+TMoin+',Hesab,Des,0,Customer_Id,0,0,0,0,0,0,0,0 From Hesab ');
  Sql.Add(' Where Kol='+FKol+' And Moin ='+FMoin+' And ');
  Sql.Add(QuotedStr(TKol+'/'+TMoin)+'+'+QuotedStr('/')+'+cast(hesab as varchar) Not In(Select Hesab_No From Hesab) ');
//  Showmessage(sql.Text)
  ExecSql;
 end;
end;

procedure TfmCodes.taKolAfterScroll(DataSet: TDataSet);
begin
 MNNumEdit1.Text:=taKolKol.AsString;
 sComboBox1.ItemIndex:=taKolKol_Kind.AsInteger;
 MNEdit1.Text:=taKolDes.Value;
 Case taKolKind.Value of
  -1:sRadioGroup1.ItemIndex:=1;
   0:sRadioGroup1.ItemIndex:=2;
   1:sRadioGroup1.ItemIndex:=0;
 end;
end;

procedure TfmCodes.taMoinAfterScroll(DataSet: TDataSet);
begin
 MNNumEdit2.Text:=taMoinMoin.AsString;
 MNEdit2.Text:=taMoinDes.Value;
 sRadioGroup2.ItemIndex:=taMoinSerialControl.Value;
 Label5.Caption:=taMoinSignPath.Value;
 if taMoinMandehControl.Value=1 then sCheckBox1.Checked:=True else sCheckBox1.Checked:=False;
end;

procedure TfmCodes.MNNumEdit1Exit(Sender: TObject);
var Kol:Integer;
begin
 if MNNumEdit1.Text<'0' then MNNumEdit1.Text:='0';
 Kol:=StrToInt(MNNumEdit1.Text);
 if not MemTableKol.Locate('Kol',MNNumEdit1.Text,[loCaseInsensitive]) then begin
  MemTableKol.Insert;
  MemTableKolKol.Value:=Kol;
  MNNumEdit1.Text:=IntToStr(Kol);
 end else
  MemTableKolAfterScroll(MemTableKol);
end;

procedure TfmCodes.suitempBitBtn1Click(Sender: TObject);
var YearOf:String;
begin
 YearOf:=Copy(dmMastData.StrDate,1,4);
 MemTableKol.Edit;
 MemTableKolDes.Value:=MNEdit1.Text;
 MemTableKolKol_Kind.Value:=sComboBox1.ItemIndex;
 if sRadioGroup1.ItemIndex=0 then MemTableKolKind.Value:=1 ;
 if sRadioGroup1.ItemIndex=1 then MemTableKolKind.Value:=-1 ;
 if sRadioGroup1.ItemIndex=2 then MemTableKolKind.Value:=0 ;
 if sCheckBox2.Checked then
  MemTableKolOpenItem.Value:=1 else
  MemTableKolOpenItem.Value:=0 ;
 if sCheckBox3.Checked then
  MemTableKolCash.Value:=1 else
  MemTableKolCash.Value:=0 ;
 MemTableKol.Post;
 with dmMastData.Query1 do begin
  Sql.Clear;
  Sql.Add('Delete From KolYears Where YearOf='+YearOf+' And Kol='+MemTableKolKol.AsString);
  Sql.Add(' Insert Into KolYears Select YearOf='+YearOf+',* From Kol Where Kol='+MemTableKolKol.AsString );
  ExecSql;
 end;
end;

procedure TfmCodes.MNNumEdit2Exit(Sender: TObject);
var Moin:Integer;
begin
 if MNNumEdit2.Text<'0' then MNNumEdit2.Text:='0';
 Moin:=StrToInt(MNNumEdit2.Text);
 if not MemTableMoin.Locate('Kol;Moin',VarArrayOf([MemTableKolKol.AsString,MNNumEdit2.Text]),[loCaseInsensitive]) then begin
  MemTableMoin.Insert;
  MemTableMoinMoin.Value:=Moin;
  MNNumEdit2.Text:=IntToStr(Moin);
 end else
  MemTableMoinAfterScroll(MemTableMoin);
end;

procedure TfmCodes.suitempBitBtn3Click(Sender: TObject);
var YearOf:String;
begin
 YearOf:=Copy(dmMastData.StrDate,1,4);
 MemTableMoin.Edit;
 MemTableMoinDes.Value:=MNEdit2.Text;
 MemTableMoinSerialControl.Value:=sRadioGroup2.ItemIndex;
 if sCheckBox1.Checked then MemTableMoinMandehControl.Value:=1 else MemTableMoinMandehControl.Value:=0;
 if sCheckBox4.Checked then
  MemTableMoinBuySell.Value:=1 else
  MemTableMoinBuySell.Value:=0 ;
 if sCheckBox5.Checked then
  MemTableMoinSourceHN.Value:=1 else
  MemTableMoinSourceHN.Value:=0 ;
 MemTableMoin.Post;
 with dmMastData.Query1 do begin
  Sql.Clear;
  Sql.Add('Delete From MoinYears Where YearOf='+YearOf+' And Kol='+MemTableMoinKol.AsString+' And Moin='+MemTableMoinMoin.AsString);
  Sql.Add(' Insert Into MoinYears Select YearOf='+YearOf+',* From Moin Where Kol='+MemTableMoinKol.AsString+' And Moin='+MemTableMoinMoin.AsString);
  ExecSql;
 end;
end;

procedure TfmCodes.suitempBitBtn2Click(Sender: TObject);
begin
 if MemTableMoin.RecordCount<1 then
  MemTableKol.Delete else begin
  MessageDlg('»—«Ì «Ì‰ òœ „⁄Ì‰  ⁄—Ì› ‘œÂ.«Ì‰ òœ ﬁ«»· Õ–› ‘œ‰ ‰„Ì »«‘œ',MtError,[MbOk],0);
 end
end;

procedure TfmCodes.suitempBitBtn4Click(Sender: TObject);
begin
 with Query do begin
  Sql.Clear;
  Sql.Add('Select Count(*) As Count From Hesab Where Kol='+MemTableMoinKol.AsString+' And Moin='+MemTableMoinMoin.AsString);
  Open;
 end;
 if Query.FieldByName('Count').Value <1 then
  MemTableMoin.Delete else begin
  MessageDlg('»—«Ì «Ì‰ òœ Õ”«»  ⁄—Ì› ‘œÂ.«Ì‰ òœ ﬁ«»· Õ–› ‘œ‰ ‰„Ì »«‘œ',MtError,[MbOk],0);
 end;
end;

procedure TfmCodes.sBitBtn1Click(Sender: TObject);
var I:Integer;
begin
{ sTreeView1.Items.Clear;
 taKol.First;
 I:=0;
 while not taKol.Eof do begin
  sTreeView1.Items.Add(nil,taKolDes.Value+'-'+taKolKol.AsString);
  While not taMoin.Eof do begin
   sTreeView1.Items.AddChild(sTreeView1.Items.Item[I],taMoinDes.Value+'-'+taMoinMoin.AsString );
   taMoin.Next;
  end;
  if taMoin.RecordCount>0 then
   I:=I+taMoin.RecordCount+1 else
   I:=I+1;
  taKol.Next;
 end;
 }
end;

procedure TfmCodes.Button1Click(Sender: TObject);
begin
// Application.CreateForm(TfmInput,fmInput);
// try
//  fmInput.Label1.Caption:='òœ ò· „»œ«';
//  fmInput.Label2.Caption:='«“ „⁄Ì‰';
//  fmInput.Label3.Caption:=' « „⁄Ì‰';
//  fmInput.Label1.Visible:=True;
//  fmInput.Label2.Visible:=True;
//  fmInput.Label3.Visible:=True;
//  fmInput.MNNumEdit1.Visible:=True;
//  fmInput.MNNumEdit2.Visible:=True;
//  fmInput.MNNumEdit3.Visible:=True;
//  if fmInput.ShowModal=mrOk then begin
//   MoinGroupCreate(fmInput.MNNumEdit1.Text,MemTableKolKol.AsString,fmInput.MNNumEdit2.Text,fmInput.MNNumEdit3.Text);
//   MemTableMoin.Close;
//   MemTableMoin.Open;
//  end;
// finally
//  fmInput.Free;
// end;
end;

procedure TfmCodes.BitBtn7Click(Sender: TObject);
var Memo14,Memo15:tfrxMemoView;
begin
 Memo14:=frxKolMoinRep.FindObject('Memo14') as tfrxMemoView;
 Memo15:=frxKolMoinRep.FindObject('Memo15') as tfrxMemoView;
 Memo14.Text:='';//'  «—ÌŒ  ÂÌÂ : '+dmMastData.StrDate;
 Memo15.Text:=' ò«—»— : '+dmMastData.taUsersUserName.Value;
 frxKolMoinRep.ShowReport();
end;

procedure TfmCodes.Button2Click(Sender: TObject);
begin
// Application.CreateForm(TfmInput,fmInput);
// try
//  fmInput.Label1.Caption:='òœ ò· „»œ«';
//  fmInput.Label2.Caption:='«“ „⁄Ì‰';
//  fmInput.Label3.Caption:=' « „⁄Ì‰';
//  fmInput.Label1.Visible:=True;
//  fmInput.Label2.Visible:=True;
//  fmInput.Label3.Visible:=True;
//  fmInput.MNNumEdit1.Visible:=True;
//  fmInput.MNNumEdit2.Visible:=True;
//  fmInput.MNNumEdit3.Visible:=True;
//  if fmInput.ShowModal=mrOk then begin
//   if (fmInput.MNNumEdit3.Text='') then
//    HesabGroupCreate(fmInput.MNNumEdit1.Text,MemTableMoinKol.AsString,fmInput.MNNumEdit2.Text,fmInput.MNNumEdit3.Text) else
//    HesabGroup1MoinCreate(fmInput.MNNumEdit1.Text,MemTableMoinKol.AsString,fmInput.MNNumEdit2.Text,MemTableMoinMoin.AsString) ;
////   taMoin.Close;
////   taMoin.Open;
//  end;
// finally
//  fmInput.Free;
// end;
end;

procedure TfmCodes.QuHesabAfterPost(DataSet: TDataSet);
begin
{
 with Query do begin
  Sql.Clear;
  Sql.Add(' Update HesabAct Set Bodjet_Code='+QuHesabBodjet_Code.AsString+' Where Hesab_No='+QuotedStr(QuHesabHesab_No.Value));
  ExecSql;
 end;
}
end;

procedure TfmCodes.MemTableKolAfterScroll(DataSet: TDataSet);
begin
 MNNumEdit1.Text:=MemTableKolKol.AsString;
 sComboBox1.ItemIndex:=MemTableKolKol_Kind.AsInteger;
 MNEdit1.Text:=MemTableKolDes.Value;
 Case MemTableKolKind.Value of
  -1:sRadioGroup1.ItemIndex:=1;
   0:sRadioGroup1.ItemIndex:=2;
   1:sRadioGroup1.ItemIndex:=0;
 end;
 Case MemTableKolOpenItem.AsInteger of
  0:sCheckBox2.Checked:=False;
  1:sCheckBox2.Checked:=True;
 end;
 Case MemTableKolCash.AsInteger of
  0:sCheckBox3.Checked:=False;
  1:sCheckBox3.Checked:=True;
 end;
 MemTableMoinAfterScroll(MemTableMoin);
end;

procedure TfmCodes.MemTableMoinAfterScroll(DataSet: TDataSet);
begin
 MNNumEdit2.Text:=MemTableMoinMoin.AsString;
 MNEdit2.Text:=MemTableMoinDes.Value;
 sRadioGroup2.ItemIndex:=MemTableMoinSerialControl.Value;
 Label5.Caption:=MemTableMoinSignPath.Value;
 if MemTableMoinMandehControl.Value=1 then sCheckBox1.Checked:=True else sCheckBox1.Checked:=False;
 Case MemTableMoinBuySell.AsInteger of
  0:sCheckBox4.Checked:=False;
  1:sCheckBox4.Checked:=True;
 end;
 Case MemTableMoinSourceHN.AsInteger of
  0:sCheckBox5.Checked:=False;
  1:sCheckBox5.Checked:=True;
 end;
end;

procedure TfmCodes.MemTableKolAfterPost(DataSet: TDataSet);
begin
 MemTableKolAfterScroll(MemTableKol);
end;

procedure TfmCodes.MemTableMoinAfterPost(DataSet: TDataSet);
begin
 MemTableMoinAfterScroll(MemTableMoin);
end;

procedure TfmCodes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key=VK_ESCAPE then begin
  MemTableKol.Cancel;
  MemTableMoin.Cancel;
  MemTableHesab.Cancel;
  MemTableKolAfterScroll(MemTableKol);
  MemTableMoinAfterScroll(MemTableMoin);
  MNNumEdit1.SetFocus;
 end;
end;

procedure TfmCodes.MemTableHesabAfterPost(DataSet: TDataSet);
begin
{
 with Query do begin
  Sql.Clear;
  Sql.Add(' Update HesabAct Set Bodjet_Code='+QuHesabBodjet_Code.AsString+' Where Hesab_No='+QuotedStr(QuHesabHesab_No.Value));
  ExecSql;
 end
} 
end;

end.
