object fmCodes: TfmCodes
  Left = 134
  Top = 100
  AutoSize = True
  BiDiMode = bdRightToLeft
  Caption = #1608#1585#1608#1583' '#1705#1583' '#1705#1604' '#1608' '#1605#1593#1610#1606
  ClientHeight = 401
  ClientWidth = 627
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
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object sGroupBox1: TsGroupBox
    Left = 0
    Top = 0
    Width = 321
    Height = 193
    Caption = #1705#1604
    TabOrder = 0
    SkinData.SkinSection = 'GROUPBOX'
    object Label1: TLabel
      Left = 265
      Top = 20
      Width = 13
      Height = 13
      Caption = #1705#1604
      Transparent = False
    end
    object Label2: TLabel
      Left = 263
      Top = 46
      Width = 23
      Height = 13
      Caption = #1588#1585#1581
    end
    object Label6: TLabel
      Left = 263
      Top = 105
      Width = 31
      Height = 13
      Caption = #1606#1608#1593' '#1705#1604
    end
    object MNNumEdit1: TMNTEdit
      Left = 218
      Top = 14
      Width = 41
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 0
      OnExit = MNNumEdit1Exit
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
    object MNEdit1: TMNTEdit
      Left = 26
      Top = 38
      Width = 233
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
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
    object BitBtn1: TButton
      Left = 240
      Top = 131
      Width = 75
      Height = 25
      Caption = #1578#1575#1610#1610#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = suitempBitBtn1Click
    end
    object BitBtn2: TButton
      Left = 163
      Top = 131
      Width = 75
      Height = 25
      Caption = #1581#1584#1601
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = suitempBitBtn2Click
    end
    object DBNavigator1: TDBNavigator
      Left = 27
      Top = 162
      Width = 232
      Height = 25
      DataSource = dsKol
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 6
    end
    object sRadioGroup1: TsRadioGroup
      Left = 28
      Top = 59
      Width = 231
      Height = 42
      BiDiMode = bdLeftToRight
      Caption = #1605#1575#1607#1610#1578' '#1605#1575#1606#1583#1607
      ParentBackground = False
      ParentBiDiMode = False
      TabOrder = 2
      SkinData.SkinSection = 'GROUPBOX'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        #1576#1583#1607#1705#1575#1585
        #1576#1587#1578#1575#1606#1705#1575#1585
        #1607#1585#1583#1608)
    end
    object sComboBox1: TsComboBox
      Left = 28
      Top = 102
      Width = 231
      Height = 21
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Alignment = taRightJustify
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      SkinData.SkinSection = 'COMBOBOX'
      Color = 16777200
      BiDiMode = bdLeftToRight
      ItemIndex = -1
      ParentBiDiMode = False
      TabOrder = 3
      Text = #1576#1583#1607#1610#1607#1575#1610' '#1580#1575#1585#1610
      Items.Strings = (
        #1576#1583#1607#1610#1607#1575#1610' '#1580#1575#1585#1610
        #1576#1583#1607#1610#1607#1575#1610' '#1594#1610#1585#1580#1575#1585#1610
        #1581#1587#1575#1576#1607#1575#1610' '#1575#1606#1578#1592#1575#1605#1610
        #1581#1602#1608#1602' '#1589#1575#1581#1576#1575#1606' '#1587#1607#1575#1605
        #1583#1575#1585#1575#1574#1610#1607#1575#1610' '#1580#1575#1585#1610
        #1583#1575#1585#1575#1574#1610#1607#1575#1610' '#1594#1610#1585#1580#1575#1585#1610
        #1601#1585#1608#1588' '#1608' '#1583#1585#1570#1605#1583#1607#1575
        #1602#1610#1605#1578' '#1578#1605#1575#1605' '#1588#1583#1607
        #1581#1587#1575#1576' '#1607#1575#1610' '#1605#1608#1602#1578
        #1575#1582#1578#1578#1575#1605#1610#1607
        #1575#1601#1578#1578#1575#1581#1610#1607)
    end
    object sCheckBox2: TsCheckBox
      Left = 95
      Top = 124
      Width = 58
      Height = 17
      Caption = #1575#1602#1604#1575#1605' '#1576#1575#1586
      TabOrder = 7
      SkinData.SkinSection = 'CHECKBOX'
    end
    object sCheckBox3: TsCheckBox
      Left = 91
      Top = 141
      Width = 62
      Height = 17
      Caption = #1608#1580#1608#1607' '#1606#1602#1583
      TabOrder = 8
      SkinData.SkinSection = 'CHECKBOX'
    end
  end
  object sGroupBox2: TsGroupBox
    Left = 0
    Top = 192
    Width = 321
    Height = 209
    Caption = #1605#1593#1610#1606
    TabOrder = 1
    SkinData.SkinSection = 'GROUPBOX'
    object Label3: TLabel
      Left = 274
      Top = 20
      Width = 24
      Height = 13
      Caption = #1605#1593#1610#1606
    end
    object Label4: TLabel
      Left = 275
      Top = 44
      Width = 23
      Height = 13
      Caption = #1588#1585#1581
    end
    object Label5: TLabel
      Left = 254
      Top = 189
      Width = 12
      Height = 13
      Alignment = taRightJustify
      Caption = '...'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object MNNumEdit2: TMNTEdit
      Left = 225
      Top = 13
      Width = 41
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 0
      OnExit = MNNumEdit2Exit
      EditKind = Edit
      NotEmpty = False
      BlnTitle = 'MN Software && Mahdiyar Softwares'
      BlnDuration = 0
      BlnHorizontal = blnLeft
      BlnVertical = blnTop
      BlnPosition = blnArrowTopLeft
      BlnControl = MNNumEdit2
      BlnPixelCoordinateX = 0
      BlnPixelCoordinateY = 0
      BalloonType = blnInfo
    end
    object MNEdit2: TMNTEdit
      Left = 34
      Top = 37
      Width = 233
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 1
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
    object sRadioGroup2: TsRadioGroup
      Left = 20
      Top = 58
      Width = 270
      Height = 46
      BiDiMode = bdLeftToRight
      Caption = #1705#1606#1578#1585#1604' '#1587#1585#1610#1575#1604
      ParentBackground = False
      ParentBiDiMode = False
      TabOrder = 2
      SkinData.SkinSection = 'GROUPBOX'
      Columns = 4
      ItemIndex = 0
      Items.Strings = (
        #1607#1610#1670#1705#1583#1575#1605
        #1576#1583#1607#1705#1575#1585
        #1576#1587#1578#1575#1606#1705#1575#1585
        #1607#1585#1583#1608)
    end
    object BitBtn3: TButton
      Left = 240
      Top = 148
      Width = 75
      Height = 25
      Caption = #1578#1575#1610#1610#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = suitempBitBtn3Click
    end
    object BitBtn4: TButton
      Left = 161
      Top = 148
      Width = 75
      Height = 25
      Caption = #1581#1584#1601
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = suitempBitBtn4Click
    end
    object DBNavigator2: TDBNavigator
      Left = 49
      Top = 178
      Width = 220
      Height = 25
      DataSource = dsMoin
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 6
    end
    object BitBtn7: TButton
      Left = 3
      Top = 148
      Width = 75
      Height = 25
      Caption = #1670#1575#1662
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = BitBtn7Click
    end
    object sCheckBox1: TsCheckBox
      Left = 190
      Top = 107
      Width = 102
      Height = 17
      Caption = #1605#1575#1606#1583#1607' '#1705#1606#1578#1585#1604' '#1588#1608#1583#1567
      TabOrder = 3
      SkinData.SkinSection = 'CHECKBOX'
    end
    object Button1: TButton
      Left = 82
      Top = 148
      Width = 75
      Height = 25
      Caption = #1575#1610#1580#1575#1583' '#1583#1587#1578#1607' '#1575#1610
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 4
      Top = 119
      Width = 75
      Height = 25
      Caption = #1575#1610#1580#1575#1583' '#1581#1587#1575#1576
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = Button2Click
    end
    object sCheckBox4: TsCheckBox
      Left = 96
      Top = 107
      Width = 82
      Height = 17
      Caption = #1582#1585#1610#1583' '#1608' '#1601#1585#1608#1588
      TabOrder = 10
      SkinData.SkinSection = 'CHECKBOX'
    end
    object sCheckBox5: TsCheckBox
      Left = 179
      Top = 125
      Width = 113
      Height = 17
      Caption = #1583#1585#1610#1575#1601#1578' '#1581#1587#1575#1576' '#1605#1585#1580#1593
      TabOrder = 11
      SkinData.SkinSection = 'CHECKBOX'
    end
  end
  object sGroupBox3: TsGroupBox
    Left = 323
    Top = 0
    Width = 304
    Height = 401
    Caption = #1606#1605#1575#1610#1607' '#1583#1585#1582#1578#1610' '#1705#1604' '#1608' '#1605#1593#1610#1606' '#1608' '#1581#1587#1575#1576
    TabOrder = 2
    SkinData.SkinSection = 'GROUPBOX'
    object sBitBtn1: TsBitBtn
      Left = 115
      Top = 461
      Width = 75
      Height = 25
      Caption = #1606#1605#1575#1610#1588
      TabOrder = 0
      OnClick = sBitBtn1Click
      SkinData.SkinSection = 'BUTTON'
    end
    object DBGridEh2: TDBGridEh
      Left = 2
      Top = 15
      Width = 300
      Height = 384
      Align = alClient
      BiDiMode = bdLeftToRight
      DataSource = dsKol
      DynProps = <>
      Flat = True
      FooterParams.Color = clWindow
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      ParentBiDiMode = False
      ReadOnly = True
      RowDetailPanel.Active = True
      RowDetailPanel.ActiveControl = BitBtn1
      TabOrder = 1
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Kol'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1705#1604
          Title.TitleButton = True
          Width = 50
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Des'
          Footers = <>
          Title.Caption = #1588#1585#1581' '#1705#1604
          Title.TitleButton = True
          Width = 215
        end>
      object RowDetailData: TRowDetailPanelControlEh
        object DBGridEh1: TDBGridEh
          Left = 0
          Top = 0
          Width = 246
          Height = 118
          Align = alClient
          BiDiMode = bdLeftToRight
          DataSource = dsMoin
          DynProps = <>
          Flat = True
          FooterParams.Color = clWindow
          IndicatorTitle.ShowDropDownSign = True
          IndicatorTitle.TitleButton = True
          ParentBiDiMode = False
          ReadOnly = True
          RowDetailPanel.Active = True
          TabOrder = 0
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Moin'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1605#1593#1610#1606
              Title.TitleButton = True
              Width = 50
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Des'
              Footers = <>
              Title.Caption = #1588#1585#1581' '#1605#1593#1610#1606
              Title.TitleButton = True
              Width = 160
            end>
          object RowDetailData: TRowDetailPanelControlEh
            object DBGridEh3: TDBGridEh
              Left = 0
              Top = 0
              Width = 191
              Height = 83
              Align = alClient
              BiDiMode = bdLeftToRight
              DataSource = dsHesab
              DynProps = <>
              Flat = True
              FooterParams.Color = clWindow
              IndicatorTitle.ShowDropDownSign = True
              IndicatorTitle.TitleButton = True
              ParentBiDiMode = False
              TabOrder = 0
              Columns = <
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'Hesab'
                  Footers = <>
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = #1581#1587#1575#1576
                  Title.TitleButton = True
                  Width = 50
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'Des'
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = #1588#1585#1581' '#1581#1587#1575#1576
                  Title.TitleButton = True
                  Width = 120
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'Bodjet_Code'
                  Footers = <>
                  Title.Caption = #1705#1583' '#1576#1608#1583#1580#1607
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
        end
      end
    end
  end
  object taKol: TADOTable
    Connection = dmMastData.ADOConnection1
    CursorType = ctStatic
    AfterScroll = taKolAfterScroll
    TableName = 'Kol'
    Left = 64
    Top = 32
    object taKolKol: TIntegerField
      FieldName = 'Kol'
    end
    object taKolDes: TStringField
      FieldName = 'Des'
      Size = 30
    end
    object taKolKind: TSmallintField
      FieldName = 'Kind'
    end
    object taKolKol_Kind: TSmallintField
      FieldName = 'Kol_Kind'
    end
    object taKolOpenItem: TSmallintField
      FieldName = 'OpenItem'
    end
    object taKolCash: TSmallintField
      FieldName = 'Cash'
    end
  end
  object taMoin: TADOTable
    Connection = dmMastData.ADOConnection1
    CursorType = ctStatic
    AfterScroll = taMoinAfterScroll
    IndexFieldNames = 'Kol'
    TableName = 'Moin'
    Left = 24
    Top = 245
    object taMoinKol: TIntegerField
      FieldName = 'Kol'
    end
    object taMoinMoin: TIntegerField
      FieldName = 'Moin'
    end
    object taMoinDes: TStringField
      FieldName = 'Des'
      Size = 30
    end
    object taMoinSerialControl: TSmallintField
      FieldName = 'SerialControl'
    end
    object taMoinMandehControl: TSmallintField
      FieldName = 'MandehControl'
    end
    object taMoinSignPath: TStringField
      FieldName = 'SignPath'
      Size = 50
    end
    object taMoinBuySell: TSmallintField
      FieldName = 'BuySell'
    end
    object taMoinSourceHN: TSmallintField
      FieldName = 'SourceHN'
    end
  end
  object dsKol: TDataSource
    DataSet = MemTableKol
    Left = 64
    Top = 64
  end
  object dsMoin: TDataSource
    DataSet = MemTableMoin
    Left = 32
    Top = 277
  end
  object Query: TADOQuery
    Connection = dmMastData.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select kol,des from kol')
    Left = 128
    Top = 72
  end
  object dsQuery: TDataSource
    DataSet = Query
    Left = 152
    Top = 72
  end
  object QuRep: TADOQuery
    Connection = dmMastData.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select Moin.Kol,Kol.Des As KolDes,Moin,Moin.Des From Moin Left O' +
        'uter Join Kol On '
      'Moin.Kol=Kol.Kol Order By Moin.Kol,Moin ')
    Left = 128
    Top = 360
    object QuRepKol: TIntegerField
      FieldName = 'Kol'
    end
    object QuRepDes: TStringField
      FieldName = 'Des'
      Size = 30
    end
    object QuRepMoin: TIntegerField
      FieldName = 'Moin'
    end
    object QuRepKolDes: TStringField
      FieldName = 'KolDes'
      Size = 30
    end
  end
  object frxDBKolMoin: TfrxDBDataset
    UserName = 'frxDBDKolMoin'
    CloseDataSource = True
    FieldAliases.Strings = (
      'Kol=KOl'
      'Des=Des'
      'Moin=Moin'
      'KolDes=KolDes')
    DataSet = QuRep
    BCDToCurrency = False
    Left = 256
    Top = 368
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 224
    Top = 368
  end
  object frxKolMoinRep: TfrxReport
    Version = '6.2.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1662#1610#1588' '#1601#1585#1590
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39954.816454895800000000
    ReportOptions.LastChange = 39954.816454895800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 192
    Top = 368
    Datasets = <
      item
        DataSet = frxDBKolMoin
        DataSetName = 'frxDBDKolMoin'
      end
      item
        DataSet = dmMastData.frxDBMaster
        DataSetName = 'frxDBMaster'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Gradient3: TfrxGradientView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 75.590600000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = clAqua
          Style = gsElliptic
          Frame.Typ = []
          Color = 16777088
        end
        object Shape4: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 75.590600000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 311.811225000000000000
          Top = 2.669295000000002000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1576#1575#1587#1605#1607' '#1578#1593#1575#1604#1610)
          ParentFont = False
          RTLReading = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 311.811225000000000000
          Top = 22.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[('#39' '#1711#1586#1575#1585#1588' '#1705#1604' '#1608' '#1605#1593#1610#1606' '#39'+<frxDBMaster."Name">)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 7.559059999999999000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1578#1575#1585#1610#1582)
          ParentFont = False
          RTLReading = True
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 7.559059999999999000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1705#1575#1585#1576#1585)
          ParentFont = False
          RTLReading = True
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        DataSet = frxDBKolMoin
        DataSetName = 'frxDBDKolMoin'
        RowCount = 0
        object frxDBDKolMoinMoin: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'Moin'
          DataSet = frxDBKolMoin
          DataSetName = 'frxDBDKolMoin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'B Yekan'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDKolMoin."Moin"]')
          ParentFont = False
        end
        object frxDBDKolMoinDes: TfrxMemoView
          AllowVectorExport = True
          Left = 294.803340000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'Des'
          DataSet = frxDBKolMoin
          DataSetName = 'frxDBDKolMoin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'B Yekan'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDKolMoin."Des"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDKolMoin."KOl"'
        object frxDBDKolMoinKOl: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 469.661720000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          DataField = 'KOl'
          DataSet = frxDBKolMoin
          DataSetName = 'frxDBDKolMoin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'B Titr'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDKolMoin."KOl"]')
          ParentFont = False
        end
        object frxDBDKolMoinKolDes: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 469.661720000000000000
          Height = 22.677180000000000000
          DataField = 'KolDes'
          DataSet = frxDBKolMoin
          DataSetName = 'frxDBDKolMoin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'B Titr'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDKolMoin."KolDes"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 571.709030000000000000
          Width = 146.401670000000000000
          Height = 22.677180000000000000
          DataSet = frxDBKolMoin
          DataSetName = 'frxDBDKolMoin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'B Titr'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            ' '#1605#1593#1610#1606' '#1607#1575#1610' '#1605#1585#1576#1608#1591' '#1576#1607' '#1705#1583' '#1705#1604)
          ParentFont = False
        end
      end
    end
  end
  object dsHesab: TDataSource
    DataSet = MemTableHesab
    Left = 88
    Top = 365
  end
  object QuHesab: TADOQuery
    Connection = dmMastData.ADOConnection1
    CursorType = ctStatic
    AfterPost = QuHesabAfterPost
    DataSource = dsMoin
    Parameters = <>
    SQL.Strings = (
      'Select Hesab_No,Hesab,Kol,Moin,'
      #13#13'IsNull(FName,'#39#39')+'#39'  '#39'+IsNull(LName,'#39#39') as Des'#10
      ''
      ''
      ''
      #13'From Hesab  Left Outer Join Customer '
      'On Hesab.Customer_Id=Customer.Customer_Id  '
      'Order By Hesab')
    Left = 16
    Top = 360
    object QuHesabHesab_No: TStringField
      FieldName = 'Hesab_No'
    end
    object QuHesabHesab: TFloatField
      FieldName = 'Hesab'
    end
    object QuHesabDes: TStringField
      FieldName = 'Des'
      ReadOnly = True
      Size = 202
    end
    object QuHesabKol: TIntegerField
      FieldName = 'Kol'
    end
    object QuHesabMoin: TIntegerField
      FieldName = 'Moin'
    end
  end
  object DataSetDriverKol: TDataSetDriverEh
    ProviderDataSet = taKol
    Left = 419
    Top = 360
  end
  object MemTableKol: TMemTableEh
    Params = <>
    DataDriver = DataSetDriverKol
    AfterPost = MemTableKolAfterPost
    AfterScroll = MemTableKolAfterScroll
    Left = 379
    Top = 360
    object MemTableKolKol: TIntegerField
      FieldName = 'Kol'
    end
    object MemTableKolDes: TStringField
      FieldName = 'Des'
      Size = 30
    end
    object MemTableKolKind: TSmallintField
      FieldName = 'Kind'
    end
    object MemTableKolKol_Kind: TSmallintField
      FieldName = 'Kol_Kind'
    end
    object MemTableKolOpenItem: TSmallintField
      FieldName = 'OpenItem'
    end
    object MemTableKolCash: TSmallintField
      FieldName = 'Cash'
    end
  end
  object DataSetDriverMoin: TDataSetDriverEh
    ProviderDataSet = taMoin
    Left = 411
    Top = 312
  end
  object MemTableMoin: TMemTableEh
    DetailFields = 'Kol'
    MasterFields = 'Kol'
    MasterSource = dsKol
    Params = <>
    DataDriver = DataSetDriverMoin
    AfterPost = MemTableMoinAfterPost
    AfterScroll = MemTableMoinAfterScroll
    Left = 379
    Top = 312
    object MemTableMoinKol: TIntegerField
      FieldName = 'Kol'
    end
    object MemTableMoinMoin: TIntegerField
      FieldName = 'Moin'
    end
    object MemTableMoinDes: TStringField
      FieldName = 'Des'
      Size = 30
    end
    object MemTableMoinSerialControl: TSmallintField
      FieldName = 'SerialControl'
    end
    object MemTableMoinMandehControl: TSmallintField
      FieldName = 'MandehControl'
    end
    object MemTableMoinSignPath: TStringField
      FieldName = 'SignPath'
      Size = 50
    end
    object MemTableMoinBuySell: TSmallintField
      FieldName = 'BuySell'
    end
    object MemTableMoinSourceHN: TSmallintField
      FieldName = 'SourceHN'
    end
  end
  object DataSetDriverHesab: TDataSetDriverEh
    ProviderDataSet = QuHesab
    Left = 529
    Top = 165
  end
  object MemTableHesab: TMemTableEh
    DetailFields = 'Kol;Moin'
    MasterFields = 'Kol;Moin'
    MasterSource = dsMoin
    Params = <>
    DataDriver = DataSetDriverHesab
    AfterPost = MemTableHesabAfterPost
    Left = 489
    Top = 165
    object MemTableHesabHesab: TFloatField
      FieldName = 'Hesab'
    end
    object MemTableHesabDes: TStringField
      FieldName = 'Des'
      Size = 202
    end
    object MemTableHesabHesab_No: TStringField
      FieldName = 'Hesab_No'
    end
    object MemTableHesabKol: TIntegerField
      FieldName = 'Kol'
    end
    object MemTableHesabMoin: TIntegerField
      FieldName = 'Moin'
    end
  end
end
