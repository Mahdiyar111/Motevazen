unit PreConnU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, MNTEDIT, IniFiles;

type
  TfmPreConnection = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MNEdit1: TMNTEdit;
    MNEdit2: TMNTEdit;
    MNEdit3: TMNTEdit;
    MNNumEdit1: TMNTEdit;
    Label4: TLabel;
    procedure MNEdit3Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    PName:String;
  end;

var
  fmPreConnection: TfmPreConnection;

implementation

uses MastDataU;

{$R *.dfm}

procedure TfmPreConnection.MNEdit3Exit(Sender: TObject);
var S:WideString;
    Inif:TIniFile;
begin
 if MNEdit1.Text='mn260' then begin
  Inif:=TIniFile.Create('Data\MNConfig.ini');
  S:='Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog='+MNEdit3.Text+';Data Source='+MNEdit2.Text+';Use Procedure for Prepare=1;Auto Translate=False;Packet Size=4096;Workstation ID=Auto;Use Encryption for Data=False;Tag with column collation when possible=False';
  Inif.WriteString(PName,MNEdit1.Text,s);
  Inif.WriteString('FD'+PName,'Server',MNEdit2.Text);
  Inif.WriteString('FD'+PName,'Database',MNEdit3.Text);
  dmMastData.FDConnection1.Params.Clear;

  dmMastData.FDConnection1.Params.Add('Server='+MNEdit2.Text);
  dmMastData.FDConnection1.Params.Add('Database='+MNEdit3.Text);
  dmMastData.FDConnection1.Params.Add('Workstation=Auto');
  dmMastData.FDConnection1.Params.Add('DriverID=MSSQL');
  dmMastData.FDConnection1.Connected:=True;
 end;
 try
  dmMastData.ADOConnection1.Connected:=True;
  fmPreConnection.Close;
 except
  MNEdit1.SetFocus;
 end;
end;

end.
