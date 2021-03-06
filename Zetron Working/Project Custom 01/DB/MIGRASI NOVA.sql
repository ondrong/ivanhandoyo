-- MIGRATION

-- 1. User
sp_rename tbGNEmployee, Employee
go
sp_rename 'Employee.vcIdEmployee', EmployeeId
go
sp_rename 'Employee.vcIdPosition', PositionId
go
sp_rename 'Employee.vcEmployeeName', EmployeeName
go
sp_rename 'Employee.chFlagFix', FlagFix
go
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GNUser_GNEmployee]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbGNUser]'))
ALTER TABLE [dbo].[tbGNUser] DROP CONSTRAINT [FK_GNUser_GNEmployee]
go
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_REPORTCO_EMPLOYEE__EMPLOYEE]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReportCounter]'))
ALTER TABLE [dbo].[ReportCounter] DROP CONSTRAINT [FK_REPORTCO_EMPLOYEE__EMPLOYEE]
go
ALTER TABLE [dbo].[Employee]
DROP CONSTRAINT [PK_TBGNEMPLOYEE]
GO
alter table Employee
add UserName varchar(20)
go
update Employee
set Username=EmployeeId
where Username is null
go
ALTER TABLE [dbo].[Employee]
ADD UNIQUE ([UserName])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GNEmployee_GNPosition]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employee]'))
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK_GNEmployee_GNPosition]
go

-- 2. Company
sp_rename tbGNPosition, JobPosition
go
sp_rename 'JobPosition.vcIdDepartment', DepartmentId
go
sp_rename 'JobPosition.vcIdPosition', PositionId
go
sp_rename 'JobPosition.vcPositionName', PositionName
go
sp_rename 'JobPosition.chFlagFix', FlagFix
go
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GNPosition_GNDepartment]') AND parent_object_id = OBJECT_ID(N'[dbo].[JobPosition]'))
ALTER TABLE [dbo].[JobPosition] DROP CONSTRAINT [FK_GNPosition_GNDepartment]
go
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[JobPosition]') AND name = N'PK_TBGNPOSITION')
ALTER TABLE [dbo].[JobPosition] DROP CONSTRAINT [PK_TBGNPOSITION]
go
ALTER TABLE [dbo].[JobPosition]
DROP COLUMN [vcIdCompany]
GO

sp_rename tbGNDepartment, Department
go
sp_rename 'Department.vcIdCompany', CompanyId
go
sp_rename 'Department.vcIdDepartment', DepartmentId
go
sp_rename 'Department.vcDepartmentName', DepartmentName
go
sp_rename 'Department.chFlagFix',FlagFix
go

sp_rename tbGNCompany, Company
go
sp_rename 'Company.vcIdCompany', CompanyId
go
sp_rename 'Company.vcCompanyName', CompanyName
go
sp_rename 'Company.vcAddress', Address        
go
sp_rename 'Company.vcPhone', Telephone
go
sp_rename 'Company.vcHomepage', Website
go
sp_rename 'Company.blLogo', Logo      
go
sp_rename 'Company.chFlagFix', FlagFix
go
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GNProvince_GNCountry]') AND parent_object_id = OBJECT_ID(N'[dbo].[Province]'))
ALTER TABLE [dbo].[Province] DROP CONSTRAINT [FK_GNProvince_GNCountry]
go

-- 3. Location
sp_rename tbGNCountry, Country 
go
sp_rename 'Country.vcIdCountry', CountryId 
go
sp_rename 'Country.vcCountryName', CountryName 
go
sp_rename 'Country.vcCountryExt', CountryExt 
go

sp_rename tbGNProvince, Province
go
sp_rename 'Province.vcIdCountry', CountryId
go
sp_rename 'Province.vcIdProvince', ProvinceId
go
sp_rename 'Province.vcProvinceName', ProvinceName
go

sp_rename tbGNCity, City
go
sp_rename 'City.vcIdProvince', ProvinceId
go
sp_rename 'City.vcIdCity', CityId
go
sp_rename 'City.vcCityName', CityName
go
sp_rename 'City.vcCityExt', CityExt
go

ALTER TABLE [dbo].[City] DROP CONSTRAINT [FK_GNCity_GNProvince]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GNCustomer_GNCity]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbGNCustomer]'))
ALTER TABLE [dbo].[tbGNCustomer] DROP CONSTRAINT [FK_GNCustomer_GNCity]
go
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GNSupplier_GNCity]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbGNSupplier]'))
ALTER TABLE [dbo].[tbGNSupplier] DROP CONSTRAINT [FK_GNSupplier_GNCity]
go
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ACBank_GNCity]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbACBank]'))
ALTER TABLE [dbo].[tbACBank] DROP CONSTRAINT [FK_ACBank_GNCity]
go
ALTER TABLE [dbo].[tbGNCustomer]
DROP COLUMN [vcIdProvince]
GO
ALTER TABLE [dbo].[tbGNCustomer]
DROP COLUMN [vcIdCountry]
GO
ALTER TABLE [dbo].[tbGNSupplier]
DROP COLUMN [vcIdProvince]
GO
ALTER TABLE [dbo].[tbGNSupplier]
DROP COLUMN [vcIdCountry]
GO
ALTER TABLE [dbo].[tbACBank]
DROP COLUMN [vcIdProvince]
GO
ALTER TABLE [dbo].[tbACBank]
DROP COLUMN [vcIdCountry]
GO
ALTER TABLE [dbo].[City]
DROP CONSTRAINT [PK_TBGNCITY]
GO
delete city
where cityId = 'DL'
and provinceId = 'IRJA'
go
delete city
where cityId = 'LBK'
and provinceId = 'BL'
go
ALTER TABLE [dbo].[City]
ADD PRIMARY KEY ([CityId])
GO
ALTER TABLE [dbo].[Province]
DROP CONSTRAINT [PK_TBGNPROVINCE]
GO
ALTER TABLE [dbo].[Province]
ADD PRIMARY KEY ([ProvinceId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GNProvince_GNCountry]') AND parent_object_id = OBJECT_ID(N'[dbo].[Province]'))
ALTER TABLE [dbo].[Province] DROP CONSTRAINT [FK_GNProvince_GNCountry]
go
ALTER TABLE [dbo].[Country]
DROP CONSTRAINT [PK_TBGNCOUNTRY]
GO

-- 4. Report
sp_rename tbGNReport, Report
go
sp_rename 'Report.vcIdReport', ReportId
go
sp_rename 'Report.vcIdProgram', ProgramId
go
sp_rename 'Report.vcReportName', ReportName
go
sp_rename 'Report.vcName1', Name1
go
sp_rename 'Report.vcName2', Name2
go
sp_rename 'Report.vcName3', Name3
go
sp_rename 'Report.vcName4', Name4
go
sp_rename 'Report.vcName5', Name5
go
sp_rename 'Report.vcName6', Name6
go
sp_rename 'Report.vcPrinter', Printer
go
sp_rename 'Report.blFile', FileBlob
go
sp_rename 'Report.chFlagHide', FlagHide
go
sp_rename 'Report.chFlagFix', FlagFix
go
sp_rename 'Report.chFlagShowDialog', FlagShowDialog
go

-- 5. Setup
sp_rename tbGNSetup, Setup
go
sp_rename 'Setup.vcIdSetup', SetupId
go
sp_rename 'Setup.vcIdProgram', ProgramId
go
sp_rename 'Setup.vcSetupName', SetupName
go
sp_rename 'Setup.vcValue', SetupValue
go

-- 6.PaymentType
alter table tbGNPaymentType
add StatusPayment        Status               null,
  FlagPurchasePayment  Flag                 null,
  FlagSalesPayment     Flag                 null;

update tbGNPaymentType
set StatusPayment = '0',
FlagPurchasePayment = '0',
FlagSalesPayment = '0'; 

update tbGNPaymentType
set StatusPayment = '0' 
where chFlagPPApprovalType1 = '1'
or chFlagSPApprovalType1 = '1';

update tbGNPaymentType
set StatusPayment = '1' 
where chFlagPPApprovalType2 = '1'
or chFlagSPApprovalType2 = '1';

update tbGNPaymentType
set FlagPurchasePayment = '1' 
where chFlagPPApprovalType1 = '1'
or chFlagPPApprovalType2 = '1';
   
update tbGNPaymentType
set FlagSalesPayment = '1' 
where chFlagSPApprovalType1 = '1'
or chFlagSPApprovalType2 = '1';

-- 7.warehouse
alter table tbGNWarehouse
add StatusWarehouse Status;

update tbGNWarehouse
set StatusWarehouse = '2'
where StatusWarehouse is null;

update tbGNWarehouse
set StatusWarehouse = '0'
where vcIdWarehouse = 'NOVA_WH_01'
or vcIdWarehouse = 'NOVA_WH_02'
or vcIdWarehouse = 'NOVA_WH_03'
or vcIdWarehouse = 'NOVA_WH_04'
or vcIdWarehouse = 'NOVA_WH_05';

update tbGNWarehouse
set StatusWarehouse = '1'
where vcIdWarehouse = 'NOVA_WH_06';

-- 8.Rename all field inCounterPrint to CounterPrint
sp_rename 'tbIMReceivingRecordHd.inCounterPrint', CounterPrint
go
sp_rename 'tbIMDeliveryOrderHd.inCounterPrint', CounterPrint
go
sp_rename 'tbIMMutationHd.inCounterPrint', CounterPrint
go
sp_rename 'tbIMPurchaseOrderHd.inCounterPrint', CounterPrint
go
sp_rename 'tbIMPurchaseInvoiceHd.inCounterPrint', CounterPrint
go
sp_rename 'tbIMPurchasePayment.inCounterPrint', CounterPrint
go
sp_rename 'tbIMPurchaseReturnHd.inCounterPrint', CounterPrint
go
sp_rename 'tbIMOtherTransactionHd.inCounterPrint', CounterPrint
go
sp_rename 'tbIMSalesOrderHd.inCounterPrint', CounterPrint
go
sp_rename 'tbIMSalesInvoiceHd.inCounterPrint', CounterPrint
go
sp_rename 'tbIMSalesPayment.inCounterPrint', CounterPrint
go
sp_rename 'tbIMSalesReturnHd.inCounterPrint', CounterPrint
go
sp_rename 'tbACSalesDownPayment.inCounterPrint', CounterPrint
go
sp_rename 'tbACPurchaseDownPayment.inCounterPrint', CounterPrint
go

-- 9.Reporting
update report
set ProgramId = 'ZEINV_C01';

update report
set OrderNo = 0;

update report
set flagdocounter = 0,
  flagdotmatrix = 0,
  FlagShowProgress = 0;








