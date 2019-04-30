unit CodeSeaU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DB, ADODB, CseZForm,
  StdCtrls, MNTEDIT, sSkinProvider, sCheckBox;

type
  TfmCodeSearch = class(TCseZForm)
    QuSearch: TADOQuery;
    DataSource1: TDataSource;
    MNEdit1: TMNTEdit;
    Label1: TLabel;
    suiDBGrid1: TDBGrid;
    HesabKolBox: TsCheckBox;
    procedure MNEdit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure suiDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure MNEdit1Enter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure HesabKolBoxClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  Control:String;
  Kol,Moin,Hesab:Real;
  CustomerId:Integer;
  Procedure KolSearch(Des:String);
  Procedure MoinSearch(Kol:Real;Des:String);
  Procedure HesabSearch(Kol,Moin:Real;Des:String);
  Procedure Describe(Des:String);
  Procedure Cash(Des:String);
  Procedure HesabKolSearch(Des:String);
  Procedure CustomerSearch(Des:String);
  end;

var
  fmCodeSearch: TfmCodeSearch;

implementation

uses MastDataU;

{$R *.dfm}

Procedure TfmCodeSearch.KolSearch(Des:String);
begin
 with QuSearch do begin
  Sql.Clear;
  Sql.Add('Select Kol,Des From Kol Where Des Like '+QuotedStr('%'+Des+'%'));
  Open;
  FieldByName('Kol').DisplayLabel:='˜á';
  FieldByName('Des').DisplayLabel:='ÔÑÍ';
 end;
end;

Procedure TfmCodeSearch.MoinSearch(Kol:Real;Des:String);
begin
 with QuSearch do begin
  Sql.Clear;
  Sql.Add('Select Moin,Des From Moin Where Kol='+FloatToStr(Kol)+' And Des Like '+QuotedStr('%'+Des+'%'));
  Open;
  FieldByName('Moin').DisplayLabel:='ãÚíä';
  FieldByName('Des').DisplayLabel:='ÔÑÍ';
 end;
end;

Procedure TfmCodeSearch.HesabSearch(Kol,Moin:Real;Des:String);
begin
 with QuSearch do begin
  Sql.Clear;
  Sql.Add('Select Hesab,IsNull(FName,'''')+'+QuotedStr('  ')+'+IsNull(Lname,'''') Des ');
  Sql.Add(' From Hesab Left Outer Join Customer On Hesab.Customer_Id=Customer.Customer_Id ');
  Sql.Add(' Where Kol='+FloatToStr(Kol)+' And Moin='+FloatToStr(Moin));
  Sql.Add(' And IsNull(FName,'''')+'+QuotedStr('  ')+'+IsNull(Lname,'''') Like '+QuotedStr('%'+Des+'%'));
  Open;
  FieldByName('Hesab').DisplayLabel:='ÊÝÕíáí';
  FieldByName('Des').DisplayLabel:='ÔÑÍ';
 end;
end;

Procedure TfmCodeSearch.Describe(Des:String);
begin
 with QuSearch do begin
  Sql.Clear;
  Sql.Add('Select * from Describe Where Des Like '+QuotedStr('%'+Des+'%'));
  Open;
  FieldByName('Code').DisplayLabel:='˜Ï';
  FieldByName('Des').DisplayLabel:='ÔÑÍ';
 end;
end;

Procedure TfmCodeSearch.Cash(Des:String);
begin
 with QuSearch do begin
  Sql.Clear;
  Sql.Add('Select * from Cash Where Des Like '+QuotedStr('%'+Des+'%'));
  Open;
  FieldByName('CashCode').DisplayLabel:='˜Ï';
  FieldByName('Des').DisplayLabel:='ÔÑÍ';
 end;
end;

Procedure TfmCodeSearch.HesabKolSearch(Des:String);
begin
 with QuSearch do begin
  Sql.Clear;
  Sql.Add('Select Kol,Moin,Hesab,IsNull(FName,'''')+'+QuotedStr('  ')+'+IsNull(Lname,'''') Des ');
  Sql.Add(' From Hesab Left Outer Join Customer On Hesab.Customer_Id=Customer.Customer_Id ');
  Sql.Add(' Where IsNull(FName,'''')+'+QuotedStr('  ')+'+IsNull(Lname,'''') Like '+QuotedStr('%'+Des+'%'));
  Sql.Add(' Order By Hesab,Kol,Moin ');
  Open;
  FieldByName('Kol').DisplayLabel:='˜á';
  FieldByName('Moin').DisplayLabel:='ãÚíä';
  FieldByName('Hesab').DisplayLabel:='ÊÝÕíáí';
  FieldByName('Des').DisplayLabel:='ÔÑÍ';
 end;
end;

Procedure TfmCodeSearch.CustomerSearch(Des:String);
begin
 with QuSearch do begin
  Sql.Clear;
  Sql.Add('Select Customer_Id,IsNull(FName,'''')+'+QuotedStr('  ')+'+IsNull(Lname,'''') Des ');
  Sql.Add(' From Customer Where IsNull(FName,'''')+'+QuotedStr('  ')+'+IsNull(Lname,'''') Like '+QuotedStr('%'+Des+'%'));
  Open;
  FieldByName('Customer_Id').DisplayLabel:='ãÔÊÑí';
  FieldByName('Des').DisplayLabel:='ÔÑÍ';
 end;
end;

procedure TfmCodeSearch.MNEdit1Change(Sender: TObject);
begin
 if Control='Customer' then begin
  CustomerSearch(MNEdit1.Text);
  Exit;
 end else
 if Control='Describe' then begin
  Describe(MNEdit1.Text);
  Exit;
 end else
 if Control='Cash' then begin
  Cash(MNEdit1.Text);
  Exit;
 end else
 if HesabKolBox.Checked then
  HesabKolSearch(MNEdit1.Text) else
 if Kol>=0 then begin
  if Moin>=0 then
   HesabSearch(Kol,Moin,MNEdit1.Text) else
   MoinSearch(Kol,MNEdit1.Text) ;
 end else
  KolSearch(MNEdit1.Text);
end;

procedure TfmCodeSearch.FormCreate(Sender: TObject);
begin
 Kol:=-1;
 Moin:=-1;
 Hesab:=-1;
end;

procedure TfmCodeSearch.suiDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key=VK_RETURN then begin
  if (Control='Customer') and (QuSearch.FieldByName('Customer_Id').AsInteger>0) then begin
   CustomerId:=QuSearch.FieldByName('Customer_Id').AsInteger;
   Close;
  end else
  if (Control='Describe')or(Control='Cash')or(Control='SanadDes') then Close else begin
   if HesabKolBox.Checked then begin
    Hesab:=QuSearch.FieldByName('Hesab').Value;
    Moin:=QuSearch.FieldByName('Moin').Value;
    Kol:=QuSearch.FieldByName('Kol').Value;
   end else
   if Moin>=0 then Hesab:=QuSearch.FieldByName('Hesab').Value else
   if Kol>=0 then Moin:=QuSearch.FieldByName('Moin').Value else
    Kol:=QuSearch.FieldByName('Kol').Value ;
  end;//Describe
 end;
 if Hesab>=0 then Close;
end;

procedure TfmCodeSearch.suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 if (Key=Char(13))and((Control<>'Describe')or(Control<>'Cash')) then
  MNEdit1.SetFocus;
  MNEdit1.SelectAll;
end;

procedure TfmCodeSearch.MNEdit1Enter(Sender: TObject);
begin                                   
 if Hesab>=0 then fmCodeSearch.Caption:=FloatToStr(Kol)+'/'+FloatToStr(Moin)+'/'+FloatToStr(Hesab) else
 if Moin>=0 then fmCodeSearch.Caption:=FloatToStr(Kol)+'/'+FloatToStr(Moin)+'/-' else
 if Kol>=0 then fmCodeSearch.Caption:=FloatToStr(Kol)+'/-/-' ;

///////Change
 if Control='Customer' then begin
  CustomerSearch(MNEdit1.Text);
  Exit;
 end else
 if Control='Describe' then begin
  Describe(MNEdit1.Text);
  Exit;
 end else
 if Control='Cash' then begin
  Cash(MNEdit1.Text);
  Exit;
 end else
 if HesabKolBox.Checked then
  HesabKolSearch(MNEdit1.Text) else
 if Kol>=0 then begin
  if Moin>=0 then
   HesabSearch(Kol,Moin,MNEdit1.Text) else
   MoinSearch(Kol,MNEdit1.Text) ;
 end else
  KolSearch(MNEdit1.Text);
end;

procedure TfmCodeSearch.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key=VK_INSERT then
  Close else
 if Key=VK_Escape then begin
  Hesab:=-1 ;
  Moin:=-1 ;
  Kol:=-1 ;
  fmCodeSearch.Caption:='';
  MNEdit1.SetFocus;
 end;
end;

procedure TfmCodeSearch.HesabKolBoxClick(Sender: TObject);
begin
 if HesabKolBox.Checked then HesabKolSearch(MNEdit1.Text)
end;

End.
