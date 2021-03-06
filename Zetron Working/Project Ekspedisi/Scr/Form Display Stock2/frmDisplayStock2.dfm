object fmDisplayStock2: TfmDisplayStock2
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Display Stock 2'
  ClientHeight = 385
  ClientWidth = 612
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlHeader: TPanel
    Left = 0
    Top = 50
    Width = 612
    Height = 64
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitTop = 106
    object Label2: TLabel
      Left = 24
      Top = 26
      Width = 70
      Height = 13
      Caption = 'No Surat Jalan'
      Transparent = True
    end
    object btnSearch: TcxButton
      Left = 280
      Top = 21
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = btnSearchClick
    end
    object dbeItemReceiveCode: TcxTextEdit
      Left = 133
      Top = 23
      Properties.CharCase = ecUpperCase
      TabOrder = 1
      Width = 121
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 114
    Width = 612
    Height = 271
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object cgKonosemen: TcxGrid
      Left = 0
      Top = 0
      Width = 612
      Height = 271
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 96
      object cgvStock: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCellDblClick = cgvStockCellDblClick
        DataController.DataSource = dsStock
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cgvStockStorageInDate: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'StorageInDate'
        end
        object cgvStockStorageLocationId: TcxGridDBColumn
          Caption = 'Lokasi'
          DataBinding.FieldName = 'StorageLocationId'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.View = dmEkspedisi.cgvPrevStorageLocation
          Properties.KeyFieldNames = 'StorageLocationId'
          Properties.ListFieldItem = dmEkspedisi.cgvPrevStorageLocationStorageLocationName
        end
        object cgvStockItemReceiveCode: TcxGridDBColumn
          DataBinding.FieldName = 'ItemReceiveCode'
        end
        object cgvStockStockId: TcxGridDBColumn
          Caption = 'Id Stock'
          DataBinding.FieldName = 'StockId'
        end
        object cgvStockSuppliesCode: TcxGridDBColumn
          Caption = 'Kode Barang'
          DataBinding.FieldName = 'SuppliesCode'
        end
        object cgvStockSuppliesName: TcxGridDBColumn
          Caption = 'Nama Barang'
          DataBinding.FieldName = 'SuppliesName'
        end
        object cgvStockQty: TcxGridDBColumn
          Caption = 'Jumlah'
          DataBinding.FieldName = 'Qty'
        end
        object cgvStockNo: TcxGridDBColumn
          DataBinding.FieldName = 'No'
        end
        object cgvStockPackingTransactionCode: TcxGridDBColumn
          Caption = 'Kode Packing'
          DataBinding.FieldName = 'PackingTransactionCode'
        end
        object cgvStockBeritaAcaraCode: TcxGridDBColumn
          Caption = 'Kode Berita Acara'
          DataBinding.FieldName = 'BeritaAcaraCode'
        end
        object cgvStockBerat: TcxGridDBColumn
          DataBinding.FieldName = 'Berat'
        end
        object cgvStockTotalBerat: TcxGridDBColumn
          Caption = 'Total Berat'
          DataBinding.FieldName = 'TotalBerat'
        end
        object cgvStockP: TcxGridDBColumn
          DataBinding.FieldName = 'P'
        end
        object cgvStockL: TcxGridDBColumn
          DataBinding.FieldName = 'L'
        end
        object cgvStockT: TcxGridDBColumn
          DataBinding.FieldName = 'T'
        end
        object cgvStockTotalM3: TcxGridDBColumn
          Caption = 'Total M3'
          DataBinding.FieldName = 'TotalM3'
        end
        object cgvStockMode: TcxGridDBColumn
          DataBinding.FieldName = 'Mode'
        end
        object cgvStockReferenceCode: TcxGridDBColumn
          DataBinding.FieldName = 'ReferenceCode'
        end
        object cgvStockUnitMeasureId: TcxGridDBColumn
          Caption = 'Ukuran Satuan'
          DataBinding.FieldName = 'UnitMeasureId'
        end
      end
      object cgvPrevLocation: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dmEkspedisi.dsPrevStorageLocation
        DataController.KeyFieldNames = 'StorageLocationId'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cgvPrevLocationStorageLocationId: TcxGridDBColumn
          DataBinding.FieldName = 'StorageLocationId'
        end
        object cgvPrevLocationStorageLocationCode: TcxGridDBColumn
          DataBinding.FieldName = 'StorageLocationCode'
        end
        object cgvPrevLocationStorageLocationName: TcxGridDBColumn
          DataBinding.FieldName = 'StorageLocationName'
        end
        object cgvPrevLocationFlagShipStorage: TcxGridDBColumn
          DataBinding.FieldName = 'FlagShipStorage'
        end
      end
      object cgKonosemenLevel1: TcxGridLevel
        GridView = cgvStock
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 612
    Height = 50
    Align = alTop
    TabOrder = 1
    ExplicitLeft = -8
    ExplicitTop = 32
    object Bevel1: TBevel
      Left = 145
      Top = 1
      Width = 10
      Height = 48
      Align = alLeft
      Shape = bsSpacer
      ExplicitLeft = 187
      ExplicitTop = 0
    end
    object cxButton2: TcxButton
      Left = 1
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actOk
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 0
    end
    object cxButton3: TcxButton
      Left = 49
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actCancel
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 1
    end
    object cxButton4: TcxButton
      Left = 97
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actRefresh
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 2
    end
  end
  object ActionList2: TActionList
    Images = dmGlobal.imgIcon24
    Left = 488
    Top = 72
    object actOk: TAction
      Caption = '&Ok'
      Hint = 'Reset (Alt+R)'
      ImageIndex = 8
      OnExecute = actOkExecute
    end
    object actCancel: TAction
      Caption = '&Cancel'
      Hint = 'Close (Alt+C)'
      ImageIndex = 9
      OnExecute = actCancelExecute
    end
    object actRefresh: TAction
      Caption = 'Refresh'
      Hint = 'Refresh'
      ImageIndex = 1
      ShortCut = 116
      OnExecute = actRefreshExecute
    end
  end
  object IvPositionStandard2: TIvPositionStandard
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Collection = <>
    Filename = 'Setting Template.cfg'
    SaveForm = True
    Version = '1.3'
    Left = 520
    Top = 72
  end
  object IvPositionDevExpress2: TIvPositionDevExpress
    About = 'Created by Ivan Handoyo'
    AutoLoad = False
    Filename = 'Setting Template.cfg'
    Sorting = True
    Version = '1.3'
    Left = 552
    Top = 72
  end
  object qryStock: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ItemReceiveCode'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from Stock'
      'where ItemReceiveCode like :ItemReceiveCode')
    Left = 440
    Top = 40
  end
  object dsStock: TDataSource
    DataSet = qryStock
    Left = 472
    Top = 40
  end
end
