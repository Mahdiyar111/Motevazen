object fmPreConnection: TfmPreConnection
  Left = 223
  Top = 191
  BiDiMode = bdRightToLeft
  Caption = 'fmPreConnection'
  ClientHeight = 162
  ClientWidth = 305
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
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 89
    Top = 56
    Width = 27
    Height = 13
    Caption = 'Name'
  end
  object Label2: TLabel
    Left = 54
    Top = 96
    Width = 62
    Height = 13
    Caption = 'Server Name'
  end
  object Label3: TLabel
    Left = 40
    Top = 136
    Width = 76
    Height = 13
    Caption = 'DataBase Name'
  end
  object Label4: TLabel
    Left = 91
    Top = 15
    Width = 25
    Height = 13
    Caption = 'Code'
  end
  object MNEdit1: TMNTEdit
    Left = 128
    Top = 48
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
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
  object MNEdit2: TMNTEdit
    Left = 128
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 2
    EditKind = Edit
    NotEmpty = False
    BlnTitle = 'MN Software && Mahdiyar Softwares'
    BlnDuration = 0
    BlnHorizontal = blnLeft
    BlnVertical = blnTop
    BlnPosition = blnArrowTopLeft
    BlnControl = MNEdit2
    BlnPixelCoordinateX = 0
    BlnPixelCoordinateY = 0
    BalloonType = blnInfo
  end
  object MNEdit3: TMNTEdit
    Left = 128
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 3
    OnExit = MNEdit3Exit
    EditKind = Edit
    NotEmpty = False
    BlnTitle = 'MN Software && Mahdiyar Softwares'
    BlnDuration = 0
    BlnHorizontal = blnLeft
    BlnVertical = blnTop
    BlnPosition = blnArrowTopLeft
    BlnControl = MNEdit3
    BlnPixelCoordinateX = 0
    BlnPixelCoordinateY = 0
    BalloonType = blnInfo
  end
  object MNNumEdit1: TMNTEdit
    Left = 128
    Top = 9
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '1'
    EditKind = Edit
    NotEmpty = False
    BlnTitle = 'MN Software && Mahdiyar Softwares'
    BlnDuration = 0
    BlnHorizontal = blnLeft
    BlnVertical = blnTop
    BlnPosition = blnArrowTopLeft
    BlnControl = MNNumEdit1
    BlnPixelCoordinateX = 0
    BlnPixelCoordinateY = 0
    BalloonType = blnInfo
  end
end
