object fmTrnRep: TfmTrnRep
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  Caption = 'fmTrnRep'
  ClientHeight = 445
  ClientWidth = 878
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 878
    Height = 65
    Align = alTop
    Caption = #1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578
    TabOrder = 0
    object sLabelFX1: TsLabelFX
      Left = 611
      Top = 21
      Width = 28
      Height = 21
      Alignment = taRightJustify
      BiDiMode = bdRightToLeftNoAlign
      Caption = '.....'
      ParentBiDiMode = False
      ParentFont = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Angle = 0
      Shadow.OffsetKeeper.LeftTop = -3
      Shadow.OffsetKeeper.RightBottom = 5
    end
    object MNNumEdit12: TMNTEdit
      Left = 824
      Top = 24
      Width = 41
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 0
      OnExit = MNNumEdit12Exit
      EditKind = NumEdit
      NotEmpty = True
      LabelEdit = #1705#1604
      BlnTitle = 'MN Software && Mahdiyar Softwares'
      BlnDuration = 0
      BlnHorizontal = blnLeft
      BlnVertical = blnTop
      BlnPosition = blnArrowTopLeft
      BlnControl = MNNumEdit12
      BlnPixelCoordinateX = 0
      BlnPixelCoordinateY = 0
      BalloonType = blnInfo
    end
    object MNNumEdit13: TMNTEdit
      Left = 777
      Top = 24
      Width = 41
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 1
      OnExit = MNNumEdit13Exit
      EditKind = NumEdit
      NotEmpty = True
      LabelEdit = #1605#1593#1740#1606
      BlnTitle = 'MN Software && Mahdiyar Softwares'
      BlnDuration = 0
      BlnHorizontal = blnLeft
      BlnVertical = blnTop
      BlnPosition = blnArrowTopLeft
      BlnControl = MNNumEdit13
      BlnPixelCoordinateX = 0
      BlnPixelCoordinateY = 0
      BalloonType = blnInfo
    end
    object MNNumEdit14: TMNTEdit
      Left = 650
      Top = 24
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 2
      OnExit = MNNumEdit14Exit
      EditKind = NumEdit
      NotEmpty = True
      LabelEdit = #1581#1587#1575#1576
      BlnTitle = 'MN Software && Mahdiyar Softwares'
      BlnDuration = 0
      BlnHorizontal = blnLeft
      BlnVertical = blnTop
      BlnPosition = blnArrowTopLeft
      BlnControl = MNNumEdit14
      BlnPixelCoordinateX = 0
      BlnPixelCoordinateY = 0
      BalloonType = blnInfo
    end
    object MNTEdit1: TMNTEdit
      Left = 232
      Top = 24
      Width = 81
      Height = 21
      MaxLength = 10
      TabOrder = 3
      Text = '1398/02/11'
      EditKind = ShDate
      NotEmpty = False
      LabelEdit = #1575#1586' '#1578#1575#1585#1740#1582
      BlnTitle = 'MN Software && Mahdiyar Softwares'
      BlnDuration = 0
      BlnHorizontal = blnLeft
      BlnVertical = blnTop
      BlnPosition = blnArrowTopLeft
      BlnControl = MNTEdit1
      BlnPixelCoordinateX = 0
      BlnPixelCoordinateY = 0
      BalloonType = blnInfo
    end
    object MNTEdit2: TMNTEdit
      Left = 136
      Top = 24
      Width = 81
      Height = 21
      MaxLength = 10
      TabOrder = 4
      Text = '1398/02/11'
      OnExit = MNTEdit2Exit
      EditKind = ShDate
      NotEmpty = False
      LabelEdit = #1578#1575' '#1578#1575#1585#1740#1582
      BlnTitle = 'MN Software && Mahdiyar Softwares'
      BlnDuration = 0
      BlnHorizontal = blnLeft
      BlnVertical = blnTop
      BlnPosition = blnArrowTopLeft
      BlnControl = MNTEdit2
      BlnPixelCoordinateX = 0
      BlnPixelCoordinateY = 0
      BalloonType = blnInfo
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 65
    Width = 878
    Height = 380
    Align = alClient
    Caption = #1606#1605#1575#1740#1588
    TabOrder = 1
    ExplicitTop = 154
    ExplicitWidth = 863
    ExplicitHeight = 291
    object DBGridEh1: TDBGridEh
      Left = 2
      Top = 15
      Width = 874
      Height = 363
      Align = alClient
      DataSource = dsTrn
      DynProps = <>
      Flat = True
      IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
      OddRowColor = clBtnFace
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
      ReadOnly = True
      TabOrder = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Id'
          Footers = <>
          Title.Caption = #1585#1583#1740#1601
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'HesabNo'
          Footers = <>
          Title.Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
          Width = 120
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Des'
          Footers = <>
          Title.Caption = #1578#1608#1590#1740#1581#1575#1578
          Width = 200
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SanadQty'
          Footers = <>
          Title.Caption = #1605#1576#1604#1594' '#1605#1588#1575#1585#1705#1578
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SanadType'
          Footers = <>
          Title.Caption = #1606#1608#1593' '#1587#1606#1583
          Width = 70
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CoPercent'
          Footers = <>
          Title.Caption = #1587#1607#1605' '#1605#1575
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Profit'
          Footers = <>
          Title.Caption = #1587#1608#1583
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object dsTrn: TDataSource
    DataSet = FDQuTrn
    Left = 120
    Top = 160
  end
  object FDQuTrn: TFDQuery
    Connection = dmMastData.FDConnection1
    SQL.Strings = (
      'select * from trn where regdate=1')
    Left = 72
    Top = 160
    object FDQuTrnHesabNo: TStringField
      FieldName = 'HesabNo'
      Origin = 'HesabNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 54
    end
    object FDQuTrnKol: TIntegerField
      FieldName = 'Kol'
      Origin = 'Kol'
      Required = True
    end
    object FDQuTrnMoin: TIntegerField
      FieldName = 'Moin'
      Origin = 'Moin'
      Required = True
    end
    object FDQuTrnHesab: TFMTBCDField
      FieldName = 'Hesab'
      Origin = 'Hesab'
      Precision = 18
      Size = 0
    end
    object FDQuTrnRadif: TIntegerField
      FieldName = 'Radif'
      Origin = 'Radif'
      Required = True
    end
    object FDQuTrnDes: TStringField
      FieldName = 'Des'
      Origin = 'Des'
      Size = 255
    end
    object FDQuTrnSanadQty: TFMTBCDField
      FieldName = 'SanadQty'
      Origin = 'SanadQty'
      DisplayFormat = '###,'
      Precision = 18
      Size = 0
    end
    object FDQuTrnSanadType: TIntegerField
      FieldName = 'SanadType'
      Origin = 'SanadType'
      Required = True
    end
    object FDQuTrnCoPercent: TFloatField
      FieldName = 'CoPercent'
      Origin = 'CoPercent'
    end
    object FDQuTrnProfit: TFMTBCDField
      FieldName = 'Profit'
      Origin = 'Profit'
      DisplayFormat = '###,'
      Precision = 18
      Size = 0
    end
    object FDQuTrnRegDate: TIntegerField
      FieldName = 'RegDate'
      Origin = 'RegDate'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuTrnId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
  end
end
