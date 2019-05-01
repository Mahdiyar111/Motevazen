object fmRegTrn: TfmRegTrn
  Left = 192
  Top = 114
  BiDiMode = bdRightToLeft
  Caption = 'fmRegTrn'
  ClientHeight = 524
  ClientWidth = 863
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 863
    Height = 81
    Align = alTop
    Caption = #1578#1575#1585#1740#1582' '#1587#1606#1583
    TabOrder = 0
    object MNTEdit1: TMNTEdit
      Left = 720
      Top = 32
      Width = 121
      Height = 21
      MaxLength = 10
      TabOrder = 0
      Text = '1398/02/11'
      OnExit = MNTEdit1Exit
      EditKind = ShDate
      NotEmpty = False
      LabelEdit = #1578#1575#1585#1740#1582
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
    object DBNavigator1: TDBNavigator
      Left = 24
      Top = 29
      Width = 224
      Height = 25
      DataSource = dsTrnHead
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        #1575#1576#1578#1583#1575
        #1602#1576#1604#1740
        #1576#1593#1583#1740
        #1575#1606#1578#1607#1575
        'Insert record'
        'Delete record'
        'Edit record'
        'Post edit'
        'Cancel edit'
        'Refresh data'
        'Apply updates'
        'Cancel updates')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 81
    Width = 863
    Height = 152
    Align = alTop
    Caption = #1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578
    TabOrder = 1
    object sLabelFX1: TsLabelFX
      Left = 587
      Top = 29
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
      Left = 800
      Top = 32
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
      Left = 753
      Top = 32
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
      Left = 626
      Top = 32
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
    object MNTEdit2: TMNTEdit
      Left = 720
      Top = 59
      Width = 121
      Height = 21
      TabOrder = 3
      OnExit = MNTEdit2Exit
      EditKind = Money
      NotEmpty = True
      LabelEdit = #1605#1576#1604#1594' '#1605#1588#1575#1585#1705#1578
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
    object MNTEdit3: TMNTEdit
      Left = 648
      Top = 59
      Width = 66
      Height = 21
      TabOrder = 4
      OnExit = MNTEdit3Exit
      EditKind = RealEdit
      NotEmpty = True
      LabelEdit = #1606#1585#1582' '#1587#1607#1605' '#1605#1575
      BlnTitle = 'MN Software && Mahdiyar Softwares'
      BlnDuration = 0
      BlnHorizontal = blnLeft
      BlnVertical = blnTop
      BlnPosition = blnArrowTopLeft
      BlnControl = MNTEdit3
      BlnPixelCoordinateX = 0
      BlnPixelCoordinateY = 0
      BalloonType = blnInfo
    end
    object MNTEdit4: TMNTEdit
      Left = 521
      Top = 59
      Width = 121
      Height = 21
      OEMConvert = True
      TabOrder = 5
      OnExit = MNTEdit4Exit
      EditKind = Money
      NotEmpty = True
      LabelEdit = #1587#1608#1583
      BlnTitle = 'MN Software && Mahdiyar Softwares'
      BlnDuration = 0
      BlnHorizontal = blnLeft
      BlnVertical = blnTop
      BlnPosition = blnArrowTopLeft
      BlnControl = MNTEdit4
      BlnPixelCoordinateX = 0
      BlnPixelCoordinateY = 0
      BalloonType = blnInfo
    end
    object MNTEdit5: TMNTEdit
      Left = 138
      Top = 59
      Width = 377
      Height = 21
      TabOrder = 6
      OnExit = MNTEdit5Exit
      EditKind = Edit
      NotEmpty = True
      LabelEdit = #1578#1608#1590#1740#1581#1575#1578
      BlnTitle = 'MN Software && Mahdiyar Softwares'
      BlnDuration = 0
      BlnHorizontal = blnLeft
      BlnVertical = blnTop
      BlnPosition = blnArrowTopLeft
      BlnControl = MNTEdit5
      BlnPixelCoordinateX = 0
      BlnPixelCoordinateY = 0
      BalloonType = blnInfo
    end
    object sBitBtn1: TsBitBtn
      Left = 567
      Top = 112
      Width = 75
      Height = 25
      Action = NewAction
      Caption = #1580#1583#1740#1583
      TabOrder = 8
      ImageIndex = 6
      Images = dmMastData.sCharImageList1
    end
    object sBitBtn2: TsBitBtn
      Left = 486
      Top = 112
      Width = 75
      Height = 25
      Action = CancelAction
      Caption = #1575#1606#1589#1585#1575#1601
      TabOrder = 9
      ImageIndex = 4
      Images = dmMastData.sCharImageList1
    end
    object sBitBtn3: TsBitBtn
      Left = 405
      Top = 112
      Width = 75
      Height = 25
      Action = DeleteAction
      Caption = #1581#1584#1601
      TabOrder = 10
      ImageIndex = 5
      Images = dmMastData.sCharImageList1
    end
    object sBitBtn4: TsBitBtn
      Left = 324
      Top = 113
      Width = 75
      Height = 25
      Action = SaveAction
      Caption = #1584#1582#1740#1585#1607
      TabOrder = 11
      ImageIndex = 3
      Images = dmMastData.sCharImageList1
    end
    object RadioGroup1: TRadioGroup
      Left = 30
      Top = 48
      Width = 102
      Height = 39
      Caption = #1705#1587#1585' '#1740#1575' '#1575#1590#1575#1601#1607
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        #1705#1587#1585
        #1575#1590#1575#1601#1607)
      TabOrder = 7
      OnExit = RadioGroup1Exit
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 233
    Width = 863
    Height = 291
    Align = alClient
    Caption = #1606#1605#1575#1740#1588
    TabOrder = 2
    object DBGridEh1: TDBGridEh
      Left = 2
      Top = 15
      Width = 859
      Height = 274
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
  object FDTaTrnHead: TFDTable
    AfterScroll = FDTaTrnHeadAfterScroll
    IndexFieldNames = 'RegDate'
    Connection = dmMastData.FDConnection1
    UpdateOptions.UpdateTableName = 'Motevazen.dbo.TrnHead'
    TableName = 'Motevazen.dbo.TrnHead'
    Left = 144
    Top = 40
    object FDTaTrnHeadRegDate: TIntegerField
      FieldName = 'RegDate'
      Origin = 'RegDate'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object FDQuTrn: TFDQuery
    Connection = dmMastData.FDConnection1
    SQL.Strings = (
      'select * from trn where regdate=1')
    Left = 168
    Top = 96
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
  object dsTrnHead: TDataSource
    DataSet = FDTaTrnHead
    Left = 192
    Top = 40
  end
  object dsTrn: TDataSource
    DataSet = FDQuTrn
    Left = 232
    Top = 96
  end
  object ActionManager1: TActionManager
    Images = dmMastData.sCharImageList1
    Left = 376
    Top = 297
    StyleName = 'Platform Default'
    object NewAction: TAction
      Caption = #1580#1583#1740#1583
      ImageIndex = 6
      OnExecute = NewActionExecute
    end
    object CancelAction: TAction
      Caption = #1575#1606#1589#1585#1575#1601
      ImageIndex = 4
      ShortCut = 27
      OnExecute = CancelActionExecute
    end
    object DeleteAction: TAction
      Caption = #1581#1584#1601
      ImageIndex = 5
    end
    object SaveAction: TAction
      Caption = #1584#1582#1740#1585#1607
      ImageIndex = 3
      OnExecute = SaveActionExecute
    end
  end
end
