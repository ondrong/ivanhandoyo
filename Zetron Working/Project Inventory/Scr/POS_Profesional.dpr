program POS_Profesional;

uses
  Forms,
  Ioctl in '..\..\Modul General\Library\Ioctl.pas',
  untConstanta in '..\..\Modul General\Library\untConstanta.pas',
  untFastReport in '..\..\Modul General\Library\untFastReport.pas',
  untInitVCL in '..\..\Modul General\Library\untInitVCL.pas',
  untProcedure in '..\..\Modul General\Library\untProcedure.pas',
  untZetronServer in '..\..\Modul General\Library\untZetronServer.pas',
  untConstantaPos in 'Library\untConstantaPos.pas',
  frmOpenWaiting in '..\..\Modul General\Form Open Waiting\frmOpenWaiting.pas' {fmOpenWaiting},
  frmUni in '..\..\Modul General\Form Template\frmUni.pas' {FormUni},
  frmUniDB in '..\..\Modul General\Form Template\frmUniDB.pas' {FormUniDB},
  frmUniDBEditableEx in '..\..\Modul General\Form Template\frmUniDBEditableEx.pas' {FormUniDBEditableEx},
  frmUniDBNavigator in '..\..\Modul General\Form Template\frmUniDBNavigator.pas' {FormUniDBNavigator},
  frmUniDBNavigatorEx in '..\..\Modul General\Form Template\frmUniDBNavigatorEx.pas' {FormUniDBNavigatorEx},
  frmUniDBPrintableEx in '..\..\Modul General\Form Template\frmUniDBPrintableEx.pas' {FormUniDBPrintableEx},
  frmUniDisplay in '..\..\Modul General\Form Template\frmUniDisplay.pas' {FormUniDisplay},
  frmUniDisplayPeriod in '..\..\Modul General\Form Template\frmUniDisplayPeriod.pas' {FormUniDisplayPeriod},
  frmUniMainMenu in '..\..\Modul General\Form Template\frmUniMainMenu.pas' {FormUniMainMenu},
  frmUniMasterEx in '..\..\Modul General\Form Template\frmUniMasterEx.pas' {FormUniMasterEx},
  frmUniPosition in '..\..\Modul General\Form Template\frmUniPosition.pas' {FormUniPosition},
  frmUniTransactionEx in '..\..\Modul General\Form Template\frmUniTransactionEx.pas' {FormUniTransactionEx},
  dtmGlobal in '..\..\Modul General DAC\Data Modul Global\dtmGlobal.pas' {dmGlobal: TDataModul},
  dtmAccounting in 'Data Modul Accounting\dtmAccounting.pas' {dmAccounting: TDataModul},
  dtmGeneral in 'Data Modul General\dtmGeneral.pas' {dmGeneral: TDataModul},
  dtmInventory in 'Data Modul Inventory\dtmInventory.pas' {dmInventory: TDataModul},
  dtmShare in 'Data Modul Share\dtmShare.pas' {dmShare: TDataModul},
  frmAbout in '..\..\Modul General\Form About\frmAbout.pas' {fmAbout},
  frmAdjustmentStockMinus in 'Form Adjustment Stock Minus\frmAdjustmentStockMinus.pas' {fmAdjustmentStockMinus},
  frmAdjustmentStockPlus in 'Form AdjustmentStockPlus\frmAdjustmentStockPlus.pas' {fmAdjustmentStockPlus},
  frmAPAdjustmentCustomer in 'Form AP Adjustment Customer\frmAPAdjustmentCustomer.pas' {fmAPAdjustmentCustomer},
  frmAPAdjustmentVendor in 'Form AP Adjustment Vendor\frmAPAdjustmentVendor.pas' {fmAPAdjustmentVendor},
  frmARAdjustmentCustomer in 'Form AR Adjustment Customer\frmARAdjustmentCustomer.pas' {fmARAdjustmentCustomer},
  frmARAdjustmentVendor in 'Form AR Adjustment Vendor\frmARAdjustmentVendor.pas' {fmARAdjustmentVendor},
  frmBackupDatabase in '..\..\Modul General\Form Backup Database\frmBackupDatabase.pas' {fmBackupDatabase},
  frmBank in 'Form Bank\frmBank.pas' {fmBank},
  frmBankAdjustment in 'Form Bank Adjustment\frmBankAdjustment.pas' {fmBankAdjustment},
  frmBankTransaction in 'Form Bank Transaction\frmBankTransaction.pas' {fmBankTransaction},
  frmCashBankTransactionType in 'Form Cash Bank Transaction Type\frmCashBankTransactionType.pas' {fmCashBankTransactionType},
  frmCashTransaction in 'Form Cash Transaction\frmCashTransaction.pas' {fmCashTransaction},
  frmCategory in 'Form Category\frmCategory.pas' {fmCategory},
  frmChangePassword in '..\..\Modul General\Form Change Password\frmChangePassword.pas' {fmChangePassword},
  frmCity in '..\..\Modul General\Form City\frmCity.pas' {fmCity},
  frmClosingDate in 'Form Closing Date\frmClosingDate.pas' {fmClosingDate},
  frmClosingYear in 'Form Closing Year\frmClosingYear.pas' {fmClosingYear},
  frmCompany in '..\..\Modul General\Form Company\frmCompany.pas' {fmCompany},
  frmCopyItem in 'Form Copy Item\frmCopyItem.pas' {fmCopyItem},
  frmCountry in '..\..\Modul General\Form Country\frmCountry.pas' {fmCountry},
  frmCouple in 'Form Couple\frmCouple.pas' {fmCouple},
  frmCurrency in 'Form Currency\frmCurrency.pas' {fmCurrency},
  frmCustomer in 'Form Customer\frmCustomer.pas' {fmCustomer},
  frmDepartment in '..\..\Modul General\Form Department\frmDepartment.pas' {fmDepartment},
  frmDisplayAPandARCustomer in 'Form Display AP and AR Customer\frmDisplayAPandARCustomer.pas' {fmDisplayAPandARCustomer},
  frmDisplayAPandARVendor in 'Form Display AP and AR Vendor\frmDisplayAPandARVendor.pas' {fmDisplayAPandARVendor},
  frmDisplayBankTransaction in 'Form Display Bank Transaction\frmDisplayBankTransaction.pas' {fmDisplayBankTransaction},
  frmDisplayCashTransaction in 'Form Display Cash Transaction\frmDisplayCashTransaction.pas' {fmDisplayCashTransaction},
  frmDisplayCouple in 'Form Display Couple\frmDisplayCouple.pas' {fmDisplayCouple},
  frmDisplayGiro in 'Form Display Giro\frmDisplayGiro.pas' {fmDisplayGiro},
  frmDisplayItemPrice in 'Form Display Item Price\frmDisplayItemPrice.pas' {fmDisplayItemPrice},
  frmDisplayItemStock in 'Form Display Item Stock\frmDisplayItemStock.pas' {fmDisplayItemStock},
  frmDisplayOrder in 'Form Display Order\frmDisplayOrder.pas' {fmDisplayOrder},
  frmDisplayOtherTransaction in 'Form Display Other Transaction\frmDisplayOtherTransaction.pas' {fmDisplayOtherTransaction},
  frmDisplayPurchaseInvoice in 'Form Display Purchase Invoice\frmDisplayPurchaseInvoice.pas' {fmDisplayPurchaseInvoice},
  frmDisplayPurchaseOrder in 'Form Display Purchase Order\frmDisplayPurchaseOrder.pas' {fmDisplayPurchaseOrder},
  frmDisplayPurchasePayment in 'Form Display Purchase Payment\frmDisplayPurchasePayment.pas' {fmDisplayPurchasePayment},
  frmDisplayPurchaseReturn in 'Form Display Purchase Return\frmDisplayPurchaseReturn.pas' {fmDisplayPurchaseReturn},
  frmDisplayPurchaseReturnPayment in 'Form Display Purchase Return Payment\frmDisplayPurchaseReturnPayment.pas' {fmDisplayPurchaseReturnPayment},
  frmDisplaySalesInvoice in 'Form Display Sales Invoice\frmDisplaySalesInvoice.pas' {fmDisplaySalesInvoice},
  frmDisplaySalesInvoiceRevenue in 'Form Display Sales Invoice Revenue\frmDisplaySalesInvoiceRevenue.pas' {fmDisplaySalesInvoiceRevenue},
  frmDisplaySalesOrder in 'Form Display Sales Order\frmDisplaySalesOrder.pas' {fmDisplaySalesOrder},
  frmDisplaySalesPayment in 'Form Display Sales Payment\frmDisplaySalesPayment.pas' {fmDisplaySalesPayment},
  frmDisplaySalesReturn in 'Form Display Sales Return\frmDisplaySalesReturn.pas' {fmDisplaySalesReturn},
  frmDisplaySalesReturnPayment in 'Form Display Sales Return Payment\frmDisplaySalesReturnPayment.pas' {fmDisplaySalesReturnPayment},
  frmDisplayStock in 'Form Display Stock\frmDisplayStock.pas' {fmDisplayStock},
  frmEmployee in '..\..\Modul General\Form Employee\frmEmployee.pas' {fmEmployee},
  frmEnrollmentFingerPrint in '..\..\Modul General\Form Enrollment FingerPrint\frmEnrollmentFingerPrint.pas' {fmEnrollmentFingerPrint},
  frmExportImportData in '..\..\Modul General\Form Export Import Data\frmExportImportData.pas' {fmExportImportData},
  frmExportReport in '..\..\Modul General\Form Export Report\frmExportReport.pas' {fmExportReport},
  frmExtSearchItem in 'Form Ext Seach Item\frmExtSearchItem.pas' {fmExtSearchItem},
  frmGiro in 'Form Giro\frmGiro.pas' {fmGiro},
  frmImportReport in '..\..\Modul General\Form Import Report\frmImportReport.pas' {fmImportReport},
  frmItem in 'Form Item\frmItem.pas' {fmItem},
  frmItemCategory in 'Form Item Category\frmItemCategory.pas' {fmItemCategory},
  frmItemPro in 'Form Item\frmItemPro.pas' {fmItemPro},
  frmLogin in '..\..\Modul General DAC\Form Login\frmLogin.pas' {fmLogin},
  frmMainMenu in 'Form Main Menu\frmMainMenu.pas' {fmMainMenu},
  frmMainMenuPro in 'Form Main Menu\frmMainMenuPro.pas' {fmMainMenuPro},
  frmMaintainceDatabase in '..\..\Modul General\Form Maintaince Database\frmMaintainceDatabase.pas' {fmMaintainceDatabase},
  frmMutasi in 'Form Mutasi\frmMutasi.pas' {fmMutasi},
  frmOutlet in 'Form Outlet\frmOutlet.pas' {fmOutlet},
  frmPaymentType in 'Form Payment Type\frmPaymentType.pas' {fmPaymentType},
  frmPosition in '..\..\Modul General\Form Position\frmPosition.pas' {fmPosition},
  frmPreviewFastReport in '..\..\Modul General\Form Preview FastReport\frmPreviewFastReport.pas' {fmPreviewFastReport},
  frmPriceChanged in 'Form Price Changed\frmPriceChanged.pas' {fmPriceChanged},
  frmPrintBarcode in 'Form Print Barcode\frmPrintBarcode.pas' {fmPrintBarcode},
  frmPrintFastReport in '..\..\Modul General\Form Print FastReport\frmPrintFastReport.pas' {fmPrintFastReport},
  frmProject in 'Form Project\frmProject.pas' {fmProject},
  frmProvince in '..\..\Modul General\Form Province\frmProvince.pas' {fmProvince},
  frmPurchaseCategory in 'Form Purchase Category\frmPurchaseCategory.pas' {fmPurchaseCategory},
  frmPurchaseInvoice in 'Form Purchase Invoice\frmPurchaseInvoice.pas' {fmPurchaseInvoice},
  frmPurchaseInvoiceCashPayment in 'Form Purchase Invoice Cash Payment\frmPurchaseInvoiceCashPayment.pas' {fmPurchaseInvoiceCashPayment},
  frmPurchaseInvoicePro in 'Form Purchase Invoice\frmPurchaseInvoicePro.pas' {fmPurchaseInvoicePro},
  frmPurchaseOrder in 'Form Purchase Order\frmPurchaseOrder.pas' {fmPurchaseOrder},
  frmPurchaseOrderItem in 'Form Purchase Order Item\frmPurchaseOrderItem.pas' {fmPurchaseOrderItem},
  frmPurchasePayment in 'Form Purchase Payment\frmPurchasePayment.pas' {fmPurchasePayment},
  frmPurchasePriceChange in 'Form Purchase Price Change\frmPurchasePriceChange.pas' {fmPurchasePriceChange},
  frmPurchaseReturn in 'Form Purchase Return\frmPurchaseReturn.pas' {fmPurchaseReturn},
  frmPurchaseReturnCashPayment in 'Form Purchase Return Cash Payment\frmPurchaseReturnCashPayment.pas' {fmPurchaseReturnCashPayment},
  frmPurchaseReturnItem in 'Form Purchase Return Item\frmPurchaseReturnItem.pas' {fmPurchaseReturnItem},
  frmPurchaseReturnPayment in 'Form Purchase Return Payment\frmPurchaseReturnPayment.pas' {fmPurchaseReturnPayment},
  frmReportCategory in '..\..\Modul General\Form Report Category\frmReportCategory.pas' {fmReportCategory},
  frmReportDesigner in '..\..\Modul General\Form Report Designer\frmReportDesigner.pas' {fmReportDesigner},
  frmSalePriceChange in 'Form Sale Price Change\frmSalePriceChange.pas' {fmSalePriceChange},
  frmSalesCategory in 'Form Sales Category\frmSalesCategory.pas' {fmSalesCategory},
  frmSalesInvoice in 'Form Sales Invoice\frmSalesInvoice.pas' {fmSalesInvoice},
  frmSalesInvoiceCashPayment in 'Form Sales Invoice Cash Payment\frmSalesInvoiceCashPayment.pas' {fmSalesInvoiceCashPayment},
  frmSalesInvoicePro in 'Form Sales Invoice\frmSalesInvoicePro.pas' {fmSalesInvoicePro},
  frmSalesman in 'Form Salesman\frmSalesman.pas' {fmSalesman},
  frmSalesOrder in 'Form Sales Order\frmSalesOrder.pas' {fmSalesOrder},
  frmSalesOrderItem in 'Form Sales Order Item\frmSalesOrderItem.pas' {fmSalesOrderItem},
  frmSalesPayment in 'Form Sales Payment\frmSalesPayment.pas' {fmSalesPayment},
  frmSalesReturn in 'Form Sales Return\frmSalesReturn.pas' {fmSalesReturn},
  frmSalesReturnCashPayment in 'Form Sales Return Cash Payment\frmSalesReturnCashPayment.pas' {fmSalesReturnCashPayment},
  frmSalesReturnItem in 'Form Sales Return Item\frmSalesReturnItem.pas' {fmSalesReturnItem},
  frmSalesReturnPayment in 'Form Sales Return Payment\frmSalesReturnPayment.pas' {fmSalesReturnPayment},
  frmSecurity in '..\..\Modul General\Form Security\frmSecurity.pas' {fmSecurity},
  frmSettingGlobal in 'Form Setting Global\frmSettingGlobal.pas' {fmSettingGlobal},
  frmSettingGlobalPro in 'Form Setting Global\frmSettingGlobalPro.pas' {fmSettingGlobalPro},
  frmSettingLocal in '..\..\Modul General\Form Setting Local\frmSettingLocal.pas' {fmSettingLocal},
  frmShipping in 'Form Shipping\frmShipping.pas' {fmShipping},
  frmTransactionType in 'Form Transaction Type\frmTransactionType.pas' {fmTransactionType},
  frmVendor in 'Form Vendor\frmVendor.pas' {fmVendor},
  frmWarehouse in 'Form Warehouse\frmWarehouse.pas' {fmWarehouse};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Zetron Inventory Profesional';
  untConstanta.CurrentZetronApplication := zaInventoryProfesional;
  untConstanta.CurrentConnectionEngine := ceUniDAC;
  untConstanta.CurrentDatabaseEngine := dePostgreSQL;
  Application.CreateForm(Tdmglobal, dmglobal);
  Application.CreateForm(TdmGeneral, dmGeneral);
  Application.CreateForm(TdmAccounting, dmAccounting);
  Application.CreateForm(TdmInventory, dmInventory);
  Application.CreateForm(TdmShare, dmShare);
  Application.CreateForm(TfmMainMenuPro, fmMainMenuPro);
  Application.Run;
end.



