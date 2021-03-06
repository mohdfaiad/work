
(*
-----------------------------------------------------------------------------------------------------
Version : (287 - 275)
Date    : 12.02.2010
Author  : Antonio Marcos Fernandes de Souza (amfsouza)
Issue   : Complete message to warns user
Solution: New message was created.
Version : (287 - 276)
-----------------------------------------------------------------------------------------------------

Version : (287 - 274)
Date    : 11.05.2010
Author  : Antonio Marcos Fernandes de Souza (amfsouza)
Issue   : Remove exclamation pontuation and remove spaces between pontuation
Solution: spaces removed and changed exclamation to period pontuation.
Version : (287 - 275)
-----------------------------------------------------------------------------------------------------

Version : (287 - 272)
Date    : 10.14.2010
Author  : Antonio Marcos Fernandes de Souza (amfsouza)
Issue   : replace message "Customer cannot be empty" ( to layway payment )
          replace message "
Solution: Implemented Specific Layaway message to client.
          Implemented Specific Layaway message to Layaway payment.
Version : (287 - 271)
-----------------------------------------------------------------------------------------------------
*)



unit uMsgConstant;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  siComp, siLangRT;

const
  //All Message should be writing here for translation - RODRIGO

  //EXCLAMATION
MSG_EXC_SELECT_A_MODEL:         string = ''; (* Please select a model! *)
MSG_EXC_BARCODE_EXISTE:         string = ''; (* Barcode already in use! *)
MSG_EXC_BARCODE_EXISTE_PURCHASE:string = ''; (* Barcode already exists in this purchase! *)
MSG_EXC_MODEL_EXISTE:           string = ''; (* Model already exists! *)
MSG_EXC_NO_DEFAULT_CASREG:      string = ''; (* There is no default Cash Register for this terminal! *)
MSG_EXC_NO_ASSOCIETE_CASREG:    string = ''; (* The associated CashRegister does not have correspondent in DataBase._Call Administrator! *)
MSG_EXC_QTY_BIGGER:             string = ''; (* Qty is greater than Qty avaiable in Store plus Open Holds! *)
MSG_EXC_MODULE_DISABLE:         string = ''; (* Module not included in Current Package.*)
MSG_EXC_BARCODE_EXIST_PO:       string = ''; (* Model # already exists in this Purchase Order! *)
MSG_EXC_NO_MORE_ROWS_RETRIVE:   string = ''; (* No more rows to retrieve *)
MSG_EXC_INVALID_HOLD_NUMBER:    string = ''; (*  is not a valid Hold number! *)
MSG_EXC_SELECT_A_VENDOR:        string = ''; (* Please select a vendor! *)

  //EXCLAMATION PARTIAL
MSG_EXC_PART1_NO_HOLD_NUMBER:   string = ''; (* This Hold number  *)
MSG_EXC_PART2_NO_HOLD_NUMBER:   string = ''; (* does not exist! *)
MSG_EXC_PART1_NO_MORE_SERIAL:   string = ''; (* Cannot enter more than  *)
MSG_EXC_PART2_NO_MORE_SERIAL:   string = ''; (* serial number(s)! *)
  //END EXCLAMATION ############################################################

  //INFORMATION
MSG_INF_PO_ITEM_IN_RECEIVING:   string = ''; (* PO cannot be deleted._There are items on receiving! *)
MSG_INF_NOT_SERVER:             string = ''; (* This computer is not a server. *)
MSG_INF_SELECT_FIELD:           string = ''; (* You must select a field. *)
MSG_INF_CUSTOMER_NOT_MATCH:     string = ''; (* Customer is different from original hold. *)
MSG_INF_VERIFY_DELIVER_STATUS:  string = ''; (* Confirm delivery before exchange item *)
MSG_INF_DELIVER_TYPE_EMPTY:     string = ''; (* Deliver Type cannot be empty *)
MSG_INF_FILETER_CLEARED:        string = ''; (* Filter(s) cleared. *)
MSG_INF_FILETER_SAVED:          string = ''; (* Filter(s) saved! *)
MSG_INF_NO_FILETER_APPENDED:    string = ''; (* No Filter(s) appended. *)
MSG_INF_NO_DATA_FOUND:          string = ''; (* No Data Found. *)
MSG_INF_BARCODE_NOT_DEL:        string = ''; (* Barcode cannot be deleted. *)
MSG_INF_INVOICE_NOT_FOND:       string = ''; (* Invoice # not found. *)
MSG_INF_INVOICE_NOT_DELEVERED:  string = ''; (* The customer (%S) has invoice not delivered. Please confir delivery for invoices (%S).*)
MSG_INF_WRONG_QTY:              string = ''; (* Wrong Qty. *)
MSG_INF_ADJUSTMENT:             string = ''; (* Adjustment complete. *)
MSG_INF_CSR_IS_CLOSED:          string = ''; (* Close Cash Register error. *)
MSG_INF_PASSWORD_CANNOT_BE_NULL:string = ''; (* Password cannot be blank *)
MSG_INF_INVALID_PASSWORD:       string = ''; (* Invalid password. *)
MSG_INF_INVALID_USER_PASSWORD:  string = ''; (* User or Password is invalid. *)
MSG_INF_CHOOSE_NAME:            string = ''; (* Name cannot be blank! *)
MSG_INF_RESTORED_SUCESSFULY:    string = ''; (*  request(s) successfully restored. *)
MSG_INF_DATA_SUCESSFULY:        string = ''; (* Data successfully transfered. *)
MSG_INF_ERROR:                  string = ''; (* Error! *)
MSG_INF_SUPPLU_ADJ_DATE:        string = ''; (* You must supply an adjustment date. *)
MSG_INF_CANNOT_ACCESS_MODULE:   string = ''; (* You do not have access to this module. *)
MSG_INF_NO_ASSOC_COMMITION:     string = ''; (* Incomplete user information. Operation aborted! *)
MSG_NO_ASSOCIATED_COMMITION:    string = ''; (* User does not have a commission associated. Add a commission to this user. *)
MSG_INF_ONE_OPEN_PO_VENDOR:     string = ''; (* You should have at least one Open PO for this Vendor. *)
MSG_INF_ONE_OPEN_CASREG_MANAGER:string = ''; (* Function unauthorized for this user. *)
MSG_INF_MANAGER_TONEGATIVE_DISC:string = ''; (* You cannot make negative refunds._Try inserting new item first. *)
MSG_INF_COUNT_ITEMS:            string = ''; (* You should count all items *)
MSG_INF_SELECT_USER:            string = ''; (* You must select user name. *)
MSG_INF_NOT_CHANGE_ITEMS:       string = ''; (* You cannot change items not inserted by yourself. *)
MSG_INF_NOT_DELETE_ITEMS:       string = ''; (* You cannot delete items not inserted by yourself. *)
MSG_INF_NOT_DEL_ITEMS_LAYAWAY:  string = ''; (* You cannot delete items on layaway. *)
MSG_INF_NOT_MODIFY_LAYAWAY:     string = ''; (* layaway could not be edited after the end of the month it was created in. *)
MSG_INF_NOT_DEL_LAST_ITEM_LAYAWAY:string = ''; (* You cannot delete the last items on layaway. *)
MSG_INF_NOT_DEL_ITEMS_SALE:     string = ''; (* You cannot delete items on sale. *)
MSG_INF_NOT_ADD_ITEMS_SALE:     string = ''; (* You cannot add items on sale. *)
MSG_INF_NOT_EDIT_ITEMS_SALE:    string = ''; (* You cannot edit items on sale. *)
MSG_INF_NOT_MANAGE_CR:          string = ''; (* You cannot manage Reconciled Registers._You must uncheck first. *)
MSG_INF_NOT_EMPTY_VALUES:       string = ''; (* You cannot pay empty values. *)
MSG_INF_NOT_EMPTY_ADDRESS:      string = ''; (* You cannot pay empty address. *)
MSG_INF_NOT_GIVE_GIFTS:         string = ''; (* You cannot give Gifts. *)
MSG_INF_NOT_GIVE_DICOUNT:       string = ''; (* You cannot give Discount. *)
MSG_INF_NOT_REFUND_ITEM:        string = ''; (* You cannot give refunds._Call Manager. *)
MSG_INF_PRICE_INVALID:          string = ''; (* Invalid price. *)
MSG_INF_NOT_SELL_BELLOW_COST:   string = ''; (* You cannot sell below cost price. *)
MSG_INF_NOT_DUPLICATED_QTY:     string = ''; (* Qty cannot be duplicated. *)
MSG_INF_REBUILD_IDT:            string = ''; (* Rebuild Identity completed. *)
MSG_INF_NOT_QTY_SMALLER_1:      string = ''; (* Qty should be greater than 1. *)
MSG_INF_NOT_QTY_GREATER_1:      string = ''; (* Qty cannot be greater than 1. *)
MSG_INF_NOT_EQUAL_QTY:          string = ''; (* Quantity Moved cannot exceed the Quantity *)
MSG_INF_CREDIT_GREATER_INVOICE: string = ''; (* Customer Credit must be equals or greater than invoice payment *)
MSG_INF_CREDIT_SMALLER_TOTAL:   string = ''; (* Select credits are smaller than invoice payment._The Multiple tab will be selected. *)
MSG_INF_NOT_RECEIVE_HOLD:       string = ''; (* Error detected. Please try again. *)
MSG_INF_MODEL_DELETED:          string = ''; (* Model was successfully deleted. *)
MSG_INF_CHANGES_SYS:            string = ''; (* Changes will take effect next time you enter system. *)
MSG_INF_TRY_ADD_ROUTES:         string = ''; (* You added a route(s) with less Pax than minimum required. Number has been changed to  *)
MSG_INF_NOT_DESCRIPTION_EMPTY:  string = ''; (* Description cannot be empty. *)
MSG_INF_NOT_DISCOUNT_EMPTY:     string = ''; (* Discount cannot be empty. *)
MSG_INF_NOT_DAYSOFWEEK_EMPTY:   string = ''; (* Days of week cannot be empty. *)
MSG_INF_NOT_EXCEL_ITEMS:        string = ''; (* There is no item(s) to export to Spreadsheet. *)
MSG_INF_NOT_MANEGER_PASWORD:    string = ''; (* Not a valid Manager Password. *)
MSG_INF_NOT_CASHIER_PASWORD:    string = ''; (* Not a valid Cashier Password. *)
MSG_INF_HOLD_PAYING:            string = ''; (* Hold is being paid at this moment._Cannot be modified. *)
MSG_INF_HOLD_PAYING_NO_DELETE:  string = ''; (* Hold is being paid at this moment._Cannot be deleted. *)
MSG_INF_INVOICE_NOT_REACH:      string = ''; (* Invoice did not reach minimun for this Payment type. *)
MSG_INF_INVOICE_NOT_HAVE_ITEM:  string = ''; (* Invoice does not contain this item. *)
MSG_INF_INVOICE_NOT_REACH_DATE: string = ''; (* Invoice Total did not reach minimun for this Deposit date. *)
MSG_INF_PAYTYPE_NOT_THIS_DATE:  string = ''; (* Payment Type does not allow this Deposit Date. *)
MSG_INF_PAYMENT_NOT_RECEIVE:    string = ''; (* There are payments not received by customer. *)
MSG_INF_INVOICE_REC_ONLY_CASH:  string = ''; (* This Invoice is cash only. *)
MSG_INF_VENDOR_EXIST:           string = ''; (* Vendor already exists in this quote. *)
MSG_INF_MODEL_EXIST:            string = ''; (* Model already exists in this quote. *)
MSG_INF_INVOICE_HAS_SETUP:      string = ''; (* Invoice had already been setup for a postdate Payment. *)
MSG_INF_MODEL_ORDERED:          string = ''; (* Model is already on order. *)
MSG_INF_PO_OPEN:                string = ''; (* Vendor does not have an open PO._A new PO has been created. *)
MSG_INF_PO_CREATED:             string = ''; (* A PO for this Purchase Order was created. *)
MSG_INF_MANAGER_CAN_REMOV_HOLD: string = ''; (* Only Manager can remove this Hold. *)
MSG_INF_CASH_IN_DEPOSIT:        string = ''; (* Cash should not exceed Max Cash Deposit. *)
MSG_INF_TOTAL_SMALLER_PRE_SALE: string = ''; (* Amount received is less than Invoice Amount. *)
MSG_INF_GIFT_REGIST:            string = ''; (* gift has been registered. *)
MSG_INF_HOLD_IS_LOCK:           string = ''; (* This Hold is LOCKED. Verify there are no open users before unlocking. *)
MSG_INF_HOLD_IS_USING:          string = ''; (* Hold in use by another terminal._You may continue. *)
MSG_INF_HOLD_CANNOT_DELETE:     string = ''; (* Hold in use by another terminal._Cannot be deleted. *)
MSG_INF_CLOCK_IN:               string = ''; (* Clock In. *)
MSG_INF_CLOCK_OUT:              string = ''; (* Clock Out. *)
MSG_INF_TIME_ENTERED:           string = ''; (* You have already Clocked Out. *)
MSG_INF_EXPIRED_TIME:           string = ''; (* Time limit to CLOCK OUT expired._Check with manager. *)
MSG_INF_ITEM_HAS_POS_QTY:       string = ''; (* This item has a positive Qty. and cannot be deleted. *)
MSG_INF_NO_DEL_TOUR:            string = ''; (* This Agency has been active and cannot be deleted. *)
MSG_INF_LAYAWAY_HAS_HIST:       string = ''; (* Layaway has payment history and cannot be deleted. *)
MSG_INF_PO_CREATED_VENDOR:      string = ''; (* A new PO has been created for vendor:  *)
MSG_INF_CHOOSE_PAYTYPE:         string = ''; (* Choose a payment type. *)
MSG_INF_CHOOSE_PAYPLACE:        string = ''; (* Choose a payment place. *)
MSG_INF_PAYTYPE_SELECTED:       string = ''; (* Payment type already selected. *)
MSG_INF_CHOOSE_COSTTYPE:        string = ''; (* Choose a cost type. *)
MSG_INF_CHOOSE_BANK:            string = ''; (* Choose a bank account. *)
MSG_INF_INV_CLEANED:            string = ''; (* Inventory Qtys. have been reset to zero. *)
MSG_INF_DIFER_STORE:            string = ''; (* From/To Store cannot be the same. *)
MSG_INF_REPRINT_INVOICE:        string = ''; (* Invoice can be reprinted in "Cash Register-Invoice History" *)
MSG_INF_MODEL_RESTORED:         string = ''; (* Model has been Restored._Please, update Inventory qty. *)
MSG_INF_ACCOUNT_EXPIRED:        string = ''; (* Your account expired._Applications Network - www.mainretail.com *)
MSG_INF_DICTIONARI_NOT_FOUND:   string = ''; (* Main Retail dictionary file for this module was not found._You can download the dictionary at www.mainretail.com.
                                                Main Retail will run on the default language (English).*)
MSG_INF_NOT_TRANS_TO_RECONCILE: string = ''; (* There is not transaction to be reconciled._Right-Click on a transaction line and select "Mark for reconciliation". *)
MSG_INF_NOT_DEL_SYSREP:         string = ''; (* System Report cannot be delete. *)
MSG_INF_NOT_EDIT_SYSREP:        string = ''; (* System Report cannot be modified._Make a copy of system report. *)
MSG_INF_SELECT_VENDOR_FOR_TERM: string = ''; (* You must choose a vendor before import terms. *)
MSG_INF_NOT_PAY_DIFFER_ENTITY:  string = ''; (* Cannot pay multiple for different Entity._Select documents for the same entity. *)
MSG_INF_FREQUENCY_DELETED:      string = ''; (* Frequency deleted. *)
MSG_INF_SELECT_OPP_TYPE:        string = ''; (* Select an operation type. *)
MSG_INF_SELECT_SOFTWARE:        string = ''; (* Select a software from the list. *)
MSG_INF_SELECT_FILE_TYPE:       string = ''; (* Select a file type. *)
MSG_INF_SELECT_TRANS_TYPE:      string = ''; (* Select a transaction type. *)
MSG_INF_NO_INFO_TO_IMPORT:      string = ''; (* File does not contain information to import. *)
MSG_INF_NO_DATA_TO_EXPORT:      string = ''; (* There is not data to export. *)
MSG_INF_NO_QUICKTIME_AVAILABLE: string = ''; (* There is not quickinfo available. *)
MSG_INF_CHANGE_CURRENCY_RECALC: string = ''; (* Do you wish to set this currency as default?_All quotation will be recalculated. *)
MSG_INF_LOGIN_EXPIRED:          string = ''; (* You expared the chances to log in the System. *)
MSG_INF_NOT_VALID_CATEG_TYPE:   string = ''; (* Invalid category type._1 - Field must be filled with I - Income or E - Expenses. *)
MSG_INF_NOT_DEL_TRANS_SPLITED:  string = ''; (* Transaction split cannot be deleted._Delete parent transaction! *)
MSG_INF_NOT_SPLIT_ALL_ITEMS:    string = ''; (* Cannot split all items! *)
MSG_INF_SELECT_DB:              string = ''; (* Select a database. *)
MSG_INF_SELECT_FILE:            string = ''; (* Select a file name. *)
MSG_INF_BACKUP_ZIPPED:          string = ''; (* Back up completed and zipped!*)
MSG_INF_BACKUP_COMPLETED:       string = ''; (* Back up completed!*)
MSG_INF_RESTORE_COMPLETED:      string = ''; (* Restore completed!*)
MSG_INF_SPLITED_HOLD_DIVIDE:    String = ''; (* Splited hold cannot be divided*)
MSG_INF_CANNOT_SLIT_LESS2:      String = ''; (* Cannot Split without at less two items*)
MSG_INF_MAX_DELIVERY_DAYS1:     String = ''; (* Delivery Date cannot exceed*)
MSG_INF_MAX_DELIVERY_DAYS2:     String = ''; (* days for this Delivery Type*)
MSG_INF_DISCOUNT_LIMT_REACHED:  string = ''; (* Discounts above limit *)
MSG_INF_INV_DISCOUNT_LIMT:      string = ''; (* Invoice discounts has reached limited._Call manager to apply the discount. *)
MSG_INF_INV_TOT_COMMIS_PERCENT: string = ''; (* Total Commission above limit.*)
MSG_INF_NOT_MODIFY_COMMISSION:  string = ''; (* User cannot modify the commission *)
MSG_INF_EXAC_SALESPERSON_COMMIS: string = ''; (* Added commissioner already *)
MSG_INF_NOT_MIN_GREATER_MAX:    string = ''; (* Min Value cannot greater Max value. *)
MSG_INF_NOT_100_NOT_PERCENT:    string = ''; (* The total pecent does not complete 100 % *)
MSG_INF_MODEL_NOT_FOUND:        string = ''; (* Model not found! *)
MSG_INF_USE_NOT_FOUND:          string = ''; (* User not found! *)
MSG_INF_BARCODE_NOT_FOUND:      string = ''; (* Barcode not found! *)
MSG_INF_VENDOR_NUMBER_NOT_FOUND: string = ''; (* Vendor # not found! *)
MSG_INF_START_NEW_SALE_FOR_REFUND: string = ''; (* Start a new hold for refund *)
MSG_INF_CUPOM_NOT_EXIST:        string = ''; (* Invalid Cupom. *)
MSG_INF_PROMO_MODEL_EXIST:      string = ''; (* Model already exists. *)
MSG_INF_PROMO_ITEM_EXIST:       string = ''; (* Promo Item already exists in promo. *)
MSG_INF_NUMBER_ZERO_INVALID:    string = ''; (* Zero is invalid number. *)
MSG_INF_PROMO_SALE_DISC_SALE:   string = ''; (* Zero is invalid number. *)
MSG_INF_SELECT_DEPARTMENT:      string = ''; (* Select a Department. *)
MSG_INF_PERCENT_LESSER_100:     string = ''; (* Percentage shold be less than 100  *)
MSG_INF_FLAT_PROMO_DISC_INVALID: string = ''; (* The discount type for Flat Promo is invalid. *)
MSG_INF_LESSER_MINIM_VENDOR:    string = ''; (* The quantity ordered is below the minimum required by this vendor *)
MSG_INF_QTY_MUST_BIGGER_ZERO:   string = ''; (* Qty must be bigger that zero. *)
MSG_INF_TRANF_NUMBER_EXISTS:    string = ''; (* Number of tranferência already exists! *)
MSG_INF_TRANF_ALREADY_IMPORTED: string = ''; (* This transfer number has already been imported! *)
MSG_INF_NOT_DEL_ITEMS_TRANFER:  string = ''; (* You cannot delete items on tranfer. *)
MSG_INF_NOT_MODI_ITEMS_TRANFER: string = ''; (* You cannot modify items on tranfer. *)
MSG_INF_NOT_VALID_TRANFER_NUM:  string = ''; (* Invalid transfer number *)
MSG_INF_NOT_FOUND_TRANFER_NUM:  string = ''; (* Transfer number not found *)
MSG_INF_END_CALL_BEFORE_CLOSE:  string = ''; (* You need to end the call before close *)
MSG_INF_CATALOG_NOT_FOUND:      string = ''; (* Catalog database not found! *)
MSG_INF_QTY_NOT_DIF_MULT_CASE:  string = ''; (* Qty cannot be different of multiple of case. *)
MSG_INF_TYPE_CHANGE:            string = ''; (* You can not change the type! *)
MSG_INF_NOT_MODI_PRINTED_TRANFER: string = ''; (* You cannot modify items on printed tranfer. *)
MSG_INF_INVOICE_ALREADY_DISC:     string = ''; (* You already gave discount in invoice. *)
MSG_INF_ITEM_ALREADY_DISC:        string = ''; (* You already gave discount in item. *)
MSG_INF_SELECT_PET_SKU:           string = ''; (* You need select a SKU for the pet %S *)
MSG_INF_MORE_THAN_ONE_EXEC:       string = ''; (* Close MainRetail instaces to manager the cash register *)
MSG_INF_DEL_CUSTOMER_CREDIT:      string = ''; (* You need remove Customer Credit Payment before change customer. *)
MSG_INF_TOTAL_MUST_BE_ZERO:       string = ''; (* Total Due must be 0 to complete a sale. *)
MSG_INF_NOT_ADD_PAYMANETS:        string = ''; (* You cannot add more payments._Total due is 0. *)
MSG_INF_NOT_GRATER_TOTAL_DUE:     string = ''; (* Amount cannot be greater then Total Due. *)
MSG_INF_PAYMENTS_CANNOT_CLOSE:    string = ''; (* Payment screen cannot be closed._You need to finish receive or change to Layaway. *)
MSG_INF_COUPONS_NOT_DISCOUNTED:   string = ''; (* Coupons not discounted._ *)
MSG_INF_VALIDATE_SIZE_AND_COLOR:  string = ''; (* You need to enter the fields._Model, Description, Cost, and Sale Price. *)
MSG_INF_QTY_GREATER_ONE:          string = ''; (* Qty greater then one._The system will not allow you to return partial qty. *)
MSG_INF_DEL_MODEL_LOT:            string = ''; (* This item has lot!_You will need to manualy adjust the lot qty. *)
MSG_INF_RANGE_PERCENT_NOT_VALID:  String = ''; (* The discount value should be greater 0 and less or equal 100. *)
MSG_INF_RANGE_AMOUNT_NOT_VALID:   String = ''; (* The discount value should be greater 0 and less or equal 100,000.00. *)
MSG_INF_RANGE_QTY_NOT_VALID:      String = ''; (* The Qty value should be greater 0 and less or equal 100000. *)
MSG_INF_RANGE_AREACODE = 'The Area Code must be 3 Digits'; (* The Area Code must be 3 Digits *)
MSG_INF_RANGE_PHONE_NUMBER = 'The Phone Number must be 7 Digits'; (* The Phone Number must be 7 Digits *)
MSG_INF_INVALID_EMAIL = 'Is not a valid email';
MSG_INF_OBLIGATORY_ROUNDNAME = 'Roundname cannot be blank';
MSG_INF_OBLIGATORY_ADDRESS = 'Address must be informed ';
MSG_INF_OBLIGATORY_CITY = 'City must be informed';
MSG_INF_OBLIGATORY_STATE = 'State must be informed';
MSG_INF_OBLIGATORY_ZIPCODE = 'Zip Code must be informed';
MSG_INF_OBLIGATORY_SALETAX = 'Sale Tax must be informed';


//INFORMATION PARITAL
MSG_INF_PART1_USE_MR:           string = ''; (* You have  *)
MSG_INF_PART2_USE_MR:           string = ''; (*  minutes left of use._Applications Network - www.mainretail.com *)
MSG_INF_PART_PETTYCASH_MAX:     string = ''; (* Total Petty cannot exceed maximum of :  *)
MSG_INF_PART1_PO_CREATE_MR:     string = ''; (* A PO for  *)
MSG_INF_PART2_PO_CREATE_MR:     string = ''; (*  was created. *)
MSG_INF_PART1_COMMISS_PAIED:    string = ''; (* A commission payment of  *)
MSG_INF_PART2_COMMISS_PAIED:    string = ''; (*  has been sucessuful registered. *)
MSG_INF_PART_ITEM_SOLD_FOR:     string = ''; (* This Item was sold for  *)
MSG_INF_PART_NEW_HOLD_NUMBER:   string = ''; (* The new Hold number is  *)
MSG_INF_PART_NO_DUPLICATED:     string = ''; (*  cannot be duplicated. *)
MSG_INF_PART_FILTER_APPENDED:   string = ''; (* Filter(s) appended._ *)
MSG_INF_PART1_RECONCILED_OK:    string = ''; (* Congratulations!_Your account is balanced. *)
MSG_INF_PART2_RECONCILED_OK:    string = ''; (* The items you have marked have been reconciled in your system. *)
MSG_INF_PART_ROWS_IMPORTED:     string = ''; (*  row(s) imported. *)
MSG_INF_PART_FILE_CREATED_AT:   string = ''; (* File successful created._Path :  *)
MSG_INF_PART1_INVALID_FILE_NAME:string = ''; (* Invalid filename._1 - Filename cannot be empty *)
MSG_INF_PART2_INVALID_FILE_NAME:string = ''; (* 2 - File extension must filled.  *)
MSG_INF_PART1_SELECT_GL:        string = ''; (* Select a General Ledger - Chart of Account._ *)
MSG_INF_PART2_SELECT_GL:        string = ''; (* All entities on the list will be associated with the selected G/L on Peach Tree *)

MSG_INF_PERCENT_NEGATIVE_POSITIVE:     string = ''; (* Percentage shold be greater -100 and less than 100  *)

 //END INFORMATION ############################################################



//QUESTION
MSG_QST_PO_ITEM_IN_RECEIVING:   string = ''; (* There are items on receiving._Delete PO? *)
MSG_QST_ROUDING_PRICE:          string = ''; (* Round price ? *)
MSG_QST_CALC_MARGIN:            string = ''; (* Calculate margin ? *)
MSG_QST_UNSAVE_CHANGES:         string = ''; (* Cancel changes ? *)
MSG_QST_SAVE_UNSAVE_CHANGES:    string = ''; (* Save changes ? *)
MSG_QST_PRICE_BELLOW:           string = ''; (* Price entered is lower than cost price. Do you wish to continue ? *)
MSG_QST_AMOUN_NOT_REACH_MIN:    string = ''; (* Invoice total below minimum for this deposit date. Do you wish to continue ? *)
MSG_QST_AMOUN_NOT_REACH_MIN_PO: string = ''; (* PO total below minimum for the vendor._Do you wish to continue ? *)
MSG_QST_QTYARV_BIGGER_QTYORDED: string = ''; (* Qty received is greater than Qty ordered. Do you wish to continue ? *)
MSG_QST_COSTARV_BIGGER_CSTORDED:string = ''; (* Cost received is higher than Cost ordered. Do you wish to continue ? *)
MSG_QST_COSTARV_DIFFER_CSTORDED:string = ''; (* Cost received is higher than last cost. Do you wish to continue ? *)
MSG_QST_ONE_OPEN_MANAGER_CONTUE:string = ''; (* Cash Register has been opened by another user. Do you wish to continue? *)
MSG_QST_DELETE_MODEL_FROM_QUOT: string = ''; (* Delete Model from this quote ? *)
MSG_QST_DELETE_VENDOR_FROM_QUOT:string = ''; (* Delete Vendor from this quote ? *)
MSG_QST_DELETE_REQUEST:         string = ''; (* Delete Request ? *)
MSG_QST_NEW_COST_IN_INVENTORY:  string = ''; (* Insert new "COST" into Inventory ? *)
MSG_QST_DISCOUNT_REACHED:       string = ''; (* Deleting this item will reset discount ranges. Do you wish to continue ? *)
MSG_QST_DISCOUNT_WAS_REACHED:   string = ''; (* Discount limit has been reached. Do you wish to continue ? *)
MSG_QST_ERASE_ALL_DISCOUNT:     string = ''; (* Deleting this item will remove existing discounts. Do you wish to continue ? *)
MSG_QST_ERASE_ALL_DISCOUNT_ADD: string = ''; (* Adding a new item will remove existing discounts. Do you wish to continue ? *)
MSG_QST_ERASE_ALL_DISCOUNT_MOD: string = ''; (* Modifying this item will remove existing discounts. Do you wish to continue ? *)
MSG_QTS_REBUILD_IDT:            string = ''; (* Confirm Rebuild Identity ?_Rebuild Identity will check and fix errors in your Database. *)
MSG_QST_DELETE:                 string = ''; (* Delete ? *)
MSG_QST_DELETE_ITEM:            string = ''; (* Delete %S ? *)
MSG_QST_CANCEL_INVOICE:         string = ''; (* Cancel %S ? *)
MSQ_QST_RETORE:                 string = ''; (* Restore ? *)
MSQ_QST_RETORE_CAT_SUBCAT_GROUP:string = ''; (* Restore all inventory items ? *)
MSQ_QST_DELETE_CAT_REL:         string = ''; (* There are products with positive qty in inventory._This category can not be deleted. *)
MSQ_QST_DELETE_GROUP_REL:       string = ''; (* There are products with positive qty in inventory._This group can not be deleted. *)
MSQ_QST_DELETE_SUBGROUP_REL:    string = ''; (* There are products with positive qty in inventory._This sub group can not be deleted. *)
MSG_QST_DELETE_PERMANENT:       string = ''; (* Confirm permanent deletion? *)
MSG_QST_CONFIRM:                string = ''; (* Confirm Operation ? *)

MSG_QST_CONFIRM_CREATE_PO:      string = ''; (* Create PO ? *)
MSG_QST_CONFIRM_RESTORE:        string = ''; (* Confirm restore for this payment ? *)
MSG_QST_CONFIRM_PETTY_CASH:     string = ''; (* Confirm Petty Cash ? *)
MSG_QST_CONFIRM_REPRINT:        string = ''; (* Confirm Reprint ? *)
MSG_QST_CONFIRM_PRINT_RECEIPET: string = ''; (* Print receipt? *)
MSG_QST_CONFIRM_UNLOCK_PRESALE: string = ''; (* Confirm UnLock Hold ? *)
MSG_QST_CONFIRM_DEPOSIT_CASHREG:string = ''; (* Confirm Deposit Cash Register ? *)
MSG_QST_CONFIRM_CHANGE_LOCAL:   string = ''; (* Confirm changes to Local Parameters ? *)
MSG_QST_CONFIRM_CHANGE_LANG:    string = ''; (* Translat default MainRetail values ?_if yes, the system will override the values on the MainRetail fields *)
MSG_QST_CONFIRM_PAYMENT:        string = ''; (* Confirm Payment ? *)
MSG_QST_CONFIRM_HOLD:           string = ''; (* Confirm new Hold ? *)
MSG_QST_CONFIRM_PURCHASE:       string = ''; (* Confirm new Purchase ? *)
MSG_QST_CONFIRM_DELETE_PURCHASE:string = ''; (* Delete Purchase?_Warning!!! It may affect your inventory balance. *)
MSG_QST_CONFIRM_RECEVE_PURCHASE:string = ''; (* Confirm receiving this Purchase ? *)
MSG_QST_CONFIRM_RECEVE_LAYAWAY: string = ''; (* Confirm receiving this Layaway ? *)
MSG_QST_CONFIRM_RECEVE_HOLD:    string = ''; (* Confirm receiving this Hold ? *)
MSG_QST_CONFIRM_TAX_ISENTION:   string = ''; (* Confirm Tax exemption ? *)
MSG_QST_CONFIRM_ADJUST_INV:     string = ''; (* Confirm Adjustment in Inventory ? *)
MSG_QST_DELETE_MODEL:           string = ''; (* Confirm deletion for this model ? *)
MSG_QST_DELETE_SERIALNUMBER:    string = ''; (* Confirm deletion for this Serial Number ? *)
MSG_QST_DELETE_COST:            string = ''; (* Confirm deletion for this cost ? *)
MSG_QST_CONFIRM_CLOSE_REGISTER: string = ''; (* Close Cash Register ? *)
MSG_QST_PRINT_STATEMENT:        string = ''; (* Print statement ? *)
MSG_QST_PRINT_STATEMENT_DET:    string = ''; (* Print statement detail ? *)
MSG_QST_RESTORE_TAX:            string = ''; (* Restore Tax ? *)
MSG_QST_SURE:                   string = ''; (* Are you sure ? *)
MSG_QST_CLEAN_UP_INVENTORY:     string = ''; (* This operation will reset all inventory Qtys. to zero. Are You Sure ? *)
MSG_QST_RESTORE_INVENTORY:      string = ''; (* This operation will discard your reset records. Are You Sure ? *)
MSG_QST_NOT_MODEL_STORE:        string = ''; (* Qty transferred is greater than Qty on hand. Continue transfer ? *)
MSG_QST_INVOICE_DONOT_HAVE_ITEM:string = ''; (* Invoice does not contain this item. Do you wish to continue ? *)
MSG_QST_CASH_IS_IN_USER:        string = ''; (* Associated Cash Register already in use. Select another. *)
MSG_QST_PAYTYPE_NOT_ALLOW_DATE: string = ''; (* Payment Type does not allow this Deposit Date. Do you wish to continue ? *)
MSG_QST_INVOICE_ONLY_CASH:      string = ''; (* This Invoice is cash only. Do you wish to continue ? *)
MSG_QST_PO_OPEN_SAVE:           string = ''; (* These items have already been entered in PO for this vendor. Do you wish to reenter them ? *)
MSG_QST_OPEN_CASH_LESS_MONEY:   string = ''; (* Confirm opening cash register below  *)
MSG_QST_CONF_TRANSFER:          string = ''; (* Confirm New Transfer ? *)
MSG_QST_INV_NEGATIVE:           string = ''; (* Negative Inventory. Do you wish to continue ? *)
MSG_QST_INV_WILL_BE_NEGATIVE:   string = ''; (* Inventory will be negative. Do you wish to continue ? *)
MSG_QST_CLOSE_LAYAWAY:          string = ''; (* Close Layaway ? *)
MSG_QST_CANCEL_HOLD:            string = ''; (* Cancel hold? *)
MSG_QST_CONTINUE:               string = ''; (* Do you wish to continue ? *)
MSQ_QST_CHANGE_RECONCILED_TRANS:string = ''; (* You will change a reconciled transaction._The system will recalculate the reconciled total. Continue ? *)
MSG_QST_SAVE_REPORT:            string = ''; (* Save report changes ? *)
MSG_QST_CHANGE_PO_PRICE:        string = ''; (* The new Cost Price is different than Inventory. Change Our Price ? *)
MSG_QST_DEL_OTHER_DOC_PAYMENT:  string = ''; (* The record was paid with another document. Delete payment ?_If yes, all document payments will also be deleted. *)
MSG_QST_OVERRIDE_VENDOR_TERMS:  string = ''; (* Importing vendor terms again will erase all previews term._Continue? *)
MSG_QST_DOC_SPLITED_PAY_ALL:    string = ''; (* Document was splited. Add all parts of the document?_If yes, all disbursements of the document will be included to be paid. Otherwise, only a part of the document will be included.  *)
MSG_QST_EXIT:                   string = ''; (* Do you want to exit now? *)
MSG_QST_ADD_ANOTHER_CATEG:      string = ''; (* Would you like add another Category?*)
MSG_QST_ADD_ANOTHER_MODEL:      string = ''; (* Would you like add another Model?*)
MSG_QST_DEL_REGISTERED_PAYMENT1:string = ''; (* Delete registered payment ?_if you delete this payment, the cash register*)
MSG_QST_DEL_REGISTERED_PAYMENT2:string = ''; (* will be affected*)
MSG_QST_ENTER_LICENSE:          string = ''; (* Your license key will expire in %S days. Enter new license now?*)
MSG_QST_PAY_PURCHASE_DAYS:      string = ''; (* You entered 3 days to pay this purchase. The vendor send you the invoice with 2 days to pay. Continue?*)
MSG_QST_UPDATE_SELLING_PRICE:   string = ''; (* Update Selling Price?*)
MSG_QST_UPDATE_PRODUCT_PRICES:  string = ''; (* Update product prices?*)
MSG_QST_CONFIRM_AMOUNT:         string = ''; (* Confirm amount %S ?*)
MSQ_QST_DELETED_ITEM_RESTORE:   string = ''; (* Deleted item. Restore %S ?*)
MSG_INF_MODEL_NOT_FOUND_CREATE: string = ''; (* Product not found._Create it now? *)
MSG_INF_RECONNECT_TO_THE_SERVER:string = ''; (* Try to reconnect to the server? ? *)
MSG_QST_CHANGE_CUSTOMER:        string = ''; (* Changing customer will create a new hold._Continue ? *)
MSG_QST_CALC_SALE_PRICE:        string = ''; (* Recalculate saleprice ? *)
MSG_QST_PRINT_TRANSFER:         string = ''; (* Would you like to print now? *)

//amf October 10, 2012
MSG_QST_ITEM_RESALABLE_STOCK:    string = ''; (* Is this item resalable ? Item will go back into stock. *)

MSG_QST_ITEM_RESALABLE:         string = ''; (* Is this item resalable? *)
MSG_QST_RECEIVING_OTHER_STORE:  string = ''; (* Are you sure that you want to do receiving for other store? *)
MSG_QST_RECEIVING_HISTORY:      string = ''; (* Save Changes?_Resaving this invoice will update historical data and pricing. *)
MSG_QST_MODEL_LOT:              string = ''; (* There are items without lot, Continue?_Items: %S. *)
MSG_QST_PROCESS_BONUS:          string = ''; (* Error processing bonus. Continue?_. *)


  //QUESTION PARTIAL
MSG_QST_PART_CONFIRM:           string = ''; (* Confirm  *)
MSG_QST_PART_CRIATE_REP_COPY:   string = ''; (* Criate copy of Report  *)
MSG_QST_PART_REMOVE_REPORT:     string = ''; (* Remove report  *)
MSG_QST_PART1_CONFIRM_ADJST:    string = ''; (* Confirm a adjust of  *)
MSG_QST_PART2_CONFIRM_ADJST:    string = ''; (*  on the commission ? *)
MSG_QST_PART1_MOVE_INVOICE_ITEM:string = ''; (* You will move the  *)
MSG_QST_PART2_MOVE_INVOICE_ITEM:string = ''; (*  items. Confirm operation? *)
MSG_QST_PART1_QUERY_RETURN:     string = ''; (* Query will return more than  *)
MSG_QST_PART2_QUERY_RETURN:     string = ''; (*  lines, continue? *)
MSG_QST_PART1_DELETE_PERMANENT: string = ''; (* Confirm permanent deletion of  *)
MSG_QST_PART2_DELETE_PERMANENT: string = ''; (* line(s) ? *)
MSG_QST_PART1_DELETE_LINES:     string = ''; (* Delete  *)
MSG_QST_PART2_DELETE_LINES:     string = ''; (* line(s) ? *)
MSQ_QST_PART1_RETORE_LINES:     string = ''; (* Restore  *)
MSQ_QST_PART2_RETORE_LINES:     string = ''; (* line(s) ? *)
MSQ_QST_PART1_DIFFER_RECONC_BAL:string = ''; (* Different Total! Do you want to Adjust balance now ?_The total of the items you have marked is different than bank statement end balance.  *)
MSQ_QST_PART2_DIFFER_RECONC_BAL:string = ''; (* You may have Office Manager enter a balance adjust. *)
MSQ_QST_PART1_CHECK_USES:       string = ''; (* The Check Number " *)
MSQ_QST_PART2_CHECK_USES:       string = ''; (* " was already used. Continue? *)
MSG_QST_PART_ADD_ANOTHER:       string = ''; (* Would you like to add another *)
MSG_QST_PART_ZIPCODE:           string = ''; (* Would you like to search? *)
MSG_QST_ADD_CASH_FINISH:        string = ''; (* 'Add %S in Cash and finish sale?' *)
MSG_QST_DEL_VENDOR_TAX:         string = ''; (* Delete tax?_It will affect old purchases! *)


 //END QUESTION ############################################################



 //CRITICAL
MSG_CRT_QTY_BIGGER_0:           string = ''; (* Enter a quantity greater than Zero *)
MSG_CRT_NO_ITEM:                string = ''; (* There are no Items! *)
MSG_CRT_THERE_IS_NO_VENDOR:     string = ''; (* There is no Vendor! *)
MSG_CRT_BUDGET_NO_DELETE:       string = ''; (* Cannot delete others budget! *)
MSG_CRT_BUDGET_NO_CONVERT:      string = ''; (* You cannot convert budget to hold! *)
MSG_CRT_BUDGET_NO_CONFIRM:      string = ''; (* You cannot confirm budget! *)
MSG_CRT_FILE_ERROR:             string = ''; (* File Error! *)
MSG_CRT_CREATIBG_FILE_ERROR:    string = ''; (* Error creating file.! *)
MSG_CRT_CREATING_DATA_ERROR:    string = ''; (* Error creating data. *)
MSG_CRT_INVENTORY_WILL_BE_NEG:  string = ''; (* Negative Inventory. To proceed, call Manager! *)
MSG_CRT_INVENTORY_NEGATIVE:     string = ''; (* Negative Inventory! *)
MSG_CRT_INVENTORY_IS_ZERO:      string = ''; (* Inventory will be zero or nevative! *)
MSG_CRT_UNAVAIlABLE_INVENTORY:  string = ''; (* Unavailable Inventory (%S)! *)
MSG_CRT_MODEL_IS_IN_DELIVER:    string = ''; (* Negative Inventory! *)
MSG_CRT_CANNOT_MARK_DELIVER:    string = ''; (* Product %S can not be delivered._The first reservation has to be delivered first! *)
MSG_CRT_MARK_DELIVERY_NEXTDAY:  string = ''; (* Cannot mark nextday delivery after %D *)
MSG_CRT_NO_FAX_NUMBER:          string = ''; (* Fax number cannot be empty! *)
MSG_CRT_NO_FEATURE:             string = ''; (* Feature cannot be empty! *)
MSG_CRT_NO_CUSTUMER:            string = ''; (* Customer cannot be empty! *)
MSG_CRT_NO_DATE:                string = ''; (* Date cannot be empty! *)
MSG_CRT_NO_SERIALNUMBER:        string = ''; (* Serial Number cannot be empty! *)
MSG_CRT_SERIAL_GREATER_THEN_30: string = ''; (* Serial Number cannot be greater then 30! *)
MSG_CRT_NO_AUTHORIZANUMBER:     string = ''; (* Authorization # cannot be empty! *)
MSG_CRT_NO_ORG_STORE:           string = ''; (* Originating Store cannot be empty! *)
MSG_CRT_NO_DES_STORE:           string = ''; (* Destination Store cannot be empty! *)
MSG_CRT_NO_DOCUMENT_CUSTUMER:   string = ''; (* Customer documents cannot be empty! *)
MSG_CRT_NO_MODEL:               string = ''; (* Model cannot be empty! *)
MSG_CRT_NO_PRODUCT:             string = ''; (* Product cannot be empty! *)
MSG_CRT_NO_RECEIPT_TEXT:        string = ''; (* Receipt Text cannot be empty! *)
MSG_CRT_NO_DEPARTMENT:          string = ''; (* Department cannot be empty! *)
MSG_CRT_NO_VENDOR:              string = ''; (* Vendor cannot be empty! *)
MSG_CRT_NO_VENDOR_CODE:         string = ''; (* Vendor code cannot be empty! *)
MSG_CRT_NO_VENDOR_ACCOUNT:      string = ''; (* Vendor account cannot be empty! *)
MSG_CRT_NO_DEPARTMENT_EXIST:    string = ''; (* Departmento already exist! *)
MSG_CRT_NO_VENDOR_CODE_EXIST:   string = ''; (* Vendor code already exist! *)
MSG_CRT_NO_VENDOR_ACCOUNT_EXIST:string = ''; (* Vendor account already exist! *)
MSG_CRT_NO_FIRST_NAME:          string = ''; (* First Name cannot be empty! *)
MSG_CRT_NO_LAST_NAME:           string = ''; (* Last Name cannot be empty! *)
MSG_CRT_NO_RA:                  string = ''; (* RA cannot be empty! *)
MSG_CRT_NO_NUMBER:              string = ''; (* Number cannot be empty! *)
MSG_CRT_NO_DEL_PAYMENT:         string = ''; (* Payment cannot be deleted. *)
MSG_CRT_NO_DEL_RECEIVED_PAYMENT:string = ''; (* Payment was already received and cannot be deleted._Only Office Manager can update this payment. *)
MSG_CRT_NO_DEL_RECORD:          string = ''; (* Record cannot be deleted. *)
MSG_CRT_NO_DEL_RECORD_DETAIL:   string = ''; (* Record cannot be deleted._Delete detail first. *)
MSG_CRT_NO_RECORD_TYPE:         string = ''; (* Invalid Record Type. *)
MSG_CRT_NO_PAYMENT_ZERO:        string = ''; (* Payment cannot be zero! *)
MSG_CRT_INV_RET_WITH_STOREACC:  string = ''; (* Returns without a receipt require a store credit to be issued! *)
MSG_CRT_NO_AMOUNT_ZERO:         string = ''; (* Amount cannot be less then zero! *)
MSG_CRT_NO_TOTAL_DIFFERENT:     string = ''; (* Total entered is different then grand total *)
MSG_CRT_NO_AMOUNT:              string = ''; (* Amount received cannot be empty! *)
MSG_CRT_NO_TOTAL_AMOUNT:        string = ''; (* Amount cannot be empty! *)
MSG_CRT_DUETOTAL_DIFFERENT_PUR: string = ''; (* Amount listed is different than Purchase Amount. *)
MSG_INF_TOTAL_DIFFERENT_PUR:    string = ''; (* Amount is different than Purchase Amount. *)
MSG_INF_TOTAL_ZERO:             string = ''; (* Amount cannot be zero *)
MSG_CRT_NO_FILTER:              string = ''; (* Filter name cannot be empty! *)
MSG_CRT_NO_PARENT:              string = ''; (* New Parent cannot be empty! *)
MSG_CRT_NO_QTY_EMPTY:           string = ''; (* Quantity cannot be empty! *)
MSG_CRT_NO_DEL_CATEGORY:        string = ''; (* Category cannot be deleted! Category is not empty. *)
MSG_CRT_NO_DEL_TRASNFER:        string = ''; (* Transfer cannot be deleted! transfer is not empty. *)
MSG_CRT_NO_SEND_BY:             string = ''; (* "Sent by" cannot be empty *)
MSG_CRT_NOT_RETURN_ITEM:        string = ''; (* Cannot return an item before sent to vendor! *)
MSG_CRT_NO_QTY_ORDER_EMPTY:     string = ''; (* Quantity on Order cannot be empty! *)
MSG_CRT_NO_QTY_REPAIR_EMPTY:    string = ''; (* Quantity on Repair cannot be empty! *)
MSG_CRT_NO_QTY_PERPUR_EMPTY:    string = ''; (* Quantity on PrePurchase cannot be empty! *)
MSG_CRT_NO_CHANGE_PAST_PURCHASE:string = ''; (* You cannot change past month purchase! *)
MSG_CRT_NO_DIFFERRENCE_EMPTY:   string = ''; (* Adjust. Qty. cannot be empty! *)
MSG_CRT_NO_INVOICE_NUM_EMPTY:   string = ''; (* Invoice number cannot be empty! *)
MSG_CRT_NO_SALESPERSON_EMPTY:   string = ''; (* Sales Person cannot be empty! *)
MSG_CRT_NO_PP_LICENC_EMPTY:     string = ''; (* Passport or TaxID # cannot be empty! *)
MSG_CRT_NO_FROM_AGENCY:         string = ''; (* "From Agency" cannot be empty! *)
MSG_CRT_NO_FROM_GUIDE:          string = ''; (* "From Agent" cannot be empty! *)
MSG_CRT_NO_TO_AGENCY:           string = ''; (* "To Agency" cannot be empty! *)
MSG_CRT_NO_TO_GUIDE:            string = ''; (* "To Agent" cannot be empty! *)
MSG_CRT_NO_DUE_DATE:            string = ''; (* Due date cannot be empty! *)
MSG_CRT_DUEDATE_SMALER_ISSUE:   string = ''; (* Due date cannot be smaller than Issue Date. *)
MSG_CRT_DELIVER_DATE_SMALER:    string = ''; (* Date cannot be smalled then today. *)
MSG_CRT_NO_CHANGE_DOC_AMOUNT:   string = ''; (* Document amount cannot be changed._Please remove payments. *)
MSG_CRT_NO_DOC_DISBURSEMENT:    string = ''; (* This document must have at least one disbursement. *)
MSG_CRT_NO_ACCESS:              string = ''; (* Access denied! *)
MSG_CRT_NO_MODEL_SELECTED:      string = ''; (* Select a model! *)
MSG_CRT_NO_MODEL_INFORMTION:    string = ''; (* Invalid Module Information. *)
MSG_CRT_NO_RECORD_REPORT:       string = ''; (* The selection returned 0 item(s)! *)
MSG_CRT_NO_REAL_QTY:            string = ''; (* "Qty. Counted" cannot be empty! *)
MSG_CRT_NO_DEL_FREQUENCY:       string = ''; (* One or more frequencies could not be deleted._Only frequency without payments can be deleted. *)
MSG_CRT_ERROR_OCURRED:          string = ''; (* An error has ocurred ! *)
MSG_CRT_NO_HELP:                string = ''; (* Help File not found! *)
MSG_CRT_NO_FINANCE:             string = ''; (* Module "Office Manager" not found! *)
MSG_CRT_NO_PUPPYT:              string =  ''; (* Module "Puppy Tracker Integration" not found !*)
MSG_CRT_NO_WEEKDAY:             string = ''; (* You must choose a week day! *)
MSG_CRT_NO_YEAR:                string = ''; (* You must choose a year! *)
MSG_CRT_NO_RECORD:              string = ''; (* You must choose a record! *)
MSG_CRT_NO_RECORD_TO_PRINT:     string = ''; (* You must choose a record before print! *)
MSG_CRT_NO_SERIAL_NUMBER:       string = ''; (* Serial Number(s) cannot be empty._You must enter a serial number for each checked S/N item! *)
MSG_CRT_NO_MEDIA:               string = ''; (* You must select a Media! *)
MSG_CRT_NO_GUIDE:               string = ''; (* You must select an Outside Agent! *)
MSG_CRT_NO_STORE_SELECTED:      string = ''; (* You must select a Store! *)
MSG_CRT_NO_AGENCY_SELECTED:     string = ''; (* You must select an Agency! *)
MSG_CRT_NO_MEDIA_SELECTED:      string = ''; (* You must select a Media! *)
MSG_CRT_QTY_POSITIVE:           string = ''; (* Qty must be positive! *)
MSG_CRT_COST_POSITIVE:          string = ''; (* Cost must be positive! *)
MSG_CRT_NO_VALID_DATE:          string = ''; (* Invalid date! *)
MSG_CRT_NO_CONFIRMED_ESTIMATED: string = ''; (* Budget is not confirmed! *)
MSG_CRT_NO_VALID_DAY:           string = ''; (* Invalid day! *)
MSG_CRT_NO_VALID_FREQUENCY:     string = ''; (* Invalid frequency! *)
MSG_CRT_NO_VALID_INV_DATE:      string = ''; (* Invalid invoice date! *)
MSG_CRT_NO_VALID_DUE_DATE:      string = ''; (* Invalid due date! *)
MSG_CRT_NO_VALID_SELECTION:     string = ''; (* Invalid selection! *)
MSG_CRT_NO_VALID_AMOUNT:        string = ''; (* Invalid payment amount! *)
MSG_CRT_AS_EXCEED_BALANCE:      string = ''; (* Payment (%S) exeed Store Account total (%S)! *)
MSG_CRT_CUSTOMER_NOTUSE_PAYMENT:string = ''; (* Customer cannot use this payment type *)
MSG_CRT_INVALID_AMOUNT:         string = ''; (* Invalid amount! *)
MSG_CRT_NO_VALID_INIDATE:       string = ''; (* Invalid start date! *)
MSG_CRT_NO_VALID_FIMDATE:       string = ''; (* Invalid end date! *)
MSG_CRT_NO_VALID_YEAR:          string = ''; (* Invalid Year! *)
MSG_CRT_NO_VALID_HOLD:          string = ''; (* Invalid Hold # *)
MSG_CRT_NO_PAY_DATE:            string = ''; (* Invalid Payment Date! *)
MSG_CRT_NO_BARCODE:             string = ''; (* Invalid Barcode! *)
MSG_CRT_NO_ZIPCODE:             string = ''; (* Invalid Zipcode! *)
MSG_CRT_INVAL_COST_PRICE:       string = ''; (* Invalid Cost Price! *)
MSG_CRT_INVAL_DATE_RECEIVE:     string = ''; (* Invalid "receive date"! *)
MSG_CRT_NO_VALID_TRIAL_INFO:    string = ''; (* Invalid information about Trial Counter._Applications Network - www.mainretail.com *)
MSG_CRT_NO_VALID_WIZARD:        string = ''; (* Could not initialize Main Retail Setup Wizard._Check for "Wizard.exe" in your MainRetail directory. *)
MSG_CRT_NO_CONNECT_SERVER:      string = ''; (* Unabled to connect the server._Check Server connection. *)
MSG_CRT_NO_VPN_SERVER:          string = ''; (* Unabled to connect the server._Check VPN connection. *)
MSG_CRT_NO_PARAM_SERVER:        string = ''; (* Unabled to connect the server._Check Server parameters. *)
MSG_CRT_NO_FOUND_HOLD:          string = ''; (* Hold not found! *)
MSG_CRT_HOLD_PAID:              string = ''; (* Hold already paid! *)
MSG_CRT_NO_POITEM:              string = ''; (* There are no items to add in PO! *)
MSG_CRT_QUOTE:                  string = ''; (* Quote does not exist! *)
MSG_CRT_NO_SERIALNUMBER_INV:    string = ''; (* Serial Number not found *)
MSG_CRT_EXIST_SERIALNUMBER:     string = ''; (* Serial Number Already exists ! *)
MSG_CRT_EXIST_NUMBER:           string = ''; (* Document number Already exists !_Continue? *)
MSG_CRT_EXIST_USERCODE:         string = ''; (* Code already exists ! *)
MSG_CRT_EXIST_SERIALNUMBER_PUR: string = ''; (* Serial Number Already exists into Purchase ! *)
MSG_CRT_EXIST_SERIALNUMBER_INV: string = ''; (* Serial Number Already exists into Inventory ! *)
MSG_CRT_EXIST_SERIALNUMBER_RECEI:string = '';(* Serial Number Already exists in another receiving ! *)
MSG_CRT_SERIALNUMBER_INV:       string = ''; (* Serial Number Error._a)SN already exists, b)Qty on Hand is 0, or c)invalid store *)
MSG_CRT_NO_VALID_TIME:          string = ''; (* Error! *)
MSG_CRT_NO_VALID_EMAIL:         string = ''; (* E-mail not found! *)
MSG_CRT_NO_DELETE_REPAIR:       string = ''; (* Repair cannot be deleted!_This is not the last status *)
MSG_CRT_NO_CONECTION:           string = ''; (* Connection Error ! *)
MSG_CRT_NOT_REMOV_PO:           string = ''; (* PO cannot be deleted. *)
MSG_CRT_NOT_EMPTY_USER:         string = ''; (* User cannot be empty! *)
MSG_CRT_NOT_EMPTY_CATEGORY:     string = ''; (* Category cannot be empty! *)
MSG_CRT_NOT_EMPTY_MANUF:        string = ''; (* Manufacturer cannot be empty! *)
MSG_CRT_CHOOSE_VENDOR_BEFORE:   string = ''; (* You must choose a Vendor before adding Items ! *)
MSG_CRT_NOT_DEL_PURCHASE:       string = ''; (* This item cannot be deleted! *)
MSG_CRT_NOT_DEL_SO_ITEM:        string = ''; (* This item cannot be deleted!_Remove the products/services first *)
MSG_CRT_ERROR_PRINT:            string = ''; (* Printer Error! *)
MSG_CRT_NO_ITEM_PAY:            string = ''; (* Invoice empty, cannot receive! *)
MSG_CRT_NO_INVOICE_UNPAY:       string = ''; (* Invoice cannot be unpayed! *)
MSG_CRT_QTY_NO_ZERO:            string = ''; (* Qty cannot be ZERO. *)
MSG_CRT_ERROR_ADD_COLOR:        string = ''; (* Error adding Color *)
MSG_CRT_NO_COLOR:               string = ''; (* You must choose a color ! *)
MSG_CRT_ERROR_ADD_SIZE:         string = ''; (* Error adding Size! *)
MSG_CRT_NO_SIZE:                string = ''; (* You must choose a size ! *)
MSG_CRT_ERROR_VALUE:            string = ''; (* Invalid "SvrValue". *)
MSG_CRT_ERROR_ADDING:           string = ''; (* Error adding record. *)
MSG_CRT_ERROR_DELETING:         string = ''; (* Error deleting item. *)
MSG_CRT_ERROR_SAVING:           string = ''; (* Error saving data. Transaction Rollback. *)
MSG_CRT_ERROR_BALANCE_CHANGE:   string = ''; (* Error changing balance. *)
MSG_CRT_ERROR_RECONCILING:      string = ''; (* Reconcile Error. *)
MSG_CRT_NO_EMPTY_REASON:        string = ''; (* Reason can not be empty *)
MSG_CRT_NO_EMPTY_DEFECT:        string = ''; (* Defect can not be empty *)
MSG_CRT_NO_AGENT:               string = ''; (* There are no Outside Agent! *)
MSG_CRT_ERROR_DEPOSIT_ACC:      string = ''; (* Invalid Deposit Account information._Please, enter a Bank Account for each Store. *)
MSG_CRT_ERROR_PAYMENT_TYPE:     string = ''; (* Invalid Payment Type information._Please, enter Bank Account for each Payment Type. *)
MSG_CRT_ERROR_TAX_CATEG:        string = ''; (* Invalid Tax information._Please, enter tax for each category. *)
MSG_CRT_ERROR_TAX_STORE:        string = ''; (* Invalid Tax information._Please, enter tax for each store. *)
MSG_CRT_ERROR_STACK_SIZE:       string = ''; (* You enter an invalid Stack Size *)
MSG_CRT_ERROR_DEL_PURCHASE:     string = ''; (* Select purchase was payed. Only unpaid purchases can be deleted._If you want to delete this purchase, first delete the payments in Office Manager. *)
MSG_CRT_ERROR_PRINTING:         string = ''; (* Printer Error! Do you wish to try again?_Make sure the printer is ON and click on YES to try again. *)
MSG_CRT_ERROR_PW_NOT_MATCH:     string = ''; (* The new password does not match with the old password! *)
MSG_CRT_ERROR_PW_NOT_CONFIRM:   string = ''; (* Confirm password does not match with password. *)
MSG_CRT_NO_DUPLICATE_PASSWORD:  string = ''; (* Password cannot be duplicated. *)
MSG_CRT_NO_EMPTY_STORE_NAME:    string = ''; (* Store Name cannot be empty. *)
MSG_CRT_NO_EMPTY_TAX_DESC:      string = ''; (* Tax Description cannot be empty.*)
MSG_CRT_NO_EMPTY_TAX_VALUE:     string = ''; (* Tax Value cannot be empty.*)
MSG_CRT_NO_EMPTY_VALUE:         string = ''; (* Value cannot be empty.*)
MSG_CRT_NO_EMPTY_CASH_REG:      string = ''; (* Cash Register Name cannot be empty.*)
MSG_CRT_NO_EMPTY_OPEN_CASH:     string = ''; (* Opening cash drawer amount cannot be empty.*)
MSG_CRT_NO_CLOSE_CASH_REGISTER: string = ''; (* You cannot close cash register.*)
MSG_CRT_NO_MAKE_DEPOSIT:        string = ''; (* You cannot make deposits.*)
MSG_CRT_NO_MAKE_PETTY_CASH:     string = ''; (* You cannot make petty cash.*)
MSG_CRT_NO_DUPLICATE_CATEGORY:  string = ''; (* Category cannot be duplicated.*)
MSG_CRT_NO_EMPTY_COST:          string = ''; (* Cost Price cannot be empty.*)
MSG_CRT_NO_ACCESS_EMPTY_COST:   string = ''; (* Cost Price cannot be empty._Modify the cost price on the inventory.*)
MSG_CRT_NO_EMPTY_SELLING:       string = ''; (* Selling Price cannot be empty. *)
MSG_CRT_NO_DUPLICATE_MODEL:     string = ''; (* Model cannot be duplicated.*)
MSG_CRT_INVALID_FILE:           string = ''; (* Invalid file! *)
MSG_CRT_INVALID_DOCUMENT:       string = ''; (* Invalid Document *)
MSG_CRT_DOCUMENT_ALREDY_EXIST:  string = ''; (* Document %D already exist*)
MSG_CRT_ERROR_BACKUP:           string = ''; (* Back up Error! *)
MSG_CRT_ERROR_ZIPPING_BACKUP:   string = ''; (* Zipping Back up file Error! *)
MSG_CRT_ERROR_RESTORE:          string = ''; (* Restore Error! *)
MSG_CRT_ERROR_INVALID_KEY:      string = ''; (* Invalid Key*)
MSG_CRT_ERROR_MAX_PAYMENTS:     string = ''; (* Maximum number of payments exceeded*)
MSG_CRT_ERROR_MAX_NUM_PAYNOW:   string = ''; (* Maximum days for paying now is %D *)
MSG_CRT_USER_ALREADY_EXISTS:    string = ''; (* User and Password already exists *)
MSG_CRT_RECEIVEDBY_ISEMPTY:     string = ''; (* "Received' by cannot be empty *)
MSG_CRT_INVOICE_NUMBER_EMPTY:   string = ''; (* Invoice Number cannot be empty*)
MSG_CRT_NOT_UPDATE_SELL_PRICE:  string = ''; (* Could not update Selling Prices*)
MSG_CRT_PURCHASE_HAS_PAYMENT:   string = ''; (* Purchase was already paid and cannot be changed._Please, delete payments on Office Manager before change this purchase*)
MSG_CRT_INVALID_CHECK_NUMBER:   string = ''; (* Invalid check number *)
MSG_CRT_CPF_ALREADY_EXISTS:     string = ''; (* Customer document already exists *)
MSG_CRT_FILL_RETURN_DOC_NUMBER: string = ''; (* Return document number must be suplied *)
MSG_CRT_OTHER_COMMISS_NOT_ALLOW:string = ''; (* You cannot view other stores commissions  *)
MSG_CRT_OTHER_STORE_NOT_ALLOW:  string = ''; (* You cannot access this store *)
MSG_CRT_NOT_SPLITED_DELIVER:    string = ''; (* You cannot split hold when the delivery is confirmed *)
MSG_CRT_NOT_HISTORY_TYPE:       string = ''; (* History type cannot be empty *)
MSG_CRT_NOT_RESULT_TYPE:        string = ''; (* Result cannot be empty *)
MSG_CRT_BONUS_NOT_FOUND:        string = ''; (* Bonus bucks not found *)
MSG_CRT_BONUS_ALREADY_UTILIZED: string = ''; (* Bonus Buck has already been used. *)
MSG_CRT_BONUS_IS_NOT_VALID:     string = ''; (* Cupon is not valid. *)
MSG_CRT_BONUS_EXPIRED:          string = ''; (* Cupon expired. *)
MSG_CRT_NO_BONUS_PAYMENT_SET:   string = ''; (* 'There is not Bonus setup as payment type._Bonus will not by applied for the customer.' *)
MSG_CRT_NO_OPEN_CASREG:         string = ''; (* There is no open Cash Register! *)
MSG_CRT_MODEL_WITHOUT_LOT:      string = ''; (* There are items without lot!_Items: %S. *)
MSG_CRT_GIFT_ACCOUNT_ZERO:      string = ''; (* Collect Card %S!_The balance is 0.00 *)
MSG_CRT_NOT_GIFT_ACCOUN_BALANCE:string = ''; (* Account %S has only %F *)
MSG_CRT_GIFT_ACCOUNT_EXIST:     string = ''; (* Gift Account %S already exist *)
MSG_CRT_ERROR_GIFT_CREATE:      string = ''; (* Error creating gift account *)
MSG_CRT_ERROR_DEL_GIFT:         string = ''; (* Error deleting gift account *)
MSG_CRT_GIFT_EXPIRED:           string = ''; (* The card %S is expired *)
MSG_CRT_NO_GIFT_ACCOUNT:        string = ''; (* Account %S does not exist! *)
MSG_CRT_UTILITY_NOT_DEFINED:    string = ''; (* Utility has not been defined! *)
MSG_INF_NO_ALTERATION:          string = ''; (* It did not have alteration in the data *)
MSG_CRT_CLOSE_INVENTORY:        string = ''; (* Close inventory count ? *)
MSG_CRT_CLOSE_PHYSICAL_INV:     string = ''; (* This will reset all unscanned items to 0. Close inventory count ? *)
MSG_CRT_ASSOCIATING_DEPARTMENT: string = ''; (* An error occurred while it associated the department. *)
MSG_CRT_COPYING_PO:             string = ''; (* An error ocurred when it was copying PO. *)
MSG_CRT_NO_VALID_ITEM:          string = ''; (* Please select 1 choice. *)
MSG_CRT_EXCEEDED_ITEMS:         string = ''; (* Select 4 choices only. *)
MSG_CRT_PAYMENT_NOT_EXIST:      string = ''; (* Payment does not exist!*)
MSG_CRT_NO_BARCODE_SCALE:       string = ''; (* Invalid barcode for scale! *)
MSG_CRT_RECEIVING_VALIDATE:     string = ''; (* Receiving cannot be verified!_Duplicated models: *)
MSG_CRT_NO_DISCOUNT_PROMO:      string = ''; (* Discount Type not available for selected Promo Type. *)
MSG_CRT_INVALID_DESCRIPTION_PDV:string = '';
MSG_CRT_PAYMENT_PROCESSOR_NOT_FOUND: String = '';(* Payment Proccess Type not found*)
MSG_CRT_ERROR_USING_BONUS:      String = '';(* Error using bonus._*)
MSG_CRT_ERROR_VOIDING_BONUS:    String = '';(* Error voiding bonus._*)
MSG_CRT_ERROR_UNUSE_BONUS:      String = '';(* Error unuse bonus._*)
MSG_CRT_BONUS_NOT_APPLY_FASTSALE:String = '';(* Bonus cannot be applied on fast sale*)

MSG_CRT_NO_PAYMENT_TYPE:        string = ''; (* Payment Type cannot be empty! *)

//amfsouza 02.12.2010
MSG_QST_CONFIRM_NICE: String = 'You can only finalize Scan Receipts once.  Continue? ';

//amfsouza 10.14.2010
MSG_CRT_LAYAWAY_DOWNPAYMENT:    String = 'Layaway requires down payment to process.';
MSG_CRT_LAYAWAY_CUSTOMER:       String = 'Enter customer before finishing layaway. ';

// Antonio 2014 Aug 15
MSG_CRT_TAG_NOBLANK: String = 'Tag cannot be blank.';
MSG_CRT_MEDIA_FILES_NEEDED = 'Please select a media type';
MSG_CRT_MEDIA_QUESTION = 'How did you hear about us? Please select a media type';
//MSG_INF_RANGE_AREACODE = 'The Area Code must be 3 Digits';
//MSG_INF_RANGE_PHONE_NUMBER = 'The Phone Number must be 7 Digits';


//CRITICAL PARTIAL
MSG_CRT_PART_ERROR_SAVE_REPORT: string = ''; (* Error saving report  *)
MSG_CRT_PART_ERROR_SAVE_REPFILE:string = ''; (* Error saving report file  *)
MSG_CRT_PART_FIELDS_NO_EMPTY:   string = ''; (* _In this form, the field(s) can not be empty :  *)
MSG_CRT_PART_CLASS_NOT_DEFINED: string = ''; (* FormClass not defined._OnCreateFch. *)
MSG_CRT_PART1_ERROR_DEL_PAYMENT:string = ''; (* Payment cannot be deleted. It has  *)
MSG_CRT_PART2_ERROR_DEL_PAYMENT:string = ''; (*  record(s). *)
MSG_CRT_PART1_ERROR_DEL_RECORD: string = ''; (* Record cannot be deleted._It has  *)
MSG_CRT_PART2_ERROR_DEL_RECORD: string = ''; (*  payment(s) registered. *)
MSG_CRT_PART3_ERROR_DEL_RECORD: string = ''; (* Delete the payment(s) first. *)
MSG_CRT_PART_INSERT_REC_NUM:    string = ''; (* Error including record number  *)
MSG_CRT_PART1_NO_FILE_HEADER:   string = ''; (* Invalid file header!_ *)
MSG_CRT_PART2_NO_FILE_HEADER:   string = ''; (* Please verify if the file you are trying to import has header or a valid header. *)
MSG_CRT_PART_MRBUILD_INVALID:   string = ''; (* Invalid Version. *)


  //END CRITICAL ############################################################


type
  TFrmMsgConstant = class(TForm)
    siLang: TsiLangRT;
    procedure FormCreate(Sender: TObject);
    procedure siLangChangeLanguage(Sender: TObject);
    procedure UpdateStrings;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMsgConstant : TFrmMsgConstant;

implementation

uses uDMGlobal;

{$R *.DFM}

procedure TFrmMsgConstant.FormCreate(Sender: TObject);
begin
  UpdateStrings;

end;

procedure TFrmMsgConstant.siLangChangeLanguage(Sender: TObject);
begin

  UpdateStrings;
end;

procedure TFrmMsgConstant.UpdateStrings;
begin

  MSG_CRT_PART2_NO_FILE_HEADER          := siLang.GetText('strMSG_CRT_PART2_NO_FILE_HEADER');
  MSG_CRT_PART1_NO_FILE_HEADER          := siLang.GetText('strMSG_CRT_PART1_NO_FILE_HEADER');
  MSG_CRT_PART_INSERT_REC_NUM           := siLang.GetText('strMSG_CRT_PART_INSERT_REC_NUM');
  MSG_CRT_PART3_ERROR_DEL_RECORD        := siLang.GetText('strMSG_CRT_PART3_ERROR_DEL_RECORD');
  MSG_CRT_PART2_ERROR_DEL_RECORD        := siLang.GetText('strMSG_CRT_PART2_ERROR_DEL_RECORD');
  MSG_CRT_PART1_ERROR_DEL_RECORD        := siLang.GetText('strMSG_CRT_PART1_ERROR_DEL_RECORD');
  MSG_CRT_PART2_ERROR_DEL_PAYMENT       := siLang.GetText('strMSG_CRT_PART2_ERROR_DEL_PAYMENT');
  MSG_CRT_PART1_ERROR_DEL_PAYMENT       := siLang.GetText('strMSG_CRT_PART1_ERROR_DEL_PAYMENT');
  MSG_CRT_PART_CLASS_NOT_DEFINED        := siLang.GetText('strMSG_CRT_PART_CLASS_NOT_DEFINED');
  MSG_CRT_PART_FIELDS_NO_EMPTY          := siLang.GetText('strMSG_CRT_PART_FIELDS_NO_EMPTY');
  MSG_CRT_PART_ERROR_SAVE_REPFILE       := siLang.GetText('strMSG_CRT_PART_ERROR_SAVE_REPFILE');
  MSG_CRT_PART_ERROR_SAVE_REPORT        := siLang.GetText('strMSG_CRT_PART_ERROR_SAVE_REPORT');
  MSG_CRT_ERROR_PW_NOT_CONFIRM          := siLang.GetText('strMSG_CRT_ERROR_PW_NOT_CONFIRM');
  MSG_CRT_NO_DUPLICATE_PASSWORD         := siLang.GetText('strMSG_CRT_NO_DUPLICATE_PASSWORD');
  MSG_CRT_NO_EMPTY_STORE_NAME           := siLang.GetText('strMSG_CRT_NO_EMPTY_STORE_NAME');
  MSG_CRT_NO_EMPTY_TAX_DESC             := siLang.GetText('strMSG_CRT_NO_EMPTY_TAX_DESC');
  MSG_CRT_NO_EMPTY_TAX_VALUE            := siLang.GetText('strMSG_CRT_NO_EMPTY_TAX_VALUE');
  MSG_CRT_NO_EMPTY_VALUE                := siLang.GetText('strMSG_CRT_NO_EMPTY_VALUE');
  MSG_CRT_NO_EMPTY_CASH_REG             := siLang.GetText('strMSG_CRT_NO_EMPTY_CASH_REG');
  MSG_CRT_NO_EMPTY_OPEN_CASH            := siLang.GetText('strMSG_CRT_NO_EMPTY_OPEN_CASH');
  MSG_CRT_NO_CLOSE_CASH_REGISTER        := siLang.GetText('strMSG_CRT_NO_CLOSE_CASH_REGISTER');
  MSG_CRT_NO_MAKE_DEPOSIT               := siLang.GetText('strMSG_CRT_NO_MAKE_DEPOSIT');
  MSG_CRT_NO_MAKE_PETTY_CASH            := siLang.GetText('strMSG_CRT_NO_MAKE_PETTY_CASH');
  MSG_CRT_NO_DUPLICATE_CATEGORY         := siLang.GetText('strMSG_CRT_NO_DUPLICATE_CATEGORY');
  MSG_CRT_NO_EMPTY_COST                 := siLang.GetText('strMSG_CRT_NO_EMPTY_COST');
  MSG_CRT_NO_ACCESS_EMPTY_COST          := siLang.GetText('strMSG_CRT_NO_ACCESS_EMPTY_COST');
  MSG_CRT_NO_EMPTY_SELLING              := siLang.GetText('strMSG_CRT_NO_EMPTY_SELLING');
  MSG_CRT_NO_DUPLICATE_MODEL            := siLang.GetText('strMSG_CRT_NO_DUPLICATE_MODEL');
  MSG_CRT_INVALID_FILE                  := siLang.GetText('strMSG_CRT_INVALID_FILE');
  MSG_CRT_INVALID_DOCUMENT              := siLang.GetText('strMSG_CRT_INVALID_DOCUMENT');
  MSG_CRT_DOCUMENT_ALREDY_EXIST         := siLang.GetText('strMSG_CRT_DOCUMENT_ALREDY_EXIST');
  MSG_CRT_ERROR_BACKUP                  := siLang.GetText('strMSG_CRT_ERROR_BACKUP');
  MSG_CRT_ERROR_ZIPPING_BACKUP          := siLang.GetText('strMSG_CRT_ERROR_ZIPPING_BACKUP');
  MSG_CRT_ERROR_RESTORE                 := siLang.GetText('strMSG_CRT_ERROR_RESTORE');
  MSG_CRT_ERROR_INVALID_KEY             := siLang.GetText('strMSG_CRT_ERROR_INVALID_KEY');
  MSG_CRT_ERROR_PW_NOT_MATCH            := siLang.GetText('strMSG_CRT_ERROR_PW_NOT_MATCH');
  MSG_CRT_ERROR_PRINTING                := siLang.GetText('strMSG_CRT_ERROR_PRINTING');
  MSG_CRT_ERROR_DEL_PURCHASE            := siLang.GetText('strMSG_CRT_ERROR_DEL_PURCHASE');
  MSG_CRT_ERROR_STACK_SIZE              := siLang.GetText('strMSG_CRT_ERROR_STACK_SIZE');
  MSG_CRT_ERROR_TAX_STORE               := siLang.GetText('strMSG_CRT_ERROR_TAX_STORE');
  MSG_CRT_ERROR_TAX_CATEG               := siLang.GetText('strMSG_CRT_ERROR_TAX_CATEG');
  MSG_CRT_ERROR_PAYMENT_TYPE            := siLang.GetText('strMSG_CRT_ERROR_PAYMENT_TYPE');
  MSG_CRT_ERROR_DEPOSIT_ACC             := siLang.GetText('strMSG_CRT_ERROR_DEPOSIT_ACC');
  MSG_CRT_NO_AGENT                      := siLang.GetText('strMSG_CRT_NO_AGENT');
  MSG_CRT_NO_EMPTY_REASON               := siLang.GetText('strMSG_CRT_NO_EMPTY_REASON');
  MSG_CRT_NO_EMPTY_DEFECT               := siLang.GetText('strMSG_CRT_NO_EMPTY_DEFECT');
  MSG_CRT_ERROR_RECONCILING             := siLang.GetText('strMSG_CRT_ERROR_RECONCILING');
  MSG_CRT_ERROR_BALANCE_CHANGE          := siLang.GetText('strMSG_CRT_ERROR_BALANCE_CHANGE');
  MSG_CRT_ERROR_SAVING                  := siLang.GetText('strMSG_CRT_ERROR_SAVING');
  MSG_CRT_ERROR_DELETING                := siLang.GetText('strMSG_CRT_ERROR_DELETING');
  MSG_CRT_ERROR_ADDING                  := siLang.GetText('strMSG_CRT_ERROR_ADDING');
  MSG_CRT_ERROR_VALUE                   := siLang.GetText('strMSG_CRT_ERROR_VALUE');
  MSG_CRT_NO_SIZE                       := siLang.GetText('strMSG_CRT_NO_SIZE');
  MSG_CRT_ERROR_ADD_SIZE                := siLang.GetText('strMSG_CRT_ERROR_ADD_SIZE');
  MSG_CRT_NO_COLOR                      := siLang.GetText('strMSG_CRT_NO_COLOR');
  MSG_CRT_ERROR_ADD_COLOR               := siLang.GetText('strMSG_CRT_ERROR_ADD_COLOR');
  MSG_CRT_QTY_NO_ZERO                   := siLang.GetText('strMSG_CRT_QTY_NO_ZERO');
  MSG_CRT_NO_INVOICE_UNPAY              := siLang.GetText('strMSG_CRT_NO_INVOICE_UNPAY');
  MSG_CRT_NO_ITEM_PAY                   := siLang.GetText('strMSG_CRT_NO_ITEM_PAY');
  MSG_CRT_ERROR_PRINT                   := siLang.GetText('strMSG_CRT_ERROR_PRINT');
  MSG_CRT_NOT_DEL_PURCHASE              := siLang.GetText('strMSG_CRT_NOT_DEL_PURCHASE');
  MSG_CRT_NOT_DEL_SO_ITEM               := siLang.GetText('strMSG_CRT_NOT_DEL_SO_ITEM');
  MSG_CRT_CHOOSE_VENDOR_BEFORE          := siLang.GetText('strMSG_CRT_CHOOSE_VENDOR_BEFORE');
  MSG_CRT_NOT_EMPTY_MANUF               := siLang.GetText('strMSG_CRT_NOT_EMPTY_MANUF');
  MSG_CRT_NOT_EMPTY_CATEGORY            := siLang.GetText('strMSG_CRT_NOT_EMPTY_CATEGORY');
  MSG_CRT_NOT_EMPTY_USER                := siLang.GetText('strMSG_CRT_NOT_EMPTY_USER');
  MSG_CRT_NOT_REMOV_PO                  := siLang.GetText('strMSG_CRT_NOT_REMOV_PO');
  MSG_CRT_NO_CONECTION                  := siLang.GetText('strMSG_CRT_NO_CONECTION');
  MSG_CRT_NO_DELETE_REPAIR              := siLang.GetText('strMSG_CRT_NO_DELETE_REPAIR');
  MSG_CRT_NO_VALID_EMAIL                := siLang.GetText('strMSG_CRT_NO_VALID_EMAIL');
  MSG_CRT_NO_VALID_TIME                 := siLang.GetText('strMSG_CRT_NO_VALID_TIME');
  MSG_CRT_SERIALNUMBER_INV              := siLang.GetText('strMSG_CRT_SERIALNUMBER_INV');
  MSG_CRT_EXIST_SERIALNUMBER            := siLang.GetText('strMSG_CRT_EXIST_SERIALNUMBER');
  MSG_CRT_EXIST_NUMBER                  := siLang.GetText('strMSG_CRT_EXIST_NUMBER');
  MSG_CRT_EXIST_USERCODE                := siLang.GetText('strMSG_CRT_EXIST_USERCODE');
  MSG_CRT_EXIST_SERIALNUMBER_PUR        := siLang.GetText('strMSG_CRT_EXIST_SERIALNUMBER_PUR');
  MSG_CRT_EXIST_SERIALNUMBER_INV        := siLang.GetText('strMSG_CRT_EXIST_SERIALNUMBER_INV');
  MSG_CRT_EXIST_SERIALNUMBER_RECEI      := siLang.GetText('strMSG_CRT_EXIST_SERIALNUMBER_RECEI');
  MSG_CRT_NO_SERIALNUMBER_INV           := siLang.GetText('strMSG_CRT_NO_SERIALNUMBER_INV');
  MSG_CRT_QUOTE                         := siLang.GetText('strMSG_CRT_QUOTE');
  MSG_CRT_NO_POITEM                     := siLang.GetText('strMSG_CRT_NO_POITEM');
  MSG_CRT_HOLD_PAID                     := siLang.GetText('strMSG_CRT_HOLD_PAID');
  MSG_CRT_NO_FOUND_HOLD                 := siLang.GetText('strMSG_CRT_NO_FOUND_HOLD');
  MSG_CRT_NO_PARAM_SERVER               := siLang.GetText('strMSG_CRT_NO_PARAM_SERVER');
  MSG_CRT_NO_VPN_SERVER                 := siLang.GetText('strMSG_CRT_NO_VPN_SERVER');
  MSG_CRT_NO_CONNECT_SERVER             := siLang.GetText('strMSG_CRT_NO_CONNECT_SERVER');
  MSG_CRT_NO_VALID_WIZARD               := siLang.GetText('strMSG_CRT_NO_VALID_WIZARD');
  MSG_CRT_NO_VALID_TRIAL_INFO           := siLang.GetText('strMSG_CRT_NO_VALID_TRIAL_INFO');
  MSG_CRT_INVAL_DATE_RECEIVE            := siLang.GetText('strMSG_CRT_INVAL_DATE_RECEIVE');
  MSG_CRT_INVAL_COST_PRICE              := siLang.GetText('strMSG_CRT_INVAL_COST_PRICE');
  MSG_CRT_NO_BARCODE                    := siLang.GetText('strMSG_CRT_NO_BARCODE');
  MSG_CRT_NO_ZIPCODE                    := siLang.GetText('strMSG_CRT_NO_ZIPCODE');
  MSG_CRT_NO_PAY_DATE                   := siLang.GetText('strMSG_CRT_NO_PAY_DATE');
  MSG_CRT_NO_VALID_HOLD                 := siLang.GetText('strMSG_CRT_NO_VALID_HOLD');
  MSG_CRT_NO_VALID_YEAR                 := siLang.GetText('strMSG_CRT_NO_VALID_YEAR');
  MSG_CRT_NO_VALID_FIMDATE              := siLang.GetText('strMSG_CRT_NO_VALID_FIMDATE');
  MSG_CRT_NO_VALID_INIDATE              := siLang.GetText('strMSG_CRT_NO_VALID_INIDATE');
  MSG_CRT_NO_VALID_AMOUNT               := siLang.GetText('strMSG_CRT_NO_VALID_AMOUNT');
  MSG_CRT_AS_EXCEED_BALANCE             := siLang.GetText('strMSG_CRT_AS_EXCEED_BALANCE');
  MSG_CRT_CUSTOMER_NOTUSE_PAYMENT       := siLang.GetText('strMSG_CRT_CUSTOMER_NOTUSE_PAYMENT');
  MSG_CRT_INVALID_AMOUNT                := siLang.GetText('strMSG_CRT_INVALID_AMOUNT');
  MSG_CRT_NO_VALID_SELECTION            := siLang.GetText('strMSG_CRT_NO_VALID_SELECTION');
  MSG_CRT_NO_VALID_DUE_DATE             := siLang.GetText('strMSG_CRT_NO_VALID_DUE_DATE');
  MSG_CRT_NO_VALID_INV_DATE             := siLang.GetText('strMSG_CRT_NO_VALID_INV_DATE');
  MSG_CRT_NO_VALID_FREQUENCY            := siLang.GetText('strMSG_CRT_NO_VALID_FREQUENCY');
  MSG_CRT_NO_VALID_DAY                  := siLang.GetText('strMSG_CRT_NO_VALID_DAY');
  MSG_CRT_NO_VALID_DATE                 := siLang.GetText('strMSG_CRT_NO_VALID_DATE');
  MSG_CRT_NO_CONFIRMED_ESTIMATED        := siLang.GetText('strMSG_CRT_NO_CONFIRMED_ESTIMATED');
  MSG_CRT_COST_POSITIVE                 := siLang.GetText('strMSG_CRT_COST_POSITIVE');
  MSG_CRT_QTY_POSITIVE                  := siLang.GetText('strMSG_CRT_QTY_POSITIVE');
  MSG_CRT_NO_MEDIA_SELECTED             := siLang.GetText('strMSG_CRT_NO_MEDIA_SELECTED');
  MSG_CRT_NO_AGENCY_SELECTED            := siLang.GetText('strMSG_CRT_NO_AGENCY_SELECTED');
  MSG_CRT_NO_STORE_SELECTED             := siLang.GetText('strMSG_CRT_NO_STORE_SELECTED');
  MSG_CRT_NO_GUIDE                      := siLang.GetText('strMSG_CRT_NO_GUIDE');
  MSG_CRT_NO_MEDIA                      := siLang.GetText('strMSG_CRT_NO_MEDIA');
  MSG_CRT_NO_SERIAL_NUMBER              := siLang.GetText('strMSG_CRT_NO_SERIAL_NUMBER');
  MSG_CRT_NO_RECORD_TO_PRINT            := siLang.GetText('strMSG_CRT_NO_RECORD_TO_PRINT');
  MSG_CRT_NO_RECORD                     := siLang.GetText('strMSG_CRT_NO_RECORD');
  MSG_CRT_NO_YEAR                       := siLang.GetText('strMSG_CRT_NO_YEAR');
  MSG_CRT_NO_WEEKDAY                    := siLang.GetText('strMSG_CRT_NO_WEEKDAY');
  MSG_CRT_NO_PUPPYT                     := siLang.gettext('strMSG_CRT_NO_PUPPYT');
  MSG_CRT_NO_FINANCE                    := siLang.GetText('strMSG_CRT_NO_FINANCE');
  MSG_CRT_NO_HELP                       := siLang.GetText('strMSG_CRT_NO_HELP');
  MSG_CRT_ERROR_OCURRED                 := siLang.GetText('strMSG_CRT_ERROR_OCURRED');
  MSG_CRT_NO_DEL_FREQUENCY              := siLang.GetText('strMSG_CRT_NO_DEL_FREQUENCY');
  MSG_CRT_NO_REAL_QTY                   := siLang.GetText('strMSG_CRT_NO_REAL_QTY');
  MSG_CRT_NO_RECORD_REPORT              := siLang.GetText('strMSG_CRT_NO_RECORD_REPORT');
  MSG_CRT_NO_MODEL_INFORMTION           := siLang.GetText('strMSG_CRT_NO_MODEL_INFORMTION');
  MSG_CRT_NO_MODEL_SELECTED             := siLang.GetText('strMSG_CRT_NO_MODEL_SELECTED');
  MSG_CRT_NO_ACCESS                     := siLang.GetText('strMSG_CRT_NO_ACCESS');
  MSG_CRT_NO_DOC_DISBURSEMENT           := siLang.GetText('strMSG_CRT_NO_DOC_DISBURSEMENT');
  MSG_CRT_NO_CHANGE_DOC_AMOUNT          := siLang.GetText('strMSG_CRT_NO_CHANGE_DOC_AMOUNT');
  MSG_CRT_DUEDATE_SMALER_ISSUE          := siLang.GetText('strMSG_CRT_DUEDATE_SMALER_ISSUE');
  MSG_CRT_DELIVER_DATE_SMALER           := siLang.GetText('strMSG_CRT_DELIVER_DATE_SMALER');
  MSG_CRT_NO_DUE_DATE                   := siLang.GetText('strMSG_CRT_NO_DUE_DATE');
  MSG_CRT_NO_TO_GUIDE                   := siLang.GetText('strMSG_CRT_NO_TO_GUIDE');
  MSG_CRT_NO_TO_AGENCY                  := siLang.GetText('strMSG_CRT_NO_TO_AGENCY');
  MSG_CRT_NO_FROM_GUIDE                 := siLang.GetText('strMSG_CRT_NO_FROM_GUIDE');
  MSG_CRT_NO_FROM_AGENCY                := siLang.GetText('strMSG_CRT_NO_FROM_AGENCY');
  MSG_CRT_NO_PP_LICENC_EMPTY            := siLang.GetText('strMSG_CRT_NO_PP_LICENC_EMPTY');
  MSG_CRT_NO_SALESPERSON_EMPTY          := siLang.GetText('strMSG_CRT_NO_SALESPERSON_EMPTY');
  MSG_CRT_NO_INVOICE_NUM_EMPTY          := siLang.GetText('strMSG_CRT_NO_INVOICE_NUM_EMPTY');
  MSG_CRT_NO_DIFFERRENCE_EMPTY          := siLang.GetText('strMSG_CRT_NO_DIFFERRENCE_EMPTY');
  MSG_CRT_NO_QTY_PERPUR_EMPTY           := siLang.GetText('strMSG_CRT_NO_QTY_PERPUR_EMPTY');
  MSG_CRT_NO_CHANGE_PAST_PURCHASE       := siLang.GetText('strMSG_CRT_NO_CHANGE_PAST_PURCHASE');
  MSG_CRT_NO_QTY_REPAIR_EMPTY           := siLang.GetText('strMSG_CRT_NO_QTY_REPAIR_EMPTY');
  MSG_CRT_NO_QTY_ORDER_EMPTY            := siLang.GetText('strMSG_CRT_NO_QTY_ORDER_EMPTY');
  MSG_CRT_NOT_RETURN_ITEM               := siLang.GetText('strMSG_CRT_NOT_RETURN_ITEM');
  MSG_CRT_NO_SEND_BY                    := siLang.GetText('strMSG_CRT_NO_SEND_BY');
  MSG_CRT_NO_DEL_TRASNFER               := siLang.GetText('strMSG_CRT_NO_DEL_TRASNFER');
  MSG_CRT_NO_DEL_CATEGORY               := siLang.GetText('strMSG_CRT_NO_DEL_CATEGORY');
  MSG_CRT_NO_QTY_EMPTY                  := siLang.GetText('strMSG_CRT_NO_QTY_EMPTY');
  MSG_CRT_NO_PARENT                     := siLang.GetText('strMSG_CRT_NO_PARENT');
  MSG_CRT_DUETOTAL_DIFFERENT_PUR        := siLang.GetText('strMSG_CRT_DUETOTAL_DIFFERENT_PUR');
  MSG_INF_TOTAL_DIFFERENT_PUR           := siLang.GetText('strMSG_INF_TOTAL_DIFFERENT_PUR');
  MSG_INF_TOTAL_ZERO                    := siLang.GetText('strMSG_INF_TOTAL_ZERO');
  MSG_CRT_NO_FILTER                     := siLang.GetText('strMSG_CRT_NO_FILTER');
  MSG_CRT_NO_TOTAL_AMOUNT               := siLang.GetText('strMSG_CRT_NO_TOTAL_AMOUNT');
  MSG_CRT_NO_AMOUNT                     := siLang.GetText('strMSG_CRT_NO_AMOUNT');
  MSG_CRT_NO_PAYMENT_TYPE               := siLang.GetText('strMSG_CRT_NO_PAYMENT_TYPE');
  MSG_CRT_NO_PAYMENT_ZERO               := siLang.GetText('strMSG_CRT_NO_PAYMENT_ZERO');
  MSG_CRT_INV_RET_WITH_STOREACC         := siLang.GetText('strMSG_CRT_INV_RET_WITH_STOREACC');
  MSG_CRT_NO_AMOUNT_ZERO                := siLang.GetText('strMSG_CRT_NO_AMOUNT_ZERO');
  MSG_CRT_NO_TOTAL_DIFFERENT            := siLang.GetText('strMSG_CRT_NO_TOTAL_DIFFERENT');
  MSG_CRT_NO_DEL_RECORD_DETAIL          := siLang.GetText('strMSG_CRT_NO_DEL_RECORD_DETAIL');
  MSG_CRT_NO_RECORD_TYPE                := siLang.GetText('strMSG_CRT_NO_RECORD_TYPE');
  MSG_CRT_NO_DEL_RECORD                 := siLang.GetText('strMSG_CRT_NO_DEL_RECORD');
  MSG_CRT_NO_DEL_PAYMENT                := siLang.GetText('strMSG_CRT_NO_DEL_PAYMENT');
  MSG_CRT_NO_DEL_RECEIVED_PAYMENT       := siLang.GetText('strMSG_CRT_NO_DEL_RECEIVED_PAYMENT');
  MSG_CRT_NO_NUMBER                     := siLang.GetText('strMSG_CRT_NO_NUMBER');
  MSG_CRT_NO_RA                         := siLang.GetText('strMSG_CRT_NO_RA');
  MSG_CRT_NO_LAST_NAME                  := siLang.GetText('strMSG_CRT_NO_LAST_NAME');
  MSG_CRT_NO_FIRST_NAME                 := siLang.GetText('strMSG_CRT_NO_FIRST_NAME');
  MSG_CRT_NO_DEPARTMENT                 := siLang.GetText('strMSG_CRT_NO_DEPARTMENT');
  MSG_CRT_NO_VENDOR                     := siLang.GetText('strMSG_CRT_NO_VENDOR');
  MSG_CRT_NO_VENDOR_CODE                := siLang.GetText('strMSG_CRT_NO_VENDOR_CODE');
  MSG_CRT_NO_VENDOR_ACCOUNT             := siLang.GetText('strMSG_CRT_NO_VENDOR_ACCOUNT');
  MSG_CRT_NO_DEPARTMENT_EXIST           := siLang.GetText('strMSG_CRT_NO_DEPARTMENT_EXIST');
  MSG_CRT_NO_VENDOR_CODE_EXIST          := siLang.GetText('strMSG_CRT_NO_VENDOR_CODE_EXIST');
  MSG_CRT_NO_VENDOR_ACCOUNT_EXIST       := siLang.GetText('strMSG_CRT_NO_VENDOR_ACCOUNT_EXIST');
  MSG_CRT_NO_MODEL                      := siLang.GetText('strMSG_CRT_NO_MODEL');
  MSG_CRT_NO_PRODUCT                    := siLang.GetText('strMSG_CRT_NO_PRODUCT');
  MSG_CRT_NO_RECEIPT_TEXT               := siLang.GetText('strMSG_CRT_NO_RECEIPT_TEXT');
  MSG_CRT_NO_DOCUMENT_CUSTUMER          := siLang.GetText('strMSG_CRT_NO_DOCUMENT_CUSTUMER');
  MSG_CRT_NO_DES_STORE                  := siLang.GetText('strMSG_CRT_NO_DES_STORE');
  MSG_CRT_NO_ORG_STORE                  := siLang.GetText('strMSG_CRT_NO_ORG_STORE');
  MSG_CRT_NO_AUTHORIZANUMBER            := siLang.GetText('strMSG_CRT_NO_AUTHORIZANUMBER');
  MSG_CRT_NO_SERIALNUMBER               := siLang.GetText('strMSG_CRT_NO_SERIALNUMBER');
  MSG_CRT_SERIAL_GREATER_THEN_30        := siLang.GetText('strMSG_CRT_SERIAL_GREATER_THEN_30');
  MSG_CRT_NO_DATE                       := siLang.GetText('strMSG_CRT_NO_DATE');
  MSG_CRT_NO_CUSTUMER                   := siLang.GetText('strMSG_CRT_NO_CUSTUMER');
  MSG_CRT_NO_FAX_NUMBER                 := siLang.GetText('strMSG_CRT_NO_FAX_NUMBER');
  MSG_CRT_NO_FEATURE                    := siLang.GetText('strMSG_CRT_NO_FEATURE');
  MSG_CRT_INVENTORY_WILL_BE_NEG         := siLang.GetText('strMSG_CRT_INVENTORY_WILL_BE_NEG');
  MSG_CRT_INVENTORY_NEGATIVE            := siLang.GetText('strMSG_CRT_INVENTORY_NEGATIVE');
  MSG_CRT_INVENTORY_IS_ZERO             := siLang.GetText('strMSG_CRT_INVENTORY_IS_ZERO');
  MSG_CRT_MODEL_IS_IN_DELIVER           := siLang.GetText('strMSG_CRT_MODEL_IS_IN_DELIVER');
  MSG_CRT_CANNOT_MARK_DELIVER           := siLang.GetText('strMSG_CRT_CANNOT_MARK_DELIVER');
  MSG_CRT_MARK_DELIVERY_NEXTDAY         := siLang.GetText('strMSG_CRT_MARK_DELIVERY_NEXTDAY');
  MSG_CRT_CREATING_DATA_ERROR           := siLang.GetText('strMSG_CRT_CREATING_DATA_ERROR');
  MSG_CRT_CREATIBG_FILE_ERROR           := siLang.GetText('strMSG_CRT_CREATIBG_FILE_ERROR');
  MSG_CRT_FILE_ERROR                    := siLang.GetText('strMSG_CRT_FILE_ERROR');
  MSG_CRT_THERE_IS_NO_VENDOR            := siLang.GetText('strMSG_CRT_THERE_IS_NO_VENDOR');
  MSG_CRT_BUDGET_NO_DELETE              := siLang.GetText('strMSG_CRT_BUDGET_NO_DELETE');
  MSG_CRT_BUDGET_NO_CONVERT             := siLang.GetText('strMSG_CRT_BUDGET_NO_CONVERT');
  MSG_CRT_BUDGET_NO_CONFIRM             := siLang.GetText('strMSG_CRT_BUDGET_NO_CONFIRM');
  MSG_CRT_NO_ITEM                       := siLang.GetText('strMSG_CRT_NO_ITEM');
  MSG_CRT_QTY_BIGGER_0                  := siLang.GetText('strMSG_CRT_QTY_BIGGER_0');
  MSQ_QST_PART2_CHECK_USES              := siLang.GetText('strMSQ_QST_PART2_CHECK_USES');
  MSG_QST_PART_ADD_ANOTHER              := siLang.GetText('strMSG_QST_PART_ADD_ANOTHER');
  MSG_QST_PART_ZIPCODE                  := siLang.GetText('strMSG_QST_PART_ZIPCODE');
  MSG_QST_ADD_CASH_FINISH               := siLang.GetText('strMSG_QST_ADD_CASH_FINISH');
  MSG_QST_DEL_VENDOR_TAX                := siLang.GetText('strMSG_QST_DEL_VENDOR_TAX');
  MSQ_QST_PART1_CHECK_USES              := siLang.GetText('strMSQ_QST_PART1_CHECK_USES');
  MSQ_QST_PART2_DIFFER_RECONC_BAL       := siLang.GetText('strMSQ_QST_PART2_DIFFER_RECONC_BAL');
  MSQ_QST_PART1_DIFFER_RECONC_BAL       := siLang.GetText('strMSQ_QST_PART1_DIFFER_RECONC_BAL');
  MSQ_QST_PART2_RETORE_LINES            := siLang.GetText('strMSQ_QST_PART2_RETORE_LINES');
  MSQ_QST_PART1_RETORE_LINES            := siLang.GetText('strMSQ_QST_PART1_RETORE_LINES');
  MSG_QST_PART2_DELETE_LINES            := siLang.GetText('strMSG_QST_PART2_DELETE_LINES');
  MSG_QST_PART1_DELETE_LINES            := siLang.GetText('strMSG_QST_PART1_DELETE_LINES');
  MSG_QST_PART2_DELETE_PERMANENT        := siLang.GetText('strMSG_QST_PART2_DELETE_PERMANENT');
  MSG_QST_PART1_DELETE_PERMANENT        := siLang.GetText('strMSG_QST_PART1_DELETE_PERMANENT');
  MSG_QST_PART2_QUERY_RETURN            := siLang.GetText('strMSG_QST_PART2_QUERY_RETURN');
  MSG_QST_PART1_QUERY_RETURN            := siLang.GetText('strMSG_QST_PART1_QUERY_RETURN');
  MSG_QST_PART2_MOVE_INVOICE_ITEM       := siLang.GetText('strMSG_QST_PART2_MOVE_INVOICE_ITEM');
  MSG_QST_PART1_MOVE_INVOICE_ITEM       := siLang.GetText('strMSG_QST_PART1_MOVE_INVOICE_ITEM');
  MSG_QST_PART2_CONFIRM_ADJST           := siLang.GetText('strMSG_QST_PART2_CONFIRM_ADJST');
  MSG_QST_PART1_CONFIRM_ADJST           := siLang.GetText('strMSG_QST_PART1_CONFIRM_ADJST');
  MSG_QST_PART_REMOVE_REPORT            := siLang.GetText('strMSG_QST_PART_REMOVE_REPORT');
  MSG_QST_PART_CRIATE_REP_COPY          := siLang.GetText('strMSG_QST_PART_CRIATE_REP_COPY');
  MSG_QST_PART_CONFIRM                  := siLang.GetText('strMSG_QST_PART_CONFIRM');
  MSG_QST_EXIT                          := siLang.GetText('strMSG_QST_EXIT');
  MSG_QST_ADD_ANOTHER_CATEG             := siLang.GetText('strMSG_QST_ADD_ANOTHER_CATEG');
  MSG_QST_ADD_ANOTHER_MODEL             := siLang.GetText('strMSG_QST_ADD_ANOTHER_MODEL');
  MSG_QST_DEL_REGISTERED_PAYMENT1       := siLang.GetText('strMSG_QST_DEL_REGISTERED_PAYMENT1');
  MSG_QST_DEL_REGISTERED_PAYMENT2       := siLang.GetText('strMSG_QST_DEL_REGISTERED_PAYMENT2');
  MSG_QST_ENTER_LICENSE                 := siLang.GetText('strMSG_QST_ENTER_LICENSE');
  MSG_QST_PAY_PURCHASE_DAYS             := siLang.GetText('strMSG_QST_PAY_PURCHASE_DAYS');
  MSG_QST_UPDATE_SELLING_PRICE          := siLang.GetText('strMSG_QST_UPDATE_SELLING_PRICE');
  MSG_QST_UPDATE_PRODUCT_PRICES         := siLang.GetText('strMSG_QST_UPDATE_PRODUCT_PRICES');
  MSG_QST_CONFIRM_AMOUNT                := siLang.GetText('strMSG_QST_CONFIRM_AMOUNT');
  MSG_QST_DOC_SPLITED_PAY_ALL           := siLang.GetText('strMSG_QST_DOC_SPLITED_PAY_ALL');
  MSG_QST_OVERRIDE_VENDOR_TERMS         := siLang.GetText('strMSG_QST_OVERRIDE_VENDOR_TERMS');
  MSG_QST_DEL_OTHER_DOC_PAYMENT         := siLang.GetText('strMSG_QST_DEL_OTHER_DOC_PAYMENT');
  MSG_QST_CHANGE_PO_PRICE               := siLang.GetText('strMSG_QST_CHANGE_PO_PRICE');
  MSG_QST_SAVE_REPORT                   := siLang.GetText('strMSG_QST_SAVE_REPORT');
  MSQ_QST_CHANGE_RECONCILED_TRANS       := siLang.GetText('strMSQ_QST_CHANGE_RECONCILED_TRANS');
  MSG_QST_CONTINUE                      := siLang.GetText('strMSG_QST_CONTINUE');
  MSG_QST_CLOSE_LAYAWAY                 := siLang.GetText('strMSG_QST_CLOSE_LAYAWAY');
  MSG_QST_CANCEL_HOLD                   := siLang.GetText('strMSG_QST_CANCEL_HOLD');
  MSG_QST_INV_NEGATIVE                  := siLang.GetText('strMSG_QST_INV_NEGATIVE');
  MSG_QST_INV_WILL_BE_NEGATIVE          := siLang.GetText('strMSG_QST_INV_WILL_BE_NEGATIVE');
  MSG_QST_CONF_TRANSFER                 := siLang.GetText('strMSG_QST_CONF_TRANSFER');
  MSG_QST_OPEN_CASH_LESS_MONEY          := siLang.GetText('strMSG_QST_OPEN_CASH_LESS_MONEY');
  MSG_QST_PO_OPEN_SAVE                  := siLang.GetText('strMSG_QST_PO_OPEN_SAVE');
  MSG_QST_INVOICE_ONLY_CASH             := siLang.GetText('strMSG_QST_INVOICE_ONLY_CASH');
  MSG_QST_PAYTYPE_NOT_ALLOW_DATE        := siLang.GetText('strMSG_QST_PAYTYPE_NOT_ALLOW_DATE');
  MSG_QST_CASH_IS_IN_USER               := siLang.GetText('strMSG_QST_CASH_IS_IN_USER');
  MSG_QST_INVOICE_DONOT_HAVE_ITEM       := siLang.GetText('strMSG_QST_INVOICE_DONOT_HAVE_ITEM');
  MSG_QST_NOT_MODEL_STORE               := siLang.GetText('strMSG_QST_NOT_MODEL_STORE');
  MSG_QST_RESTORE_INVENTORY             := siLang.GetText('strMSG_QST_RESTORE_INVENTORY');
  MSG_QST_CLEAN_UP_INVENTORY            := siLang.GetText('strMSG_QST_CLEAN_UP_INVENTORY');
  MSG_QST_SURE                          := siLang.GetText('strMSG_QST_SURE');
  MSG_QST_RESTORE_TAX                   := siLang.GetText('strMSG_QST_RESTORE_TAX');
  MSG_QST_PRINT_STATEMENT_DET           := siLang.GetText('strMSG_QST_PRINT_STATEMENT_DET');
  MSG_QST_CONFIRM_PRINT_RECEIPET        := siLang.GetText('strMSG_QST_CONFIRM_PRINT_RECEIPET');
  MSG_QST_PRINT_STATEMENT               := siLang.GetText('strMSG_QST_PRINT_STATEMENT');
  MSG_QST_CONFIRM_CLOSE_REGISTER        := siLang.GetText('strMSG_QST_CONFIRM_CLOSE_REGISTER');
  MSG_QST_DELETE_COST                   := siLang.GetText('strMSG_QST_DELETE_COST');
  MSG_QST_DELETE_SERIALNUMBER           := siLang.GetText('strMSG_QST_DELETE_SERIALNUMBER');
  MSG_QST_DELETE_MODEL                  := siLang.GetText('strMSG_QST_DELETE_MODEL');
  MSG_QST_CONFIRM_ADJUST_INV            := siLang.GetText('strMSG_QST_CONFIRM_ADJUST_INV');
  MSG_QST_CONFIRM_TAX_ISENTION          := siLang.GetText('strMSG_QST_CONFIRM_TAX_ISENTION');
  MSG_QST_CONFIRM_RECEVE_HOLD           := siLang.GetText('strMSG_QST_CONFIRM_RECEVE_HOLD');
  MSG_QST_CONFIRM_RECEVE_LAYAWAY        := siLang.GetText('strMSG_QST_CONFIRM_RECEVE_LAYAWAY');
  MSG_QST_CONFIRM_RECEVE_PURCHASE       := siLang.GetText('strMSG_QST_CONFIRM_RECEVE_PURCHASE');
  MSG_QST_CONFIRM_PURCHASE              := siLang.GetText('strMSG_QST_CONFIRM_PURCHASE');
  MSG_QST_CONFIRM_DELETE_PURCHASE       := siLang.GetText('strMSG_QST_CONFIRM_DELETE_PURCHASE');
  MSG_QST_CONFIRM_HOLD                  := siLang.GetText('strMSG_QST_CONFIRM_HOLD');
  MSG_QST_CONFIRM_PAYMENT               := siLang.GetText('strMSG_QST_CONFIRM_PAYMENT');
  MSG_QST_CONFIRM_CHANGE_LOCAL          := siLang.GetText('strMSG_QST_CONFIRM_CHANGE_LOCAL');
  MSG_QST_CONFIRM_CHANGE_LANG           := siLang.GetText('strMSG_QST_CONFIRM_CHANGE_LANG');
  MSG_QST_CONFIRM_DEPOSIT_CASHREG       := siLang.GetText('strMSG_QST_CONFIRM_DEPOSIT_CASHREG');
  MSG_QST_CONFIRM_UNLOCK_PRESALE        := siLang.GetText('strMSG_QST_CONFIRM_UNLOCK_PRESALE');
  MSG_QST_CONFIRM_REPRINT               := siLang.GetText('strMSG_QST_CONFIRM_REPRINT');
  MSG_QST_CONFIRM_PETTY_CASH            := siLang.GetText('strMSG_QST_CONFIRM_PETTY_CASH');
  MSG_QST_CONFIRM_CREATE_PO             := siLang.GetText('strMSG_QST_CONFIRM_CREATE_PO');
  MSG_QST_CONFIRM_RESTORE               := siLang.GetText('strMSG_QST_CONFIRM_RESTORE');
  MSG_QST_CONFIRM                       := siLang.GetText('strMSG_QST_CONFIRM');
  MSG_QST_DELETE_PERMANENT              := siLang.GetText('strMSG_QST_DELETE_PERMANENT');
  MSQ_QST_RETORE                        := siLang.GetText('strMSQ_QST_RETORE');
  MSQ_QST_RETORE_CAT_SUBCAT_GROUP       := siLang.GetText('strMSQ_QST_RETORE_CAT_SUBCAT_GROUP');
  MSQ_QST_DELETE_CAT_REL                := siLang.GetText('strMSQ_QST_DELETE_CAT_REL');
  MSQ_QST_DELETE_GROUP_REL              := siLang.GetText('strMSQ_QST_DELETE_GROUP_REL');
  MSQ_QST_DELETE_SUBGROUP_REL           := siLang.GetText('strMSQ_QST_DELETE_SUBGROUP_REL');
  MSG_QST_DELETE                        := siLang.GetText('strMSG_QST_DELETE');
  MSG_QST_DELETE_ITEM                   := siLang.GetText('strMSG_QST_DELETE_ITEM');
  MSG_QST_CANCEL_INVOICE                := siLang.GetText('strMSG_QST_CANCEL_INVOICE');
  MSG_QTS_REBUILD_IDT                   := siLang.GetText('strMSG_QTS_REBUILD_IDT');
  MSG_QST_ERASE_ALL_DISCOUNT_MOD        := siLang.GetText('strMSG_QST_ERASE_ALL_DISCOUNT_MOD');
  MSG_QST_ERASE_ALL_DISCOUNT_ADD        := siLang.GetText('strMSG_QST_ERASE_ALL_DISCOUNT_ADD');
  MSG_QST_ERASE_ALL_DISCOUNT            := siLang.GetText('strMSG_QST_ERASE_ALL_DISCOUNT');
  MSG_QST_DISCOUNT_WAS_REACHED          := siLang.GetText('strMSG_QST_DISCOUNT_WAS_REACHED');
  MSG_QST_DISCOUNT_REACHED              := siLang.GetText('strMSG_QST_DISCOUNT_REACHED');
  MSG_QST_NEW_COST_IN_INVENTORY         := siLang.GetText('strMSG_QST_NEW_COST_IN_INVENTORY');
  MSG_QST_DELETE_REQUEST                := siLang.GetText('strMSG_QST_DELETE_REQUEST');
  MSG_QST_DELETE_VENDOR_FROM_QUOT       := siLang.GetText('strMSG_QST_DELETE_VENDOR_FROM_QUOT');
  MSG_QST_DELETE_MODEL_FROM_QUOT        := siLang.GetText('strMSG_QST_DELETE_MODEL_FROM_QUOT');
  MSG_QST_ONE_OPEN_MANAGER_CONTUE       := siLang.GetText('strMSG_QST_ONE_OPEN_MANAGER_CONTUE');
  MSG_QST_COSTARV_DIFFER_CSTORDED       := siLang.GetText('strMSG_QST_COSTARV_DIFFER_CSTORDED');
  MSG_QST_COSTARV_BIGGER_CSTORDED       := siLang.GetText('strMSG_QST_COSTARV_BIGGER_CSTORDED');
  MSG_QST_QTYARV_BIGGER_QTYORDED        := siLang.GetText('strMSG_QST_QTYARV_BIGGER_QTYORDED');
  MSG_QST_AMOUN_NOT_REACH_MIN           := siLang.GetText('strMSG_QST_AMOUN_NOT_REACH_MIN');
  MSG_QST_AMOUN_NOT_REACH_MIN_PO        := siLang.GetText('strMSG_QST_AMOUN_NOT_REACH_MIN_PO');
  MSG_QST_PRICE_BELLOW                  := siLang.GetText('strMSG_QST_PRICE_BELLOW');
  MSG_QST_SAVE_UNSAVE_CHANGES           := siLang.GetText('strMSG_QST_SAVE_UNSAVE_CHANGES');
  MSG_QST_ROUDING_PRICE                 := siLang.GetText('strMSG_QST_ROUDING_PRICE');
  MSG_QST_PO_ITEM_IN_RECEIVING          := siLang.GetText('strMSG_QST_PO_ITEM_IN_RECEIVING');
  MSG_QST_CALC_MARGIN                   := siLang.GetText('strMSG_QST_CALC_MARGIN');
  MSG_QST_UNSAVE_CHANGES                := siLang.GetText('strMSG_QST_UNSAVE_CHANGES');
  MSG_INF_PART2_SELECT_GL               := siLang.GetText('strMSG_INF_PART2_SELECT_GL');
  MSG_INF_PART1_SELECT_GL               := siLang.GetText('strMSG_INF_PART1_SELECT_GL');
  MSG_INF_PART2_INVALID_FILE_NAME       := siLang.GetText('strMSG_INF_PART2_INVALID_FILE_NAME');
  MSG_INF_PART1_INVALID_FILE_NAME       := siLang.GetText('strMSG_INF_PART1_INVALID_FILE_NAME');
  MSG_INF_PART_FILE_CREATED_AT          := siLang.GetText('strMSG_INF_PART_FILE_CREATED_AT');
  MSG_INF_PART_ROWS_IMPORTED            := siLang.GetText('strMSG_INF_PART_ROWS_IMPORTED');
  MSG_INF_PART2_RECONCILED_OK           := siLang.GetText('strMSG_INF_PART2_RECONCILED_OK');
  MSG_INF_PART1_RECONCILED_OK           := siLang.GetText('strMSG_INF_PART1_RECONCILED_OK');
  MSG_INF_PART_FILTER_APPENDED          := siLang.GetText('strMSG_INF_PART_FILTER_APPENDED');
  MSG_INF_PART_NO_DUPLICATED            := siLang.GetText('strMSG_INF_PART_NO_DUPLICATED');
  MSG_INF_PART_NEW_HOLD_NUMBER          := siLang.GetText('strMSG_INF_PART_NEW_HOLD_NUMBER');
  MSG_INF_PART_ITEM_SOLD_FOR            := siLang.GetText('strMSG_INF_PART_ITEM_SOLD_FOR');
  MSG_INF_PART2_COMMISS_PAIED           := siLang.GetText('strMSG_INF_PART2_COMMISS_PAIED');
  MSG_INF_PART1_COMMISS_PAIED           := siLang.GetText('strMSG_INF_PART1_COMMISS_PAIED');
  MSG_INF_PART2_PO_CREATE_MR            := siLang.GetText('strMSG_INF_PART2_PO_CREATE_MR');
  MSG_INF_PART1_PO_CREATE_MR            := siLang.GetText('strMSG_INF_PART1_PO_CREATE_MR');
  MSG_INF_PART_PETTYCASH_MAX            := siLang.GetText('strMSG_INF_PART_PETTYCASH_MAX');
  MSG_INF_PART2_USE_MR                  := siLang.GetText('strMSG_INF_PART2_USE_MR');
  MSG_INF_PART1_USE_MR                  := siLang.GetText('strMSG_INF_PART1_USE_MR');
  MSG_INF_NOT_DEL_TRANS_SPLITED         := siLang.GetText('strMSG_INF_NOT_DEL_TRANS_SPLITED');
  MSG_INF_NOT_SPLIT_ALL_ITEMS           := siLang.GetText('strMSG_INF_NOT_SPLIT_ALL_ITEMS');
  MSG_INF_SELECT_DB                     := siLang.GetText('strMSG_INF_SELECT_DB');
  MSG_INF_SELECT_FILE                   := siLang.GetText('strMSG_INF_SELECT_FILE');
  MSG_INF_BACKUP_ZIPPED                 := siLang.GetText('strMSG_INF_BACKUP_ZIPPED');
  MSG_INF_BACKUP_COMPLETED              := siLang.GetText('strMSG_INF_BACKUP_COMPLETED');
  MSG_INF_RESTORE_COMPLETED             := siLang.GetText('strMSG_INF_RESTORE_COMPLETED');
  MSG_INF_NOT_VALID_CATEG_TYPE          := siLang.GetText('strMSG_INF_NOT_VALID_CATEG_TYPE');
  MSG_INF_LOGIN_EXPIRED                 := siLang.GetText('strMSG_INF_LOGIN_EXPIRED');
  MSG_INF_CHANGE_CURRENCY_RECALC        := siLang.GetText('strMSG_INF_CHANGE_CURRENCY_RECALC');
  MSG_INF_NO_QUICKTIME_AVAILABLE        := siLang.GetText('strMSG_INF_NO_QUICKTIME_AVAILABLE');
  MSG_INF_NO_DATA_TO_EXPORT             := siLang.GetText('strMSG_INF_NO_DATA_TO_EXPORT');
  MSG_INF_NO_INFO_TO_IMPORT             := siLang.GetText('strMSG_INF_NO_INFO_TO_IMPORT');
  MSG_INF_SELECT_TRANS_TYPE             := siLang.GetText('strMSG_INF_SELECT_TRANS_TYPE');
  MSG_INF_SELECT_FILE_TYPE              := siLang.GetText('strMSG_INF_SELECT_FILE_TYPE');
  MSG_INF_SELECT_SOFTWARE               := siLang.GetText('strMSG_INF_SELECT_SOFTWARE');
  MSG_INF_SELECT_OPP_TYPE               := siLang.GetText('strMSG_INF_SELECT_OPP_TYPE');
  MSG_INF_FREQUENCY_DELETED             := siLang.GetText('strMSG_INF_FREQUENCY_DELETED');
  MSG_INF_NOT_PAY_DIFFER_ENTITY         := siLang.GetText('strMSG_INF_NOT_PAY_DIFFER_ENTITY');
  MSG_INF_SELECT_VENDOR_FOR_TERM        := siLang.GetText('strMSG_INF_SELECT_VENDOR_FOR_TERM');
  MSG_INF_NOT_EDIT_SYSREP               := siLang.GetText('strMSG_INF_NOT_EDIT_SYSREP');
  MSG_INF_NOT_DEL_SYSREP                := siLang.GetText('strMSG_INF_NOT_DEL_SYSREP');
  MSG_INF_NOT_TRANS_TO_RECONCILE        := siLang.GetText('strMSG_INF_NOT_TRANS_TO_RECONCILE');
  MSG_INF_DICTIONARI_NOT_FOUND          := siLang.GetText('strMSG_INF_DICTIONARI_NOT_FOUND');
  MSG_INF_ACCOUNT_EXPIRED               := siLang.GetText('strMSG_INF_ACCOUNT_EXPIRED');
  MSG_INF_MODEL_RESTORED                := siLang.GetText('strMSG_INF_MODEL_RESTORED');
  MSG_INF_REPRINT_INVOICE               := siLang.GetText('strMSG_INF_REPRINT_INVOICE');
  MSG_INF_DIFER_STORE                   := siLang.GetText('strMSG_INF_DIFER_STORE');
  MSG_INF_INV_CLEANED                   := siLang.GetText('strMSG_INF_INV_CLEANED');
  MSG_INF_CHOOSE_BANK                   := siLang.GetText('strMSG_INF_CHOOSE_BANK');
  MSG_INF_CHOOSE_PAYTYPE                := siLang.GetText('strMSG_INF_CHOOSE_PAYTYPE');
  MSG_INF_CHOOSE_PAYPLACE               := siLang.GetText('strMSG_INF_CHOOSE_PAYPLACE');
  MSG_INF_PAYTYPE_SELECTED              := siLang.GetText('strMSG_INF_PAYTYPE_SELECTED');
  MSG_INF_CHOOSE_COSTTYPE               := siLang.GetText('strMSG_INF_CHOOSE_COSTTYPE');
  MSG_INF_PO_CREATED_VENDOR             := siLang.GetText('strMSG_INF_PO_CREATED_VENDOR');
  MSG_INF_LAYAWAY_HAS_HIST              := siLang.GetText('strMSG_INF_LAYAWAY_HAS_HIST');
  MSG_INF_NO_DEL_TOUR                   := siLang.GetText('strMSG_INF_NO_DEL_TOUR');
  MSG_INF_ITEM_HAS_POS_QTY              := siLang.GetText('strMSG_INF_ITEM_HAS_POS_QTY');
  MSG_INF_EXPIRED_TIME                  := siLang.GetText('strMSG_INF_EXPIRED_TIME');
  MSG_INF_TIME_ENTERED                  := siLang.GetText('strMSG_INF_TIME_ENTERED');
  MSG_INF_CLOCK_OUT                     := siLang.GetText('strMSG_INF_CLOCK_OUT');
  MSG_INF_CLOCK_IN                      := siLang.GetText('strMSG_INF_CLOCK_IN');
  MSG_INF_HOLD_CANNOT_DELETE            := siLang.GetText('strMSG_INF_HOLD_CANNOT_DELETE');
  MSG_INF_HOLD_IS_USING                 := siLang.GetText('strMSG_INF_HOLD_IS_USING');
  MSG_INF_HOLD_IS_LOCK                  := siLang.GetText('strMSG_INF_HOLD_IS_LOCK');
  MSG_INF_GIFT_REGIST                   := siLang.GetText('strMSG_INF_GIFT_REGIST');
  MSG_INF_TOTAL_SMALLER_PRE_SALE        := siLang.GetText('strMSG_INF_TOTAL_SMALLER_PRE_SALE');
  MSG_INF_CASH_IN_DEPOSIT               := siLang.GetText('strMSG_INF_CASH_IN_DEPOSIT');
  MSG_INF_MANAGER_CAN_REMOV_HOLD        := siLang.GetText('strMSG_INF_MANAGER_CAN_REMOV_HOLD');
  MSG_INF_PO_CREATED                    := siLang.GetText('strMSG_INF_PO_CREATED');
  MSG_INF_PO_OPEN                       := siLang.GetText('strMSG_INF_PO_OPEN');
  MSG_INF_MODEL_ORDERED                 := siLang.GetText('strMSG_INF_MODEL_ORDERED');
  MSG_INF_INVOICE_HAS_SETUP             := siLang.GetText('strMSG_INF_INVOICE_HAS_SETUP');
  MSG_INF_MODEL_EXIST                   := siLang.GetText('strMSG_INF_MODEL_EXIST');
  MSG_INF_VENDOR_EXIST                  := siLang.GetText('strMSG_INF_VENDOR_EXIST');
  MSG_INF_INVOICE_REC_ONLY_CASH         := siLang.GetText('strMSG_INF_INVOICE_REC_ONLY_CASH');
  MSG_INF_PAYTYPE_NOT_THIS_DATE         := siLang.GetText('strMSG_INF_PAYTYPE_NOT_THIS_DATE');
  MSG_INF_PAYMENT_NOT_RECEIVE           := siLang.GetText('strMSG_INF_PAYMENT_NOT_RECEIVE');
  MSG_INF_INVOICE_NOT_REACH_DATE        := siLang.GetText('strMSG_INF_INVOICE_NOT_REACH_DATE');
  MSG_INF_INVOICE_NOT_HAVE_ITEM         := siLang.GetText('strMSG_INF_INVOICE_NOT_HAVE_ITEM');
  MSG_INF_INVOICE_NOT_REACH             := siLang.GetText('strMSG_INF_INVOICE_NOT_REACH');
  MSG_INF_HOLD_PAYING_NO_DELETE         := siLang.GetText('strMSG_INF_HOLD_PAYING_NO_DELETE');
  MSG_INF_HOLD_PAYING                   := siLang.GetText('strMSG_INF_HOLD_PAYING');
  MSG_INF_NOT_CASHIER_PASWORD           := siLang.GetText('strMSG_INF_NOT_CASHIER_PASWORD');
  MSG_INF_NOT_MANEGER_PASWORD           := siLang.GetText('strMSG_INF_NOT_MANEGER_PASWORD');
  MSG_INF_NOT_EXCEL_ITEMS               := siLang.GetText('strMSG_INF_NOT_EXCEL_ITEMS');
  MSG_INF_NOT_DESCRIPTION_EMPTY         := siLang.GetText('strMSG_INF_NOT_DESCRIPTION_EMPTY');
  MSG_INF_NOT_DISCOUNT_EMPTY            := siLang.GetText('strMSG_INF_NOT_DISCOUNT_EMPTY');
  MSG_INF_NOT_DAYSOFWEEK_EMPTY          := siLang.GetText('strMSG_INF_NOT_DAYSOFWEEK_EMPTY');
  MSG_INF_TRY_ADD_ROUTES                := siLang.GetText('strMSG_INF_TRY_ADD_ROUTES');
  MSG_INF_CHANGES_SYS                   := siLang.GetText('strMSG_INF_CHANGES_SYS');
  MSG_INF_MODEL_DELETED                 := siLang.GetText('strMSG_INF_MODEL_DELETED');
  MSG_INF_NOT_RECEIVE_HOLD              := siLang.GetText('strMSG_INF_NOT_RECEIVE_HOLD');
  MSG_INF_NOT_QTY_SMALLER_1             := siLang.GetText('strMSG_INF_NOT_QTY_SMALLER_1');
  MSG_INF_NOT_QTY_GREATER_1             := siLang.GetText('strMSG_INF_NOT_QTY_GREATER_1');
  MSG_INF_NOT_EQUAL_QTY                 := siLang.GetText('strMSG_INF_NOT_EQUAL_QTY');
  MSG_INF_CREDIT_GREATER_INVOICE        := siLang.GetText('strMSG_INF_CREDIT_GREATER_INVOICE');
  MSG_INF_CREDIT_SMALLER_TOTAL          := siLang.GetText('strMSG_INF_CREDIT_SMALLER_TOTAL');
  MSG_INF_REBUILD_IDT                   := siLang.GetText('strMSG_INF_REBUILD_IDT');
  MSG_INF_NOT_DUPLICATED_QTY            := siLang.GetText('strMSG_INF_NOT_DUPLICATED_QTY');
  MSG_INF_NOT_SELL_BELLOW_COST          := siLang.GetText('strMSG_INF_NOT_SELL_BELLOW_COST');
  MSG_INF_NOT_REFUND_ITEM               := siLang.GetText('strMSG_INF_NOT_REFUND_ITEM');
  MSG_INF_PRICE_INVALID                 := siLang.GetText('strMSG_INF_PRICE_INVALID');
  MSG_INF_NOT_GIVE_GIFTS                := siLang.GetText('strMSG_INF_NOT_GIVE_GIFTS');
  MSG_INF_NOT_GIVE_DICOUNT              := siLang.GetText('strMSG_INF_NOT_GIVE_DICOUNT');
  MSG_INF_NOT_EMPTY_VALUES              := siLang.GetText('strMSG_INF_NOT_EMPTY_VALUES');
  MSG_INF_NOT_EMPTY_ADDRESS             := siLang.GetText('strMSG_INF_NOT_EMPTY_ADDRESS');
  MSG_INF_NOT_MANAGE_CR                 := siLang.GetText('strMSG_INF_NOT_MANAGE_CR');
  MSG_INF_NOT_DEL_ITEMS_LAYAWAY         := siLang.GetText('strMSG_INF_NOT_DEL_ITEMS_LAYAWAY');
  MSG_INF_NOT_MODIFY_LAYAWAY            := siLang.GetText('strMSG_INF_NOT_MODIFY_LAYAWAY');
  MSG_INF_NOT_DEL_LAST_ITEM_LAYAWAY     := siLang.GetText('strMSG_INF_NOT_DEL_LAST_ITEM_LAYAWAY');
  MSG_INF_NOT_DEL_ITEMS_SALE            := siLang.GetText('strMSG_INF_NOT_DEL_ITEMS_SALE');
  MSG_INF_NOT_ADD_ITEMS_SALE            := siLang.GetText('strMSG_INF_NOT_ADD_ITEMS_SALE');
  MSG_INF_NOT_EDIT_ITEMS_SALE           := siLang.GetText('strMSG_INF_NOT_EDIT_ITEMS_SALE');
  MSG_INF_NOT_DELETE_ITEMS              := siLang.GetText('strMSG_INF_NOT_DELETE_ITEMS');
  MSG_INF_NOT_CHANGE_ITEMS              := siLang.GetText('strMSG_INF_NOT_CHANGE_ITEMS');
  MSG_INF_SELECT_USER                   := siLang.GetText('strMSG_INF_SELECT_USER');
  MSG_INF_COUNT_ITEMS                   := siLang.GetText('strMSG_INF_COUNT_ITEMS');
  MSG_INF_MANAGER_TONEGATIVE_DISC       := siLang.GetText('strMSG_INF_MANAGER_TONEGATIVE_DISC');
  MSG_INF_ONE_OPEN_CASREG_MANAGER       := siLang.GetText('strMSG_INF_ONE_OPEN_CASREG_MANAGER');
  MSG_INF_ONE_OPEN_PO_VENDOR            := siLang.GetText('strMSG_INF_ONE_OPEN_PO_VENDOR');
  MSG_INF_NO_ASSOC_COMMITION            := siLang.GetText('strMSG_INF_NO_ASSOC_COMMITION');
  MSG_NO_ASSOCIATED_COMMITION           := siLang.GetText('strMSG_NO_ASSOCIATED_COMMITION');
  MSG_INF_CANNOT_ACCESS_MODULE          := siLang.GetText('strMSG_INF_CANNOT_ACCESS_MODULE');
  MSG_INF_SUPPLU_ADJ_DATE               := siLang.GetText('strMSG_INF_SUPPLU_ADJ_DATE');
  MSG_INF_ERROR                         := siLang.GetText('strMSG_INF_ERROR');
  MSG_INF_DATA_SUCESSFULY               := siLang.GetText('strMSG_INF_DATA_SUCESSFULY');
  MSG_INF_RESTORED_SUCESSFULY           := siLang.GetText('strMSG_INF_RESTORED_SUCESSFULY');
  MSG_INF_CHOOSE_NAME                   := siLang.GetText('strMSG_INF_CHOOSE_NAME');
  MSG_INF_INVALID_USER_PASSWORD         := siLang.GetText('strMSG_INF_INVALID_USER_PASSWORD');
  MSG_INF_INVALID_PASSWORD              := siLang.GetText('strMSG_INF_INVALID_PASSWORD');
  MSG_INF_PASSWORD_CANNOT_BE_NULL       := siLang.GetText('strMSG_INF_PASSWORD_CANNOT_BE_NULL');
  MSG_INF_CSR_IS_CLOSED                 := siLang.GetText('strMSG_INF_CSR_IS_CLOSED');
  MSG_INF_ADJUSTMENT                    := siLang.GetText('strMSG_INF_ADJUSTMENT');
  MSG_INF_WRONG_QTY                     := siLang.GetText('strMSG_INF_WRONG_QTY');
  MSG_INF_INVOICE_NOT_FOND              := siLang.GetText('strMSG_INF_INVOICE_NOT_FOND');
  MSG_INF_INVOICE_NOT_DELEVERED         := siLang.GetText('strMSG_INF_INVOICE_NOT_DELEVERED');
  MSG_INF_BARCODE_NOT_DEL               := siLang.GetText('strMSG_INF_BARCODE_NOT_DEL');
  MSG_INF_NO_DATA_FOUND                 := siLang.GetText('strMSG_INF_NO_DATA_FOUND');
  MSG_INF_NO_FILETER_APPENDED           := siLang.GetText('strMSG_INF_NO_FILETER_APPENDED');
  MSG_INF_FILETER_SAVED                 := siLang.GetText('strMSG_INF_FILETER_SAVED');
  MSG_INF_FILETER_CLEARED               := siLang.GetText('strMSG_INF_FILETER_CLEARED');
  MSG_INF_NOT_SERVER                    := siLang.GetText('strMSG_INF_NOT_SERVER');
  MSG_INF_PO_ITEM_IN_RECEIVING          := siLang.GetText('strMSG_INF_PO_ITEM_IN_RECEIVING');
  MSG_INF_SELECT_FIELD                  := siLang.GetText('strMSG_INF_SELECT_FIELD');
  MSG_INF_CUSTOMER_NOT_MATCH            := siLang.GetText('strMSG_INF_CUSTOMER_NOT_MATCH');
  MSG_INF_VERIFY_DELIVER_STATUS         := siLang.GetText('strMSG_INF_VERIFY_DELIVER_STATUS');
  MSG_INF_DELIVER_TYPE_EMPTY            := siLang.GetText('strMSG_INF_DELIVER_TYPE_EMPTY');
//  MSG_INF_RANGE_AREACODE                := siLang.GetText('strMSG_INF_RANGE_AREACODE');
//  MSG_INF_RANGE_PHONE_NUMBER            := siLang.GetText('strMSG_INF_RANGE_PHONE_NUMBER');

  MSG_EXC_PART2_NO_MORE_SERIAL          := siLang.GetText('strMSG_EXC_PART2_NO_MORE_SERIAL');
  MSG_EXC_PART1_NO_MORE_SERIAL          := siLang.GetText('strMSG_EXC_PART1_NO_MORE_SERIAL');
  MSG_EXC_PART2_NO_HOLD_NUMBER          := siLang.GetText('strMSG_EXC_PART2_NO_HOLD_NUMBER');
  MSG_EXC_PART1_NO_HOLD_NUMBER          := siLang.GetText('strMSG_EXC_PART1_NO_HOLD_NUMBER');
  MSG_EXC_INVALID_HOLD_NUMBER           := siLang.GetText('strMSG_EXC_INVALID_HOLD_NUMBER');
  MSG_EXC_NO_MORE_ROWS_RETRIVE          := siLang.GetText('strMSG_EXC_NO_MORE_ROWS_RETRIVE');
  MSG_EXC_BARCODE_EXIST_PO              := siLang.GetText('strMSG_EXC_BARCODE_EXIST_PO');
  MSG_EXC_MODULE_DISABLE                := siLang.GetText('strMSG_EXC_MODULE_DISABLE');
  MSG_EXC_QTY_BIGGER                    := siLang.GetText('strMSG_EXC_QTY_BIGGER');
  MSG_EXC_NO_ASSOCIETE_CASREG           := siLang.GetText('strMSG_EXC_NO_ASSOCIETE_CASREG');
  MSG_EXC_NO_DEFAULT_CASREG             := siLang.GetText('strMSG_EXC_NO_DEFAULT_CASREG');
  MSG_EXC_BARCODE_EXISTE                := siLang.GetText('strMSG_EXC_BARCODE_EXISTE');
  MSG_EXC_BARCODE_EXISTE_PURCHASE       := siLang.GetText('strMSG_EXC_BARCODE_EXISTE_PURCHASE');
  MSG_EXC_MODEL_EXISTE                  := siLang.GetText('strMSG_EXC_MODEL_EXISTE');
  MSG_EXC_SELECT_A_MODEL                := siLang.GetText('strMSG_EXC_SELECT_A_MODEL');
  MSG_CRT_ERROR_MAX_PAYMENTS            := siLang.GetText('strMSG_CRT_ERROR_MAX_PAYMENTS');
  MSG_CRT_ERROR_MAX_NUM_PAYNOW          := siLang.GetText('strMSG_CRT_ERROR_MAX_NUM_PAYNOW');
  MSG_INF_SPLITED_HOLD_DIVIDE           := siLang.GetText('strMSG_INF_SPLITED_HOLD_DIVIDE');
  MSG_INF_CANNOT_SLIT_LESS2             := siLang.GetText('strMSG_INF_CANNOT_SLIT_LESS2');
  MSG_INF_MAX_DELIVERY_DAYS1            := siLang.GetText('strMSG_INF_MAX_DELIVERY_DAYS1');
  MSG_INF_MAX_DELIVERY_DAYS2            := siLang.GetText('strMSG_INF_MAX_DELIVERY_DAYS2');
  MSG_INF_DISCOUNT_LIMT_REACHED         := siLang.GetText('strMSG_INF_DISCOUNT_LIMT_REACHED');
  MSG_INF_INV_DISCOUNT_LIMT             := siLang.GetText('strMSG_INF_INV_DISCOUNT_LIMT');
  MSG_CRT_USER_ALREADY_EXISTS           := siLang.GetText('strMSG_CRT_USER_ALREADY_EXISTS');
  MSG_CRT_RECEIVEDBY_ISEMPTY            := siLang.GetText('strMSG_CRT_RECEIVEDBY_ISEMPTY');
  MSG_CRT_INVOICE_NUMBER_EMPTY          := siLang.GetText('strMSG_CRT_INVOICE_NUMBER_EMPTY');
  MSG_CRT_NOT_UPDATE_SELL_PRICE         := siLang.GetText('strMSG_CRT_NOT_UPDATE_SELL_PRICE');
  MSG_CRT_PURCHASE_HAS_PAYMENT          := siLang.GetText('strMSG_CRT_PURCHASE_HAS_PAYMENT');
  MSG_CRT_INVALID_CHECK_NUMBER          := siLang.GetText('strMSG_CRT_INVALID_CHECK_NUMBER');
  MSG_CRT_CPF_ALREADY_EXISTS            := siLang.GetText('strMSG_CRT_CPF_ALREADY_EXISTS');
  MSG_CRT_FILL_RETURN_DOC_NUMBER        := siLang.GetText('strMSG_CRT_FILL_RETURN_DOC_NUMBER');
  MSG_CRT_OTHER_COMMISS_NOT_ALLOW       := siLang.GetText('strMSG_CRT_OTHER_COMMISS_NOT_ALLOW');
  MSG_CRT_OTHER_STORE_NOT_ALLOW         := siLang.GetText('strMSG_CRT_OTHER_STORE_NOT_ALLOW');
  MSG_CRT_NOT_SPLITED_DELIVER           := siLang.GetText('strMSG_CRT_NOT_SPLITED_DELIVER');
  MSG_CRT_NOT_HISTORY_TYPE              := siLang.GetText('strMSG_CRT_NOT_HISTORY_TYPE');
  MSG_CRT_NOT_RESULT_TYPE               := siLang.GetText('strMSG_CRT_NOT_RESULT_TYPE');
  MSG_CRT_BONUS_NOT_FOUND               := siLang.GetText('strMSG_CRT_BONUS_NOT_FOUND');
  MSG_CRT_BONUS_ALREADY_UTILIZED        := siLang.GetText('strMSG_CRT_BONUS_ALREADY_UTILIZED');
  MSG_CRT_BONUS_IS_NOT_VALID            := siLang.GetText('strMSG_CRT_BONUS_IS_NOT_VALID');
  MSG_CRT_BONUS_EXPIRED                 := siLang.GetText('strMSG_CRT_BONUS_EXPIRED');
  MSG_CRT_NO_BONUS_PAYMENT_SET          := siLang.GetText('strMSG_CRT_NO_BONUS_PAYMENT_SET');
  MSG_CRT_NO_OPEN_CASREG                := siLang.GetText('strMSG_CRT_NO_OPEN_CASREG');
  MSG_CRT_MODEL_WITHOUT_LOT             := siLang.GetText('strMSG_CRT_MODEL_WITHOUT_LOT');
  MSG_CRT_GIFT_ACCOUNT_ZERO             := siLang.GetText('strMSG_CRT_GIFT_ACCOUNT_ZERO');
  MSG_CRT_GIFT_EXPIRED                  := siLang.GetText('strMSG_CRT_GIFT_EXPIRED');
  MSG_CRT_NO_GIFT_ACCOUNT               := siLang.GetText('strMSG_CRT_NO_GIFT_ACCOUNT');
  MSG_CRT_UTILITY_NOT_DEFINED           := siLang.GetText('strMSG_CRT_UTILITY_NOT_DEFINED');
  MSG_INF_NO_ALTERATION                 := siLang.GetText('strMSG_INF_NO_ALTERATION');
  MSG_CRT_CLOSE_INVENTORY               := siLang.GetText('strMSG_CRT_CLOSE_INVENTORY');
  MSG_CRT_CLOSE_PHYSICAL_INV            := siLang.GetText('strMSG_CRT_CLOSE_PHYSICAL_INV');
  MSG_CRT_NOT_GIFT_ACCOUN_BALANCE       := siLang.GetText('strMSG_CRT_NOT_GIFT_ACCOUN_BALANCE');
  MSG_CRT_GIFT_ACCOUNT_EXIST            := siLang.GetText('strMSG_CRT_GIFT_ACCOUNT_EXIST');
  MSG_CRT_ERROR_GIFT_CREATE             := siLang.GetText('strMSG_CRT_ERROR_GIFT_CREATE');
  MSG_CRT_ERROR_DEL_GIFT                := siLang.GetText('strMSG_CRT_ERROR_DEL_GIFT');
  MSG_CRT_UNAVAIlABLE_INVENTORY         := siLang.GetText('strMSG_CRT_UNAVAIlABLE_INVENTORY');
  MSG_INF_QTY_NOT_DIF_MULT_CASE         := siLang.GetText('strMSG_INF_QTY_NOT_DIF_MULT_CASE');
  MSG_INF_INV_TOT_COMMIS_PERCENT        := siLang.GetText('strMSG_INF_INV_TOT_COMMIS_PERCENT');
  MSG_INF_EXAC_SALESPERSON_COMMIS       := siLang.GetText('strMSG_INF_EXAC_SALESPERSON_COMMIS');
  MSG_INF_NOT_MODIFY_COMMISSION         := siLang.GetText('strMSG_INF_NOT_MODIFY_COMMISSION');
  MSG_INF_NOT_MIN_GREATER_MAX           := siLang.GetText('strMSG_INF_NOT_MIN_GREATER_MAX');
  MSG_INF_NOT_100_NOT_PERCENT           := siLang.GetText('strMSG_INF_NOT_100_NOT_PERCENT');
  MSG_INF_MODEL_NOT_FOUND               := siLang.GetText('strMSG_INF_MODEL_NOT_FOUND');
  MSG_INF_USE_NOT_FOUND                 := siLang.GetText('strMSG_INF_USE_NOT_FOUND');
  MSG_INF_BARCODE_NOT_FOUND             := siLang.GetText('strMSG_INF_BARCODE_NOT_FOUND');
  MSG_INF_VENDOR_NUMBER_NOT_FOUND       := siLang.GetText('strMSG_INF_VENDOR_NUMBER_NOT_FOUND');
  MSG_INF_START_NEW_SALE_FOR_REFUND     := siLang.GetText('strMSG_INF_START_NEW_SALE_FOR_REFUND');
  MSG_INF_PROMO_MODEL_EXIST             := siLang.GetText('strMSG_INF_PROMO_MODEL_EXIST');
  MSG_INF_CUPOM_NOT_EXIST               := siLang.GetText('strMSG_INF_CUPOM_NOT_EXIST');
  MSG_INF_PROMO_ITEM_EXIST              := siLang.GetText('strMSG_INF_PROMO_ITEM_EXIST');
  MSG_INF_NUMBER_ZERO_INVALID           := siLang.GetText('strMSG_INF_NUMBER_ZERO_INVALID');
  MSG_INF_PROMO_SALE_DISC_SALE          := siLang.GetText('strMSG_INF_PROMO_SALE_DISC_SALE');
  MSG_INF_SELECT_DEPARTMENT             := siLang.GetText('strMSG_INF_SELECT_DEPARTMENT');
  MSQ_QST_DELETED_ITEM_RESTORE          := siLang.GetText('strMSQ_QST_DELETED_ITEM_RESTORE');
  MSG_QST_CHANGE_CUSTOMER               := siLang.GetText('strMSG_QST_CHANGE_CUSTOMER');
  MSG_INF_MODEL_NOT_FOUND_CREATE        := siLang.GetText('strMSG_INF_MODEL_NOT_FOUND_CREATE');
  MSG_INF_PERCENT_LESSER_100            := siLang.GetText('strMSG_INF_PERCENT_LESSER_100');
  MSG_INF_FLAT_PROMO_DISC_INVALID       := siLang.GetText('strMSG_INF_FLAT_PROMO_DISC_INVALID');
  MSG_INF_LESSER_MINIM_VENDOR           := siLang.GetText('strMSG_INF_LESSER_MINIM_VENDOR');
  MSG_INF_QTY_MUST_BIGGER_ZERO          := siLang.GetText('strMSG_INF_QTY_MUST_BIGGER_ZERO');
  MSG_INF_RECONNECT_TO_THE_SERVER       := siLang.GetText('strMSG_INF_RECONNECT_TO_THE_SERVER');
  MSG_QST_CALC_SALE_PRICE               := siLang.GetText('strMSG_QST_CALC_SALE_PRICE');
  MSG_INF_TRANF_NUMBER_EXISTS           := siLang.GetText('strMSG_INF_TRANF_NUMBER_EXISTS');
  MSG_INF_TRANF_ALREADY_IMPORTED        := siLang.GetText('strMSG_INF_TRANF_ALREADY_IMPORTED');
  MSG_INF_NOT_DEL_ITEMS_TRANFER         := siLang.GetText('strMSG_INF_NOT_DEL_ITEMS_TRANFER');
  MSG_INF_NOT_MODI_ITEMS_TRANFER        := siLang.GetText('strMSG_INF_NOT_MODI_ITEMS_TRANFER');
  MSG_INF_NOT_VALID_TRANFER_NUM         := siLang.GetText('strMSG_INF_NOT_VALID_TRANFER_NUM');
  MSG_INF_NOT_FOUND_TRANFER_NUM         := siLang.GetText('strMSG_INF_NOT_FOUND_TRANFER_NUM');
  MSG_INF_END_CALL_BEFORE_CLOSE         := siLang.GetText('strMSG_INF_END_CALL_BEFORE_CLOSE');
  MSG_INF_CATALOG_NOT_FOUND             := siLang.GetText('strMSG_INF_CATALOG_NOT_FOUND');
  MSG_QST_PRINT_TRANSFER                := siLang.GetText('strMSG_QST_PRINT_TRANSFER');

  //amf October 10, 2012
  MSG_QST_ITEM_RESALABLE_STOCK          := siLang.GetText('strMSG_QST_ITEM_RESALABLE_STOCK');

  MSG_QST_ITEM_RESALABLE                := siLang.GetText('strMSG_QST_ITEM_RESALABLE');
  MSG_INF_TYPE_CHANGE                   := siLang.GetText('strMSG_INF_TYPE_CHANGE');
  MSG_INF_NOT_MODI_PRINTED_TRANFER      := siLang.GetText('strMSG_INF_NOT_MODI_PRINTED_TRANFER');
  MSG_INF_INVOICE_ALREADY_DISC          := siLang.GetText('strMSG_MSG_INF_INVOICE_ALREADY_DISC');
  MSG_INF_ITEM_ALREADY_DISC             := siLang.GetText('strMSG_INF_ITEM_ALREADY_DISC');
  MSG_INF_SELECT_PET_SKU                := siLang.GetText('strMSG_INF_SELECT_PET_SKU');
  MSG_INF_MORE_THAN_ONE_EXEC            := siLang.GetText('strMSG_INF_MORE_THAN_ONE_EXEC');
  MSG_INF_DEL_CUSTOMER_CREDIT           := siLang.GetText('strMSG_INF_DEL_CUSTOMER_CREDIT');
  MSG_INF_TOTAL_MUST_BE_ZERO            := siLang.GetText('strMSG_INF_TOTAL_MUST_BE_ZERO');
  MSG_INF_NOT_ADD_PAYMANETS             := siLang.GetText('strMSG_INF_NOT_ADD_PAYMANETS');
  MSG_INF_NOT_GRATER_TOTAL_DUE          := siLang.GetText('strMSG_INF_NOT_GRATER_TOTAL_DUE');
  MSG_INF_PAYMENTS_CANNOT_CLOSE         := siLang.GetText('strMSG_INF_PAYMENTS_CANNOT_CLOSE');
  MSG_INF_COUPONS_NOT_DISCOUNTED        := siLang.GetText('strMSG_INF_COUPONS_NOT_DISCOUNTED');
  MSG_INF_VALIDATE_SIZE_AND_COLOR       := siLang.GetText('strMSG_INF_VALIDATE_SIZE_AND_COLOR');
  MSG_INF_QTY_GREATER_ONE               := siLang.GetText('strMSG_INF_QTY_GREATER_ONE');
  MSG_INF_DEL_MODEL_LOT                 := siLang.GetText('strMSG_INF_DEL_MODEL_LOT');
  MSG_QST_RECEIVING_OTHER_STORE         := siLang.GetText('strMSG_QST_RECEIVING_OTHER_STORE');
  MSG_QST_RECEIVING_HISTORY             := siLang.GetText('strMSG_QST_RECEIVING_HISTORY');
  MSG_QST_MODEL_LOT                     := siLang.GetText('strMSG_QST_MODEL_LOT');

  MSG_QST_PROCESS_BONUS                 := siLang.GetText('strMSG_QST_PROCESS_BONUS');

  MSG_CRT_ASSOCIATING_DEPARTMENT        := siLang.GetText('strMSG_CRT_ASSOCIATING_DEPARTMENT');
  MSG_CRT_COPYING_PO                    := siLang.GetText('strMSG_CRT_COPYING_PO');
  MSG_CRT_NO_VALID_ITEM                 := siLang.GetText('strMSG_CRT_NO_VALID_ITEM');
  MSG_CRT_EXCEEDED_ITEMS                := siLang.GetText('strMSG_CRT_EXCEEDED_ITEMS');
  MSG_CRT_PAYMENT_NOT_EXIST             := siLang.GetText('strMSG_CRT_PAYMENT_NOT_EXIST');
  MSG_CRT_NO_BARCODE_SCALE              := siLang.GetText('strMSG_CRT_NO_BARCODE_SCALE');
  MSG_CRT_RECEIVING_VALIDATE            := siLang.GetText('strMSG_CRT_RECEIVING_VALIDATE');

  MSG_CRT_NO_DISCOUNT_PROMO             := siLang.GetText('strMSG_CRT_NO_DISCOUNT_PROMO');
  MSG_EXC_SELECT_A_VENDOR               := siLang.GetText('strMSG_EXC_SELECT_A_VENDOR');
  MSG_INF_RANGE_PERCENT_NOT_VALID       := siLang.GetText('strMSG_INF_RANGE_PERCENT_NOT_VALID');
  MSG_INF_RANGE_AMOUNT_NOT_VALID        := siLang.GetText('strMSG_INF_RANGE_AMOUNT_NOT_VALID');
  MSG_INF_RANGE_QTY_NOT_VALID           := siLang.GetText('strMSG_INF_RANGE_QTY_NOT_VALID');
  MSG_CRT_PART_MRBUILD_INVALID          := siLang.GetText('strMSG_CRT_PART_MRBUILD_INVALID');

  MSG_CRT_INVALID_DESCRIPTION_PDV       := siLang.GetText('strMSG_CRT_INVALID_DESCRIPTION_PDV');
  MSG_INF_PERCENT_NEGATIVE_POSITIVE     := siLang.GetText('strMSG_INF_PERCENT_NEGATIVE_POSITIVE');
  MSG_CRT_PAYMENT_PROCESSOR_NOT_FOUND   := siLang.GetText('strMSG_CRT_PAYMENT_PROCESSOR_NOT_FOUND');
  MSG_CRT_ERROR_USING_BONUS             := siLang.GetText('strMSG_CRT_ERROR_USING_BONUS');
  MSG_CRT_ERROR_VOIDING_BONUS           := siLang.GetText('strMSG_CRT_ERROR_VOIDING_BONUS');
  MSG_CRT_ERROR_UNUSE_BONUS             := siLang.GetText('strMSG_CRT_ERROR_UNUSE_BONUS');
  MSG_CRT_BONUS_NOT_APPLY_FASTSALE      := siLang.GetText('strMSG_CRT_BONUS_NOT_APPLY_FASTSALE');


  //amfsouza 10.14.2010
//  MSG_CRT_LAYAWAY_DOWNPAYMENT           := siLang.GetText('strMSG_CRT_LAYAWAY_DOWNPAYMENT');
//  MSG_CRT_LAYAWAY_CUSTOMER              := siLang.GetText('strMSG_CRT_LAYAWAY_CUSTOMER');

end;

end.

