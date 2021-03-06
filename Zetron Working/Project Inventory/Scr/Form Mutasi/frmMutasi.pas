unit frmMutasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  // Auto Generate
  frmUniTransactionEx, Menus, cxLookAndFeelPainters, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxCalendar, cxCalc, cxCurrencyEdit, cxSpinEdit, cxDBExtLookupComboBox,
  cxImageComboBox, MemDS, DBAccess, Uni, cxMemo, cxDBEdit, cxPC, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxDropDownEdit, ExtCtrls, dxDockControl,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, dxDockPanel,
  cxLookupEdit, cxDBLookupEdit, cxContainer, cxTextEdit, cxMaskEdit, StdCtrls,
  cxButtons, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxDockControlPainter, dxSkinscxPCPainter;

type
  TfmMutasi = class(TFormUniTransactionEx)
    cgDisplay: TcxGrid;
    cgDisplayLevel1: TcxGridLevel;
    cgOtherTransactionDt: TcxGrid;
    cgOtherTransactionDtLevel1: TcxGridLevel;
    cgOtherTransactionDtLevel2: TcxGridLevel;
    cgvDisplay: TcxGridDBTableView;
    cgvDisplayemployeeid: TcxGridDBColumn;
    cgvDisplayothertransactiondate: TcxGridDBColumn;
    cgvDisplayothertransactionid: TcxGridDBColumn;
    cgvDisplayprojectid: TcxGridDBColumn;
    cgvDisplaystatusapprove: TcxGridDBColumn;
    cgvDisplaytransactiontypeid: TcxGridDBColumn;
    cgvDisplaywarehousedest: TcxGridDBColumn;
    cgvDisplaywarehousesource: TcxGridDBColumn;
    cgvOtherTransactionDt: TcxGridDBTableView;
    cgvOtherTransactionDtemployeeid: TcxGridDBColumn;
    cgvOtherTransactionDtExpiredDate: TcxGridDBColumn;
    cgvOtherTransactionDtItemId: TcxGridDBColumn;
    cgvOtherTransactionDtItemId2: TcxGridDBColumn;
    cgvOtherTransactionDtItemId3: TcxGridDBColumn;
    cgvOtherTransactionDtitemid4: TcxGridDBColumn;
    cgvOtherTransactionDtitemtext: TcxGridDBColumn;
    cgvOtherTransactionDtNo: TcxGridDBColumn;
    cgvOtherTransactionDtothertransactionid: TcxGridDBColumn;
    cgvOtherTransactionDtQty: TcxGridDBColumn;
    cgvOtherTransactionDtStatusColor: TcxGridDBColumn;
    cgvTransactionDt: TcxGridDBTableView;
    cgvTransactionDtcogs: TcxGridDBColumn;
    cgvTransactionDtdatecogs: TcxGridDBColumn;
    cgvTransactionDtitemidexternal: TcxGridDBColumn;
    cgvTransactionDtitemname: TcxGridDBColumn;
    cgvTransactionDtitemnamechinese: TcxGridDBColumn;
    cgvTransactionDtqty: TcxGridDBColumn;
    cgvTransactionDttotalcogs: TcxGridDBColumn;
    cgvTransactionDttype: TcxGridDBColumn;
    cxPageControl1: TcxPageControl;
    dbeOtherTransactionDate: TcxDBDateEdit;
    dbeOtherTransactionId: TcxDBTextEdit;
    dblcbWarehouseDest: TcxDBExtLookupComboBox;
    dblcbWarehouseSource: TcxDBExtLookupComboBox;
    dblcProject: TcxDBExtLookupComboBox;
    dbmInternalMemo: TcxDBMemo;
    dbmStatementMemo: TcxDBMemo;
    dsOtherTransactionDt: TDataSource;
    dsTransactionDt: TDataSource;
    Image1: TImage;
    Image2: TImage;
    Label2: TLabel;
    Label5: TLabel;
    lblFixed: TLabel;
    lblProject: TLabel;
    lblPurchaseInvoiceId: TLabel;
    lblWarehouseDestination: TLabel;
    lblWarehouseSource: TLabel;
    pnlTop: TPanel;
    tsExternalMemo: TcxTabSheet;
    tsInternalMemo: TcxTabSheet;
    qryOtherTransactionHd: TUniQuery;
    qryOtherTransactionDt: TUniQuery;
    qryTransactionDt: TUniQuery;
    procedure qryOtherTransactionHdAfterPost(DataSet: TDataSet);
    procedure qryOtherTransactionHdBeforeInsert(DataSet: TDataSet);
    procedure qryOtherTransactionHdAfterCancel(DataSet: TDataSet);
    procedure qryOtherTransactionHdNewRecord(DataSet: TDataSet);
    procedure qryOtherTransactionHdBeforePost(DataSet: TDataSet);
    procedure qryOtherTransactionDtNewRecord(DataSet: TDataSet);
    procedure qryOtherTransactionDtBeforePost(DataSet: TDataSet);
    procedure dsDefaultDataChange(Sender: TObject; Field: TField);
    procedure dsOtherTransactionDtDataChange(Sender: TObject; Field: TField);
    procedure cgvTransactionDtStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cgvOtherTransactionDtStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure qryOtherTransactionDtBeforeInsert(DataSet: TDataSet);
  protected
    procedure InitForm; override;
    procedure RefreshAll; override;
    procedure MonthYearValueChange(Sender: TObject); override;
  private
    FInsertState: boolean;
  public

  end;

var
  fmMutasi: TfmMutasi;

implementation

{$R *.dfm}

uses
  untConstanta, untProcedure, untConstantaPOS, dtmGlobal, dtmGeneral, dtmInventory, dtmShare;

procedure TfmMutasi.cgvOtherTransactionDtStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  with (Sender as TcxGridDBTableView) do
  begin
    if ARecord.Values[GetColumnByFieldName('StatusColor').Index] = '1' then
      AStyle := dmGlobal.stPurpleLight;
  end;
end;

procedure TfmMutasi.cgvTransactionDtStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  with (Sender as TcxGridDBTableView) do
    if ARecord.Values[GetColumnByFieldName('Qty').Index] < '0' then
      AStyle := dmGlobal.stRedLight;
end;

procedure TfmMutasi.dsDefaultDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if qryOtherTransactionHd.State in [dsBrowse] then
  begin
    SetReadOnly(dblcbWarehouseSource, True, COLOR_INACTIVE);
    SetReadOnly(dblcbWarehouseDest, True, COLOR_INACTIVE);
    SetReadOnly(dbeOtherTransactionDate, True, COLOR_INACTIVE);
  end;
end;

procedure TfmMutasi.dsOtherTransactionDtDataChange(Sender: TObject;
  Field: TField);
var
  Amount: real;
begin
  inherited;

  if (Field = nil) then
    Exit;

  if qryOtherTransactionDt.State in [dsInsert, dsEdit] then
  begin
    if (CompareText(Field.FieldName, 'Qty') = 0) or
      (CompareText(Field.FieldName, 'Price') = 0) then
    begin
      Amount :=
        qryOtherTransactionDt.FieldByName('Qty').AsFloat *
        qryOtherTransactionDt.FieldByName('Price').AsFloat;

      qryOtherTransactionDt.FieldByName('Amount').AsFloat := Amount;
    end;
  end;
end;

procedure TfmMutasi.InitForm;
begin
  inherited;

  if FParamValuesArray[0] = 1 then // Show Qty Only
  begin
    Caption := Caption + ' (Qty)';
    cgOtherTransactionDtLevel2.Visible := False;
    cgOtherTransactionDt.RootLevelOptions.DetailTabsPosition := dtpNone;
  end;

  // Init Print
  //dmGlobal.InitPopupMenuPrint(pmPrint, OnClickPrint, PRINT_MT);

  SetReadOnly(cgvTransactionDt);
  SetReadOnly(dblcbWarehouseSource, True, COLOR_INACTIVE);
  SetReadOnly(dblcbWarehouseDest, True, COLOR_INACTIVE);
  SetReadOnly(dbeOtherTransactionDate, True, COLOR_INACTIVE);
  SetReadOnly(dbeOtherTransactionId, True, COLOR_INACTIVE);

  TcxCalcEditProperties(cgvOtherTransactionDtQty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCalcEditProperties(cgvTransactionDtqty.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatQty;
  TcxCurrencyEditProperties(cgvTransactionDtcogs.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;
  TcxCurrencyEditProperties(cgvTransactionDttotalcogs.Properties).DisplayFormat := dmGlobal.SettingGlobal.DisplayFormatCurrency;

  OpenIfClose(dmGeneral.qryWarehouse);
  OpenIfClose(dmGeneral.qryProject);
  OpenIfClose(dmInventory.qryItem, True);

  MonthYearValueChange(nil); // -> Trigger qryOtherTransactionHd
  OpenIfClose(qryOtherTransactionDt);
  OpenIfClose(qryTransactionDt);
end;

procedure TfmMutasi.MonthYearValueChange(Sender: TObject);
begin
  inherited;

  if (qryOtherTransactionHd.State in [dsEdit, dsInsert]) or
    (qryOtherTransactionDt.State in [dsEdit, dsInsert]) then
    Abort;

  qryOtherTransactionHd.Close;
  qryOtherTransactionHd.Params[0].Value := StrToInt(cbYear.Text);
  qryOtherTransactionHd.Params[1].Value := cbMonth.ItemIndex + 1;
  OpenIfClose(qryOtherTransactionHd, True, True);
end;

procedure TfmMutasi.qryOtherTransactionDtBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;

  // Auto post header on new detail insert (for UNIDAC must OnBeforeInsert)
  if TUniQuery(DataSet).MasterSource <> nil then
    if TUniQuery(DataSet).MasterSource.State in [dsInsert, dsEdit] then
      TUniQuery(DataSet).MasterSource.DataSet.Post;
end;

procedure TfmMutasi.qryOtherTransactionDtBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  // Item Inactive
  Dataset.FieldByName('StatusColor').AsInteger := 0;
  if dmShare.OptionWarningItemInactive then
  begin
    dmShare.qryGetItemFlagInactive.Close;
    if not Dataset.FieldByName('ItemId').IsNull then
    begin
      dmShare.qryGetItemFlagInactive.Params[0].Value := Dataset.FieldByName('ItemId').AsInteger;
      OpenIfClose(dmShare.qryGetItemFlagInactive);
      if dmShare.qryGetItemFlagInactive.FieldByName('FlagInactive').AsString = '1' then
      begin
        if MessageDlg(ASK_ITEM_INACTIVE, mtInformation, [mbYes, mbNo], 0) = mrNo then
          Abort;
        Dataset.FieldByName('StatusColor').AsInteger := 1;
      end;
    end;
  end;

  Dataset.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmMutasi.qryOtherTransactionDtNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  // UNIDAC Purpose To Link MasterDetail
  DataSet.FieldByName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant :=
    TUniQuery(DataSet).MasterSource.DataSet.FieldbyName(TUniQuery(TUniQuery(DataSet).MasterSource.DataSet).MasterFields).AsVariant;

  DataSet.FieldByName('No').AsInteger := DataSet.RecordCount + 1;
  DataSet.FieldByName('Price').AsCurrency := 0;
  DataSet.FieldByName('StatusColor').AsString := '0';
end;

procedure TfmMutasi.qryOtherTransactionHdAfterCancel(
  DataSet: TDataSet);
begin
  inherited;

  FInsertState := False;
end;

procedure TfmMutasi.qryOtherTransactionHdAfterPost(DataSet: TDataSet);
begin
  inherited;

  if FInsertState then
  begin
    dmGlobal.SetLastTransactionId('OtherTransactionHd', dmShare.OptionMT.Prefix,
      DataSet.FieldByName('OtherTransactionDate').AsDateTime, dmShare.OptionMT.RunYear);
    FInsertState := False;
  end;
end;

procedure TfmMutasi.qryOtherTransactionHdBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;

  FInsertState := True;
end;

procedure TfmMutasi.qryOtherTransactionHdBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  // Insert Id
  if FInsertState then
    DataSet.FieldByName('OtherTransactionId').AsString :=
     dmGlobal.GetLastTransactionId('OtherTransactionHd', dmShare.OptionMT.Prefix, dmShare.OptionMT.Length,
        DataSet.FieldByName('OtherTransactionDate').AsDateTime, dmShare.OptionMT.RunYear);

  // Last Employee modified
  DataSet.FieldByName('EmployeeId').AsString := dmGlobal.SettingGlobal.LoginEmployeeId;
end;

procedure TfmMutasi.qryOtherTransactionHdNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('TransactionTypeId').AsString := 'TY003';
  DataSet.FieldByName('WarehouseSource').AsString := dmGeneral.qryWarehouse.FieldByName('WarehouseId').AsVariant;
  Dataset.FieldByName('StatusApprove').AsInteger := 1;

  SetReadOnly(dblcbWarehouseSource, False);
  SetReadOnly(dblcbWarehouseDest, False);
  SetReadOnly(dbeOtherTransactionDate, False);
end;

procedure TfmMutasi.RefreshAll;
begin
  inherited;

  LockRefresh(dmGeneral.qryWarehouse);
  LockRefresh(dmGeneral.qryProject);
  LockRefresh(dmInventory.qryItem, True);
  LockRefresh(qryOtherTransactionHd, True);
  LockRefresh(qryOtherTransactionDt);
  LockRefresh(qryTransactionDt);
end;

end.



