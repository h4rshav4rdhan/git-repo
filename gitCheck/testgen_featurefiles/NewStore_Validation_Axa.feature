@OMS @1.0 @OMS_OMS @New_Store_Validation
Feature: New_Store_Validation
@NewStore_BOPIS_SL_SQ_CC_FS @NewStore_Validation1
Scenario: S1_TC1_BOPIS_NewStore_goodpath_Single line Single quantity_Full Shipment_Loyal Customer Yes_BackRoom Pickup as Pick_All_Customer Pickup as Pick_All_Post appeasement Yes_Payment Credit Card
Given I navigate to "(Order_Hub_URL)"
#And Login to OMS
#And Switch to outbound orders page
And I open new window with "(API_Tester_URL)"
#And Generate Order Number for order creation
And I check if "(CC_Reauth)" value as "yes"
#And Generate Reauth OMS xml for cybersource
#And Cybersource Card Type assignment
#And Update Payment Information id and Payment Instrument id in OMS xml
#And Create Order through API Tester using OMS Xml
And I close new window
#And Search for OMS order in Outbound orders
And I end conditional check
And I check if "(CC_Reauth)" value as "no"
#And Create and update storeno in HCL XML
#And Cybersource Card Type assignment
#And Update Payment Information id and Payment Instrument id in HCL xml
#And Generate HCL XML using TDM
And I close new window
#And Search for order in Outbound orders
And I end conditional check
#And Schedule and release the order based on the time zone
#And Verify successful order details in OMS
And I open new window with "(Store_URL)"
#And Login to store console
#And Search order and proceed to backroom pickup
#And Select pick all from backroom pickup
#And Open and Login to OMS DB
#And Get Shipment Number through DB Query
#And Validate Ready for Customer Shipment Status
And I switch to previous window
#And Select pickup all in customer pickup
And I switch to new window
#And Validate Shipment Invoiced Shipment Status in DB
And I switch to main window
And I switch to frame having id or name "omsi-iframe"
And I add wait seconds of "4"
#And Refresh order screen in OMS
And "[Shipped_Main_Order_Status]" should be present
And I take screenshot
#And Switch to shipments tab and check for amount collected
#And Capture invoice number of the order
And I open new window with "(Callcenter_URL)"
And I check if "(CC_Reauth)" value as "no"
#And Login to Call Center
And I end conditional check
And I check if "(CC_Reauth)" value as "yes"
#And Login to Call Center and search for OMS order number
And I end conditional check
#And Appease customer from call center
And I close new window
And I switch to main window
And I switch to frame having id or name "omsi-iframe"
#And Refresh order screen in OMS
#And Check for credit memo invoice in OMS order hub
And I check if "(CC_Reauth)" value as "yes"
And I switch to new window
#And Verify credit card reauth records in DB
And I close new window
And I end conditional check
And I open new window with "(OIC_URL)"
#And Login to OIC console
#And Switch to Integrations in OIC
#And Verify Order create HCL to OMS record in OIC Integrations
#And Verify SalesOrderInitiation OMS RESA record in OIC Integrations
#And Verify Order Ready to Pickup emails from OMS record in OIC Integrations
#And Verify SalesOrderComplete OMS RESA record in OIC Integrations
#And Verify Order Create OMS to MFCS record in OIC Integrations
#And Verify Order Create OMS to SCIOCS record in OIC Integrations
#And Verify InventoryAdjustment OMS to SIOCS record in OIC Integrations
#And Verify emails from OMS record in OIC Integrations
#And Verify CreditMemoEmail from OMS to HCL record in OIC Integrations
#And Search for loyalty integration and verify single invoice number
And I close browser
@NewStore_BOPIS_SL_MQ_CC_PQS @NewStore_Validation2
Scenario: S2_BOPIS_NewStore_SingleLineMultiQuantity_LoyalCustomer Yes_PartialQuantityShipment_BackRoomPickup  PartialQuantity _CustomerPickup  PartialQuantity_PostAppeasement Yes_Payment Credit Card
Given I navigate to "(Order_Hub_URL)"
#And Login to OMS
#And Switch to outbound orders page
And I open new window with "(API_Tester_URL)"
#And Generate Order Number for order creation
#And Create and update storeno in HCL XML
#And Cybersource Card Type assignment
#And Update Payment Information id and Payment Instrument id in HCL xml
#And Generate HCL XML using TDM
And I close new window
#And Search for order in Outbound orders
#And Schedule and release the order based on the time zone
#And Verify successful order details in OMS
And I open new window with "(Store_URL)"
#And Login to store console
#And Search order and proceed to backroom pickup
#And Pick few and record shortage others during backroom pickup
#And Record shortage confirmation for backroom pickup
#And Open and Login to OMS DB
#And Get Shipment Number through DB Query
#And Validate Ready for Customer Shipment Status
And I switch to previous window
#And Select customer pick and enter verification details
#And Pick few and record shortage others during customer pickup
And I switch to new window
#And Validate Shipment Invoiced Shipment Status in DB
And I switch to main window
And I switch to frame having id or name "omsi-iframe"
And I add wait seconds of "4"
#And Refresh order screen in OMS
And "[Shipped_Main_Order_Status]" should be present
And I take screenshot
#And Switch to shipments tab and check for amount collected
#And Capture invoice number of the order
And I open new window with "(Callcenter_URL)"
#And Login to Call Center
#And Appease customer from call center
And I close new window
And I switch to main window
And I switch to frame having id or name "omsi-iframe"
#And Refresh order screen in OMS
#And Verify partial cancellation and shipment count in OMS
#And Validate order with partial backroom pickup and customer pickup
#And Check for credit memo invoice in OMS order hub
And I switch to new window
#And Execute the DB Query for YFS_EXPORT Table
And "[DB_CAPTURE_ValidResponse201]" should be present
And "[DB_REFUND_ValidResponse201]" should be present
And I close new window
And I open new window with "(OIC_URL)"
#And Login to OIC console
#And Switch to Integrations in OIC
#And Verify Order create HCL to OMS record in OIC Integrations
#And Verify SalesOrderInitiation OMS RESA record in OIC Integrations
#And Verify Order Ready to Pickup emails from OMS record in OIC Integrations
#And Verify SalesOrderComplete OMS RESA record in OIC Integrations
#And Verify Order Create OMS to MFCS record in OIC Integrations
#And Verify Order Create OMS to SCIOCS record in OIC Integrations
#And Verify Order Cancel OMS to SIOCS record in OIC Integrations
#And Verify Cancel Order OMS to MFCS record in OIC Integrations
#And Verify SalesOrderCancellation OMS RESA record in OIC Integrations
#And Verify InventoryAdjustment OMS to SIOCS record in OIC Integrations
#And Verify emails from OMS record in OIC Integrations
#And Verify Order Cancel Emails from OMS to HCL record in OIC Integrations
#And Verify CreditMemoEmail from OMS to HCL record in OIC Integrations
#And Search for loyalty integration and verify single invoice number
And I close browser
@NewStore_BOPIS_ML_SQ_PP_BKP_RecordS_All @NewStore_Validation3
Scenario: S3_BOPIS_NewStore_MultilineSingleQuantity_LoyalCustomer Yes_BackRoomPickup RecordShortage All_Payment Paypal
Given I navigate to "(Order_Hub_URL)"
#And Login to OMS
#And Switch to outbound orders page
And I open new window with "(API_Tester_URL)"
#And Create and update storeno in HCL XML
#And Generate HCL XML TDM
And I close new window
#And Search for order in Outbound orders
#And Schedule and release the order based on the time zone
#And Verify successful order details in OMS
#And Refresh order screen in OMS
And I open new window with "(Store_URL)"
#And Login to store console
#And Search order and proceed to backroom pickup
#And Record shortage all during backroom pickup for line 1
#And Record shortage all during backroom pickup for line 2
And I close new window
And I switch to frame having id or name "omsi-iframe"
#And Refresh order screen in OMS
And "[OMS_Order_Cancelled]" should be present
#And Validate order with MLSQ Record Shortage All during backroom pick with pre appeasement
And I check if "(Cancel_Alert)" value as "yes"
And I open new window with "(Callcenter_URL)"
#And Login to Call Center
#And Validate and close Gift Card Refund Alert in Call Center
And I end conditional check
And I open new window with "(OIC_URL)"
#And Login to OIC console
#And Switch to Integrations in OIC
#And Verify Order create HCL to OMS record in OIC Integrations
#And Verify SalesOrderInitiation OMS RESA record in OIC Integrations
#And Verify Order Create OMS to MFCS record in OIC Integrations
#And Verify Order Create OMS to SCIOCS record in OIC Integrations
#And Verify Order Cancel OMS to SIOCS record in OIC Integrations
#And Verify Cancel Order OMS to MFCS record in OIC Integrations
#And Verify SalesOrderCancellation OMS RESA record in OIC Integrations
#And Verify Order Cancel Emails from OMS to HCL record in OIC Integrations
And I close browser
@NewStore_BOPIS_ML_SQ_GC_CC_BKP_CallCenter_CancelAll @NewStore_Validation4
Scenario: S4_BOPIS_NewStore_SingleLineMultiQuantity_CallCenter Cancel_Payment GiftCard and CreditCard
Given I navigate to "(Callcenter_URL)"
#And Login to Call Center and Navigate to Home Page
And I open new window with "(API_Tester_URL)"
#And Generate Order Number for order creation
#And Create and update storeno in HCL XML
#And Cybersource Card Type assignment
#And Update Payment Information id and Payment Instrument id in HCL xml
#And Generate HCL XML using TDM
And I close new window
#And Search and open the order in the Call Center
#And Cancel order from call center
And I take screenshot
And I check if "!CancelFlag!" value as "true"
And I open new window with "(Order_Hub_URL)"
#And Login to OMS
#And Switch to outbound orders page
#And Search for order in Outbound orders
And "[OMS_Order_Cancelled]" should be present
And I take screenshot
And I check if "(Payment_Type)" value as "GIFT_CARD"
#And Validate BOPIS order item cancellation alert for gift card
And I switch to previous window
#And Refresh Call Center Page
And I switch to frame having id or name "omsi-iframe"
#And Validate and close Gift Card Refund Alert in Call Center
And I check elseif "(Payment_Type)" value as "GIFTCARD_GIFTCARD"
#And Validate BOPIS order item cancellation alert for gift card
And I switch to previous window
#And Refresh Call Center Page
And I switch to frame having id or name "omsi-iframe"
#And Validate and close Gift Card Refund Alert in Call Center
And I check elseif "(Payment_Type)" value as "GIFTCARD_CREDITCARD"
#And Validate BOPIS order item cancellation alert for gift card
And I switch to previous window
#And Refresh Call Center Page
And I switch to frame having id or name "omsi-iframe"
#And Validate and close Gift Card Refund Alert in Call Center
And I check elseif "(Payment_Type)" value as "GIFTCARD_PAYPAL"
#And Validate BOPIS order item cancellation alert for gift card
And I switch to previous window
#And Refresh Call Center Page
And I switch to frame having id or name "omsi-iframe"
#And Validate and close Gift Card Refund Alert in Call Center
And I check elseif "(Payment_Type)" value as "CREDIT_CARD"
#And Validate BOPIS order item cancellation under Payment Information collection details
And I check elseif "(Payment_Type)" value as "PAYPAL"
#And Validate BOPIS order item cancellation under Payment Information collection details
And I end conditional check
#And Open and Login to OMS DB
#And Execute the DB Query for YFS_EXPORT Table
And "[DB_AUTHREVERSAL_ValidResponse201]" should be present
And I open new window with "(OIC_URL)"
#And Login to OIC console
#And Switch to Integrations in OIC
#And Verify Order create HCL to OMS record in OIC Integrations
#And Verify Order Cancel Emails from OMS to HCL record in OIC Integrations
And I end conditional check
And I close browser
@NewStore_BOPIS_ML_SQ_GC_CC_BatchPKP_CP_RecordShortageAll @NewStore_Validation5
Scenario: S5_BOPIS_Newstore_MultiLineSingleQuantity_BackRoomPickup PickInBatches_CustomerPickup RecordShort All_PostAppeasement No_LoyalCustomer Yes_Payment GiftCard and Paypal
Given I navigate to "(Order_Hub_URL)"
#And Login to OMS
#And Switch to outbound orders page
And I open new window with "(API_Tester_URL)"
#And Create and update storeno in HCL XML
#And Generate HCL XML TDM
And I close new window
#And Search for order in Outbound orders
#And Schedule and release the order based on the time zone
#And Verify successful order details in OMS
#And Refresh order screen in OMS
And I open new window with "(Store_URL)"
#And Login to store console
#And Search order and proceed to backroom pickup
#And Record shortage all during backroom pickup for line 1
#And Record shortage all during backroom pickup for line 2
And I close new window
And I switch to frame having id or name "omsi-iframe"
#And Refresh order screen in OMS
And "[OMS_Order_Cancelled]" should be present
#And Validate order with MLSQ Record Shortage All during backroom pick with pre appeasement
And I check if "(Cancel_Alert)" value as "yes"
And I open new window with "(Callcenter_URL)"
#And Login to Call Center
#And Validate and close Gift Card Refund Alert in Call Center
And I end conditional check
And I open new window with "(OIC_URL)"
#And Login to OIC console
#And Switch to Integrations in OIC
#And Verify Order create HCL to OMS record in OIC Integrations
#And Verify SalesOrderInitiation OMS RESA record in OIC Integrations
#And Verify Order Create OMS to MFCS record in OIC Integrations
#And Verify Order Create OMS to SCIOCS record in OIC Integrations
#And Verify Order Cancel OMS to SIOCS record in OIC Integrations
#And Verify Cancel Order OMS to MFCS record in OIC Integrations
#And Verify SalesOrderCancellation OMS RESA record in OIC Integrations
#And Verify Order Cancel Emails from OMS to HCL record in OIC Integrations
And I close browser
@NewStore_VTS_ML_SQ_GC_GC_FS @NewStore_Validation6
Scenario: S6_VTS__NewStore_MultiLineSingleQuantity_LoyalCustomer Yes_FullShipment_BackRoomPickup All_CustomerPickup All_PostAppeasement Yes_Payment GiftCard and GiftCard
Given I navigate to "(Order_Hub_URL)"
#And Login to OMS
#And Switch to outbound orders page
And I open new window with "(API_Tester_URL)"
And I check if "(CC_Reauth)" value as "no"
#And Create and update storeno in HCL XML
#And Generate HCL XML TDM
And I switch to previous window
#And Search for order in Outbound orders
And I end conditional check
And I check if "(CC_Reauth)" value as "yes"
#And Generate OMS XML Reauth with unique order ID and create order
And I switch to previous window
#And Search for OMS order in Outbound orders
And I end conditional check
#And Schedule and release VTS order based on the time zone
#And Verify successful order details in OMS for VTS
#And Capture VTS Chained order number
And I switch to new window
#And Perform Full PO Shipment for VTS order
#And Perform Full PO Cancellation for VTS order for 2ndLine
And I close new window
And I switch to frame having id or name "omsi-iframe"
#And Refresh order screen in OMS
And I add wait time "10" for the element "[OMS_Order_Status_Label]" with the action "presenceofelementlocated"
And I run custom code "WaitForExpectedStatus" with arguments
|""|
And "[Included_In_Shipment]" should be present
And I check if "(CC_Reauth)" value as "yes"
And I open new window with "(DB_Client_URL)"
#And Verify credit card reauth records in DB
And I close new window
And I end conditional check
And I open new window with "(Store_URL)"
#And Login to store console
And I check if "(CC_Reauth)" value as "yes"
#And Search for OMS order and proceed to backroom pickup
And I end conditional check
And I check if "(CC_Reauth)" value as "no"
#And Search order and proceed to backroom pickup
And I end conditional check
#And Select pick all from backroom pickup
And I switch to previous window
And I switch to frame having id or name "omsi-iframe"
#And Refresh order screen in OMS
#And Switch to shipments tab and select first shipment line
And I take screenshot
And "[Ready_For_Customer]" should be present
And I switch to new window
#And Select pickup all in customer pickup
And I close new window
And I switch to frame having id or name "omsi-iframe"
And I click on "[OrderNumber_Link_Search_Breadcrumb]" button
And I add wait seconds of "4"
#And Refresh order screen in OMS
And "[Shipped_Main_Order_Status]" should be present
And I take screenshot
#And Switch to shipments tab and check for amount collected
#And Switch to shipments tab and select first shipment line
#And Check for shipment shipped and invoiced status in OMS after customer pickup
#And Capture invoice numbers for the order
And I run custom code "PressAndHoldBackwardButton" with arguments
|""|
#And Validate VTS item cancellation alert for gift card
And I open new window with "(Callcenter_URL)"
And I check if "(CC_Reauth)" value as "no"
#And Login to Call Center
And I end conditional check
And I check if "(CC_Reauth)" value as "yes"
#And Login to Call Center and search for OMS order number
And I end conditional check
#And Appease customer from call center
And I check if "(Cancel_Alert)" value as "yes"
#And Validate and close Gift Card Refund Alert in Call Center
And I end conditional check
And I check if "(Cancel_Alert)" value as "no"
#And Close alerts for the order in call center
And I end conditional check
And I close new window
And I switch to frame having id or name "omsi-iframe"
#And Refresh order screen in OMS
#And Check for credit memo invoice in OMS order hub
And I open new window with "(OIC_URL)"
#And Login to OIC console
#And Switch to Integrations in OIC
#And Verify Order create HCL to OMS record in OIC Integrations
#And Verify SalesOrderInitiation OMS RESA record in OIC Integrations
#And Verify Order Ready to Pickup emails from OMS record in OIC Integrations
#And Verify emails from OMS record in OIC Integrations
#And Verify Order Cancel Emails from OMS to HCL record in OIC Integrations
#And Verify SalesOrderComplete OMS RESA record in OIC Integrations
#And Verify SalesOrderCancellation OMS RESA record in OIC Integrations
#And Verify Order Create OMS to MFCS record for PO in OIC Integrations for VTS
#And Verify Order Create OMS to MFCS record in OIC Integrations for VTS
#And Verify Cancel Order OMS to MFCS record for PO in OIC Integrations
#And Verify CreditMemoEmail from OMS to HCL record in OIC Integrations
#And Verify cancel refund email record in OIC Integrations
#And Search for loyalty integration and verify single invoice number
And I close browser
@NewStore_VTS_SL_SQ_CC_CallCenter_CancelALL @NewStore_Validation7
Scenario: S7_VTS_NewStore_SingleLineSingleQuantity_CallCenter Cancellation_Payment CreditCard
Given I navigate to "(API_Tester_URL)"
#And Generate Order Number for order creation
#And Create and update storeno in HCL XML
#And Cybersource Card Type assignment
#And Update Payment Information id and Payment Instrument id in HCL xml
#And Generate HCL XML using TDM
And I open new window with "(Callcenter_URL)"
#And Login to Call Center
#And Cancel order from call center
And I take screenshot
And I close new window
And I check if "!CancelFlag!" value as "true"
And I open new window with "(Order_Hub_URL)"
#And Login to OMS
#And Switch to outbound orders page
#And Search for order in Outbound orders
And "[OMS_Order_Cancelled]" should be present
And I take screenshot
#And Validate VTS item cancellation alert for gift card
And I navigate to "(Callcenter_URL)"
#And Login to Call Center and Navigate to Home Page
#And Search and open the order in the Call Center
And I check if "(Cancel_Alert)" value as "yes"
#And Validate and close Gift Card Refund Alert in Call Center
And I end conditional check
And I check if "(Cancel_Alert)" value as "no"
#And Close alerts for the order in call center
And I end conditional check
And I open new window with "(DB_Client_URL)"
#And Login to DB
#And Execute the DB Query for YFS_EXPORT Table
And "[DB_AUTHREVERSAL_ValidResponse201]" should be present
And I open new window with "(OIC_URL)"
#And Login to OIC console
#And Switch to Integrations in OIC
#And Verify Order create HCL to OMS record in OIC Integrations
#And Verify Order Cancel Emails from OMS to HCL record in OIC Integrations
And I end conditional check
And I close browser
@NewStore_VTS_SL_MQ_PP_Full_POCancel @NewStore_Validation8
Scenario: S8_VTS__NewStore_SingleLineMultiQuantity_Full POCancellation_Payment Paypal
Given I navigate to "(Order_Hub_URL)"
#And Login to OMS
#And Switch to outbound orders page
And I open new window with "(API_Tester_URL)"
#And Create and update storeno in HCL XML
#And Generate HCL XML TDM
And I switch to previous window
#And Search for order in Outbound orders
#And Schedule and release VTS order based on the time zone
#And Verify successful order details in OMS for VTS
#And Capture VTS Chained order number
And I switch to new window
#And Perform Full PO Cancellation for VTS order
And I close new window
And I switch to frame having id or name "omsi-iframe"
And I check if "[OrderNumber_Link_Search_Breadcrumb]" present
And I click on "[OrderNumber_Link_Search_Breadcrumb]" button
And I add wait seconds of "4"
And I end conditional check
#And Refresh order screen in OMS
And "[OMS_Order_Cancelled]" should be present
And I take screenshot
#And Validate VTS item cancellation alert for gift card
And I navigate to "(Callcenter_URL)"
#And Login to Call Center and Navigate to Home Page
#And Search and open the order in the Call Center
And I check if "(Cancel_Alert)" value as "yes"
#And Validate and close Gift Card Refund Alert in Call Center
And I end conditional check
And I check if "(Cancel_Alert)" value as "no"
#And Close alerts for the order in call center
And I end conditional check
And I open new window with "(OIC_URL)"
#And Login to OIC console
#And Switch to Integrations in OIC
#And Verify Order create HCL to OMS record in OIC Integrations
#And Verify SalesOrderInitiation OMS RESA record in OIC Integrations
#And Verify Order Create OMS to MFCS record for PO in OIC Integrations for VTS
#And Verify Cancel Order OMS to MFCS record for PO in OIC Integrations
#And Verify Order Cancel Emails from OMS to HCL record in OIC Integrations
#And Verify SalesOrderCancellation OMS RESA record in OIC Integrations
And I close browser
@NewStore_MIX_BOPIS_DC_CC @NewStore_Validation9
Scenario: 9_NewStore_MixCart with BOPIS STHDC and paymenttype as CreditCard
Given I navigate to "(Order_Hub_URL)"
#And Login to OMS
#And Switch to outbound orders page
And I open new window with "(API_Tester_URL)"
#And Generate Order Number for order creation
#And Cybersource Card Type assignment
#And Generate HCL xml for cybersource
#And Update Payment Information id and Payment Instrument id in HCL xml
#And Generate HCL XML using TDM
And I switch to previous window
And I add wait seconds of "5"
#And Search for order in Outbound orders
#And Schedule and release BOPIS and STHDC order based on the time zone
#And Verify successful mixed order details in OMS
#And Open and Login to OMS DB
#And Capture release number for STHDC order through DB
#And I close new window
#And I switch to new window
And I switch to window having title "IBM(R) Sterling Framework - HTTP API Tester"
#And Perform Full PO Shipment for STH DC order
#And I switch to previous window
And I switch to main window
And I switch to frame having id or name "omsi-iframe"
And I add wait seconds of "6"
#And Refresh order screen in OMS
And I add wait seconds of "6"
And "[Partially_Shipped_Main_Order_Status]" should be present
#And I switch to new window
#And I close new window
And I open new window with "(Store_URL)"
#And Login to store console
#And Search order and proceed to backroom pickup
#And Select pick all from backroom pickup
#And Select pickup all in customer pickup
#And I switch to previous window
And I close new window
And I switch to main window
And I switch to frame having id or name "omsi-iframe"
And I add wait seconds of "6"
#And Refresh order screen in OMS
And I add wait seconds of "6"
And "[Shipped_Main_Order_Status]" should be present
And I switch to new window
#And Execute the DB Query for YFS_EXPORT Table
And "[DB_CAPTURE_ValidResponse201]" should be present
And I close browser
@NewStore_MIX_BOPIS_VTS_POW_PP @NewStore_Validation10
Scenario: 12_MixCart with VTS Powership and paymenttype as Paypal
Given I navigate to "(Order_Hub_URL)"
#And Login to OMS
#And Switch to outbound orders page
And I open new window with "(API_Tester_URL)"
#And Generate HCL XML with unique order ID and create order
And I switch to previous window
And I add wait seconds of "5"
#And Search for order in Outbound orders
#And Schedule and release VTS and Powership order based on the time zone
#And Verify successful mixed order details in OMS
#And Capture VTS Chained order number
And I switch to new window
#And Perform Full PO Shipment for VTS order
And I switch to previous window
And I switch to frame having id or name "omsi-iframe"
#And Refresh order screen in OMS
And I add wait seconds of "6"
And I run custom code "WaitForExpectedStatus" with arguments
|""|
And "[Included_In_Shipment]" should be present
And I close new window
And I open new window with "(Store_URL)"
#And Login to store console
#And Search order and proceed to backroom pickup
#And Select pick all from backroom pickup
And I add wait seconds of "6"
#And Select pickup all in customer pickup
And I switch to previous window
And I switch to frame having id or name "omsi-iframe"
And I add wait seconds of "6"
#And Refresh order screen in OMS
And I add wait seconds of "6"
And "[Partially_Shipped_Main_Order_Status]" should be present
And I close new window
And I open new window with "(Store_URL)"
And I run custom code "WaitForPageLoad" with arguments
|""|
And I enter into input field "[Store_user_ID]" the value "(Powership_Store_ID)"
And I enter into input field "[Store_Pwd]" the value "(Store_Pwd)"
And I click on "[Store_Login]" button
And I add wait time "25" for element "[IBM_Store_Heading]"
And I add wait seconds of "4"
And I click on "[Store_breadcrumb]" button
And I add wait seconds of "2"
And I click on "[Store_Order_Fullfillment]" button
And I add wait seconds of "4"
#And Search order and proceed to backroom pickup
#And Select pick all from backroom pickup
#And Select pack all for powership order
And I switch to previous window
And I switch to frame having id or name "omsi-iframe"
And I add wait seconds of "6"
#And Refresh order screen in OMS
And I add wait seconds of "6"
And "[Shipped_Main_Order_Status]" should be present
And I close browser
#vdfvdv
