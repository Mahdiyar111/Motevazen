object fmCodeSearch: TfmCodeSearch
  Left = 185
  Top = 191
  BiDiMode = bdRightToLeft
  Caption = #1580#1587#1578#1580#1608
  ClientHeight = 188
  ClientWidth = 463
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
  Position = poDesktopCenter
  Scaled = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 424
    Top = -2
    Width = 23
    Height = 13
    Caption = #1588#1585#1581
  end
  object suiDBGrid1: TDBGrid
    Left = 24
    Top = 47
    Width = 432
    Height = 129
    BorderStyle = bsNone
    DataSource = DataSource1
    FixedColor = 10504772
    ParentColor = True
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyDown = suiDBGrid1KeyDown
    OnKeyPress = suiDBGrid1KeyPress
  end
  object MNEdit1: TMNTEdit
    Left = 280
    Top = 12
    Width = 174
    Height = 21
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    TabOrder = 0
    OnChange = MNEdit1Change
    OnEnter = MNEdit1Enter
    EditKind = Edit
    NotEmpty = False
    BlnTitle = 'MN Software && Mahdiyar Softwares'
    BlnDuration = 0
    BlnHorizontal = blnLeft
    BlnVertical = blnTop
    BlnPosition = blnArrowTopLeft
    BlnControl = MNEdit1
    BlnPixelCoordinateX = 0
    BlnPixelCoordinateY = 0
    BalloonType = blnInfo
  end
  object HesabKolBox: TsCheckBox
    Left = 32
    Top = 8
    Width = 78
    Height = 17
    Caption = #1705#1604#1610#1607' '#1581#1587#1575#1576#1607#1575
    TabOrder = 2
    OnClick = HesabKolBoxClick
    SkinData.SkinSection = 'CHECKBOX'
  end
  object QuSearch: TADOQuery
    Connection = dmMastData.ADOConnection1
    Parameters = <>
    Left = 40
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = QuSearch
    Left = 40
    Top = 72
  end
end
