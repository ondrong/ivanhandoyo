[company]
CheckBox=0
Id=company
OrderNo=1
SQL=
 
[department]
CheckBox=0
Id=department
OrderNo=2
SQL=
 
[jobposition]
CheckBox=0
Id=jobposition
OrderNo=3
SQL=
 
[program]
CheckBox=0
Id=program
OrderNo=4
SQL=
 
[setup]
CheckBox=0
Id=setup
OrderNo=5
SQL=
 
[country]
CheckBox=0
Id=country
OrderNo=6
SQL=
 
[province]
CheckBox=0
Id=province
OrderNo=7
SQL=
 
[city]
CheckBox=0
Id=city
OrderNo=8
SQL=
 
[employee]
CheckBox=0
Id=employee
OrderNo=9
SQL=
 
[positionaccess]
CheckBox=0
Id=positionaccess
OrderNo=10
SQL=
 
[transactiontype]
CheckBox=0
Id=transactiontype
OrderNo=11
SQL=
 
[cashbanktransactiontype]
CheckBox=0
Id=cashbanktransactiontype
OrderNo=12
SQL=
 
[acctransactiontype]
CheckBox=0
Id=acctransactiontype
OrderNo=13
SQL=
 
[bank]
CheckBox=0
Id=bank
OrderNo=14
SQL=
 
[paymenttype]
CheckBox=0
Id=paymenttype
OrderNo=15
SQL=
 
[warehouse]
CheckBox=0
Id=warehouse
OrderNo=20
SQL=
 
[display]
CheckBox=0
Id=display
OrderNo=21
SQL=
 
[outlet]
CheckBox=0
Id=outlet
OrderNo=21
SQL=
 
[report]
CheckBox=0
Id=report
OrderNo=23
SQL=
 
[category]
CheckBox=0
Id=category
OrderNo=30
SQL=
 
[vendor]
CheckBox=0
Id=vendor
OrderNo=31
SQL=
 
[vendorphone]
CheckBox=0
Id=vendorphone
OrderNo=32
SQL=
 
[customer]
CheckBox=0
Id=customer
OrderNo=33
SQL=
 
[customerphone]
CheckBox=0
Id=customerphone
OrderNo=34
SQL=
 
[itemcategory]
CheckBox=0
Id=itemcategory
OrderNo=40
SQL=
 
[itemdt]
CheckBox=0
Id=itemdt
OrderNo=42
SQL=
 
[itemminstock]
CheckBox=0
Id=itemminstock
OrderNo=43
SQL=
 
[itemimage]
CheckBox=0
Id=itemimage
OrderNo=44
SQL=
 
[price]
CheckBox=0
Id=price
OrderNo=45
SQL=
 
[purchaseorderhd]
CheckBox=0
Id=purchaseorderhd
OrderNo=100
SQL=
 
[purchaseorderdt]
CheckBox=0
Id=purchaseorderdt
OrderNo=101
SQL=
 
[purchaseinvoicehd]
CheckBox=0
Id=purchaseinvoicehd
OrderNo=102
SQL=
 
[purchaseinvoicedt]
CheckBox=0
Id=purchaseinvoicedt
OrderNo=103
SQL=select_a.*^from_PurchaseInvoiceDt_a^inner_join_PurchaseInvoiceHd_b_on_a.PurchaseInvoiceId_=_b.PurchaseInvoiceId^where_b.StatusApprove_<>_'2'_^and_a.qty_>_0
 
[purchasepayment]
CheckBox=0
Id=purchasepayment
OrderNo=104
SQL=
 
[purchasepaymentdt]
CheckBox=0
Id=purchasepaymentdt
OrderNo=105
SQL=select_a.*^from_PurchasePaymentDt_a^inner_join_PurchasePayment_b_on_a.PurchasePaymentId_=_b.PurchasePaymentId^where_b.StatusApprove_<>_'2'_
 
[othertransactionhd]
CheckBox=0
Id=othertransactionhd
OrderNo=107
SQL=
 
[othertransactiondt]
CheckBox=0
Id=othertransactiondt
OrderNo=108
SQL=select_a.*^from_OtherTransactionDt_a^inner_join_OtherTransactionHd_b_on_a.OtherTransactionId_=_b.OtherTransactionId^where_b.StatusApprove_<>_'2'^and_b.TransactionTypeId_<>_'TY003'_^and_a.qty_>_0^^--_TY003_=_Transaksi_Mutasi
 
[purchasereturnhd]
CheckBox=0
Id=purchasereturnhd
OrderNo=206
SQL=
 
[purchasereturndt]
CheckBox=0
Id=purchasereturndt
OrderNo=207
SQL=
 
[purchasereturnpaymenthd]
CheckBox=0
Id=purchasereturnpaymenthd
OrderNo=208
SQL=
 
[purchasereturnpaymentdt]
CheckBox=0
Id=purchasereturnpaymentdt
OrderNo=209
SQL=
 
[couplehd]
CheckBox=0
Id=couplehd
OrderNo=210
SQL=
 
[coupledt]
CheckBox=0
Id=coupledt
OrderNo=211
SQL=
 
[salesorderhd]
CheckBox=0
Id=salesorderhd
OrderNo=300
SQL=
 
[salesorderdt]
CheckBox=0
Id=salesorderdt
OrderNo=301
SQL=
 
[salesinvoicehd]
CheckBox=0
Id=salesinvoicehd
OrderNo=302
SQL=
 
[salesinvoicedt]
CheckBox=0
Id=salesinvoicedt
OrderNo=303
SQL=select_a.*^from_SalesInvoiceDt_a^inner_join_SalesInvoiceHd_b_on_a.SalesInvoiceId_=_b.SalesInvoiceId^where_b.StatusApprove_<>_'2'^and_a.qty_>_0
 
[salespayment]
CheckBox=0
Id=salespayment
OrderNo=304
SQL=
 
[salespaymentdt]
CheckBox=0
Id=salespaymentdt
OrderNo=305
SQL=select_a.*^from_SalesPaymentDt_a^inner_join_SalesPayment_b_on_a.SalesPaymentId_=_b.SalesPaymentId^where_b.StatusApprove_<>_'2'
 
[salesreturnhd]
CheckBox=0
Id=salesreturnhd
OrderNo=306
SQL=
 
[salesreturnpaymenthd]
CheckBox=0
Id=salesreturnpaymenthd
OrderNo=308
SQL=
 
[salesreturnpaymentdt]
CheckBox=0
Id=salesreturnpaymentdt
OrderNo=309
SQL=select_a.*^from_SalesReturnPaymentDt_a^inner_join_SalesReturnPaymentHd_b_on_a.SalesReturnPaymentId_=_b.SalesReturnPaymentId^where_b.StatusApprove_<>_2
 
[banktransaction]
CheckBox=0
Id=banktransaction
OrderNo=500
SQL=select_*^from_banktransaction_^where_flagfix_<>_'1'
 
[var]
CheckBox=0
Id=var
OrderNo=
SQL=
 
[targetinfo]
CheckBox=0
Id=targetinfo
OrderNo=
SQL=
 
[salesreturndt]
CheckBox=0
Id=salesreturndt
OrderNo=307
SQL=select_a.*^from_SalesReturnDt_a^inner_join_SalesReturnHd_b_on_a.SalesReturnId_=_b.SalesReturnId^where_b.StatusApprove_<>_2
 
[proxyinfo]
CheckBox=0
Id=proxyinfo
OrderNo=
SQL=
 
[position]
CheckBox=0
Id=position
OrderNo=
SQL=
 
[item]
CheckBox=0
Id=item
OrderNo=41
SQL=
 
[giro]
CheckBox=0
Id=giro
OrderNo=50
SQL=
 
[cashtransaction]
CheckBox=0
Id=cashtransaction
OrderNo=400
SQL=select_*^from_cashtransaction_^where_flagfix_<>_'1'
 
[frame]
CheckBox=0
Id=frame
OrderNo=
SQL=
 
[breakpoint]
CheckBox=0
Id=breakpoint
OrderNo=
SQL=
 
[transactiondt_transactiondtid_seq]
CheckBox=0
Id=transactiondt_transactiondtid_seq
OrderNo=2000
SQL=
 
[apbalancecustomer]
CheckBox=0
Id=apbalancecustomer
OrderNo=2000
SQL=
 
[apbalancevendor]
CheckBox=0
Id=apbalancevendor
OrderNo=2000
SQL=
 
[arbalancecustomer]
CheckBox=0
Id=arbalancecustomer
OrderNo=2000
SQL=
 
[arbalancevendor]
CheckBox=0
Id=arbalancevendor
OrderNo=2000
SQL=
 
[backupprice]
CheckBox=0
Id=backupprice
OrderNo=2000
SQL=
 
[bankbalance]
CheckBox=0
Id=bankbalance
OrderNo=2000
SQL=
 
[cashbalance]
CheckBox=0
Id=cashbalance
OrderNo=2000
SQL=
 
[item_itemid_seq]
CheckBox=0
Id=item_itemid_seq
OrderNo=2000
SQL=
 
[itembalance]
CheckBox=0
Id=itembalance
OrderNo=2000
SQL=
 
[logprogram]
CheckBox=0
Id=logprogram
OrderNo=2000
SQL=
 
[purchaseprice]
CheckBox=0
Id=purchaseprice
OrderNo=2000
SQL=
 
[revenuebalance]
CheckBox=0
Id=revenuebalance
OrderNo=2000
SQL=
 
[saleprice]
CheckBox=0
Id=saleprice
OrderNo=2000
SQL=
 
[stockexpired]
CheckBox=0
Id=stockexpired
OrderNo=2000
SQL=
 
[stockonhand]
CheckBox=0
Id=stockonhand
OrderNo=2000
SQL=
 
[stockonhandvalue]
CheckBox=0
Id=stockonhandvalue
OrderNo=2000
SQL=
 
[tempbarcode]
CheckBox=0
Id=tempbarcode
OrderNo=2000
SQL=
 
[tempprice]
CheckBox=0
Id=tempprice
OrderNo=2000
SQL=
 
[temppriceprint]
CheckBox=0
Id=temppriceprint
OrderNo=2000
SQL=
 
[tempprintbarcode]
CheckBox=0
Id=tempprintbarcode
OrderNo=2000
SQL=
 
[transaction]
CheckBox=0
Id=transaction
OrderNo=2000
SQL=
 
[transaction_transactionid_seq]
CheckBox=0
Id=transaction_transactionid_seq
OrderNo=2000
SQL=
 
[transactionbalance]
CheckBox=0
Id=transactionbalance
OrderNo=2000
SQL=
 
[transactiondt]
CheckBox=0
Id=transactiondt
OrderNo=2000
SQL=
 
