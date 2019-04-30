unit SanIDU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, DB, ExtCtrls,
  CseZForm ;

type
  TfmSandoghId = class(TCseZForm)
    dsMaster: TDataSource;
    MNDBEdit1: TDBEdit;
    Label1: TLabel;
    MNDBEdit2: TDBEdit;
    Label6: TLabel;
    MNDBEdit3: TDBEdit;
    Label2: TLabel;
    MNDBEdit4: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    MNDBEdit5: TDBEdit;
    MNDBEdit6: TDBEdit;
    Label5: TLabel;
    BitBtn2: TButton;
    BitBtn1: TButton;
    procedure suitempBitBtn2Click(Sender: TObject);
    procedure suitempBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSandoghId: TfmSandoghId;

implementation

uses MastDataU;

{$R *.dfm}

procedure TfmSandoghId.suitempBitBtn2Click(Sender: TObject);
begin
 if dmMastData.taMaster.State in [dsEdit,dsInsert] then
  dmMastData.taMaster.Cancel;
end;

procedure TfmSandoghId.suitempBitBtn1Click(Sender: TObject);
begin
 if dmMastData.taMaster.State in [dsEdit,dsInsert] then
  dmMastData.taMaster.Post;
end;

end.
