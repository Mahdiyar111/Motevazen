object fmSandoghId: TfmSandoghId
  Left = 192
  Top = 114
  BiDiMode = bdRightToLeft
  Caption = #1605#1588#1582#1589#1575#1578' '#1587#1575#1586#1605#1575#1606
  ClientHeight = 233
  ClientWidth = 361
  Color = clBtnFace
  Constraints.MinHeight = 32
  Constraints.MinWidth = 130
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poMainFormCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 277
    Top = 15
    Width = 50
    Height = 13
    Caption = #1606#1575#1605' '#1589#1606#1583#1608#1602
  end
  object Label6: TLabel
    Left = 279
    Top = 46
    Width = 41
    Height = 13
    Caption = #1705#1583' '#1588#1593#1576#1607
  end
  object Label2: TLabel
    Left = 277
    Top = 78
    Width = 43
    Height = 13
    Caption = #1606#1575#1605' '#1588#1593#1576#1607
  end
  object Label3: TLabel
    Left = 277
    Top = 109
    Width = 21
    Height = 13
    Caption = #1578#1604#1601#1606
  end
  object Label4: TLabel
    Left = 277
    Top = 142
    Width = 78
    Height = 13
    Caption = #1662#1587#1578' '#1575#1604#1705#1578#1585#1608#1606#1610#1705#1610
  end
  object Label5: TLabel
    Left = 277
    Top = 174
    Width = 32
    Height = 13
    Caption = #1606#1588#1575#1606#1610
  end
  object MNDBEdit1: TDBEdit
    Left = 16
    Top = 9
    Width = 257
    Height = 21
    BiDiMode = bdRightToLeft
    DataField = 'Name'
    DataSource = dsMaster
    ParentBiDiMode = False
    TabOrder = 0
  end
  object MNDBEdit2: TDBEdit
    Left = 216
    Top = 41
    Width = 57
    Height = 21
    BiDiMode = bdRightToLeft
    DataField = 'Branch_Code'
    DataSource = dsMaster
    ParentBiDiMode = False
    TabOrder = 1
  end
  object MNDBEdit3: TDBEdit
    Left = 16
    Top = 73
    Width = 257
    Height = 21
    BiDiMode = bdRightToLeft
    DataField = 'Branch'
    DataSource = dsMaster
    ParentBiDiMode = False
    TabOrder = 2
  end
  object MNDBEdit4: TDBEdit
    Left = 152
    Top = 105
    Width = 121
    Height = 21
    BiDiMode = bdRightToLeft
    DataField = 'Tel'
    DataSource = dsMaster
    ParentBiDiMode = False
    TabOrder = 3
  end
  object MNDBEdit5: TDBEdit
    Left = 104
    Top = 137
    Width = 169
    Height = 21
    BiDiMode = bdRightToLeft
    DataField = 'Email'
    DataSource = dsMaster
    ParentBiDiMode = False
    TabOrder = 4
  end
  object MNDBEdit6: TDBEdit
    Left = 16
    Top = 169
    Width = 257
    Height = 21
    BiDiMode = bdRightToLeft
    DataField = 'Address'
    DataSource = dsMaster
    ParentBiDiMode = False
    TabOrder = 5
  end
  object BitBtn2: TButton
    Left = 184
    Top = 200
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = suitempBitBtn2Click
  end
  object BitBtn1: TButton
    Left = 96
    Top = 200
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = suitempBitBtn1Click
  end
  object dsMaster: TDataSource
    DataSet = dmMastData.taMaster
    Left = 80
    Top = 40
  end
end
