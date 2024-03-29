package Ogone::Status;
BEGIN {
  $Ogone::Status::AUTHORITY = 'cpan:ESSELENS';
}

# ABSTRACT: Ogone status maps
# from https://secure.ogone.com/ncol/paymentinfos1.asp on 2010-11-17

our %payment_status = (
        0   => 'Incomplete or invalid',
        1   => 'Cancelled by client',
        2   => 'Authorization refused',
        4   => 'Order stored',
        40  => 'Stored waiting external result',
        41  => 'Waiting client payment',
        5   => 'Authorized',
        50  => 'Authorized waiting external result',
        51  => 'Authorization waiting',
        52  => 'Authorization not known',
        55  => 'Stand-by',
        56  => 'OK with scheduled payments',
        57  => 'Error in scheduled payments',
        59  => 'Authorization to get manually',
        6   => 'Authorized and cancelled',
        61  => 'Authorization deletion waiting',
        62  => 'Authorization deletion uncertain',
        63  => 'Authorization deletion refused',
        64  => 'Authorized and cancelled',
        7   => 'Payment deleted',
        71  => 'Payment deletion pending',
        72  => 'Payment deletion uncertain',
        73  => 'Payment deletion refused',
        74  => 'Payment deleted',
        75  => 'Deletion processed by merchant',
        8   => 'Refund',
        81  => 'Refund pending',
        82  => 'Refund uncertain',
        83  => 'Refund refused',
        84  => 'Payment declined by the acquirer',
        85  => 'Refund processed by merchant',
        9   => 'Payment requested',
        91  => 'Payment processing',
        92  => 'Payment uncertain',
        93  => 'Payment refused',
        94  => 'Refund declined by the acquirer',
        95  => 'Payment processed by merchant',
        99  => 'Being processed' );

our %error_msg = (
		'0020001001' => "Authorization failed, please retry",
		'0020001002' => "Authorization failed, please retry",
		'0020001003' => "Authorization failed, please retry",
		'0020001004' => "Authorization failed, please retry",
		'0020001005' => "Authorization failed, please retry",
		'0020001006' => "Authorization failed, please retry",
		'0020001007' => "Authorization failed, please retry",
		'0020001008' => "Authorization failed, please retry",
		'0020001009' => "Authorization failed, please retry",
		'0020001010' => "Authorization failed, please retry",
		'0030001999' => "Our payment system is currently under maintenance, please try later",
		'0050001005' => "Expiry date error",
		'0050001007' => "Requested Operation code not allowed",
		'0050001008' => "Invalid delay value",
		'0050001010' => "Input date in invalid format",
		'0050001013' => "Unable to parse socket input stream",
		'0050001014' => "Error in parsing stream content",
		'0050001015' => "Currency error",
		'0050001016' => "Transaction still posted at end of wait",
		'0050001017' => "Sync value not compatible with delay value",
		'0050001019' => "Transaction duplicate of a pre-existing transaction",
		'0050001020' => "Acceptation code empty while required for the transaction",
		'0050001024' => "Maintenance acquirer differs from original transaction acquirer",
		'0050001025' => "Maintenance merchant differs from original transaction merchant",
		'0050001028' => "Maintenance operation not accurate for the original transaction",
		'0050001031' => "Host application unknown for the transaction",
		'0050001032' => "Unable to perform requested operation with requested currency",
		'0050001033' => "Maintenance card number differs from original transaction card number",
		'0050001034' => "Operation code not allowed",
		'0050001035' => "Exception occurred in socket input stream treatment",
		'0050001036' => "Card length does not correspond to an acceptable value for the brand",
		'0050001036' => "Card length does not correspond to an acceptable value for the brand",
		'0050001068' => "A technical problem occurred, please contact helpdesk",
		'0050001069' => "Invalid check for CardID and Brand",
		'0050001070' => "A technical problem occurred, please contact helpdesk",
		'0050001116' => "Unknown origin IP",
		'0050001117' => "No origin IP detected",
		'0050001118' => "Merchant configuration problem, please contact support",
		'10001001' => "Communication failure",
		'10001002' => "Communication failure",
		'10001003' => "Communication failure",
		'10001004' => "Communication failure",
		'10001005' => "Communication failure",
		'20001001' => "We received an unknown status for the transaction. We will contact your acquirer and update the status of the transaction within one working day. Please check the status later.",
		'20001002' => "We received an unknown status for the transaction. We will contact your acquirer and update the status of the transaction within one working day. Please check the status later.",
		'20001003' => "We received an unknown status for the transaction. We will contact your acquirer and update the status of the transaction within one working day. Please check the status later.",
		'20001004' => "We received an unknown status for the transaction. We will contact your acquirer and update the status of the transaction within one working day. Please check the status later.",
		'20001005' => "We received an unknown status for the transaction. We will contact your acquirer and update the status of the transaction within one working day. Please check the status later.",
		'20001006' => "We received an unknown status for the transaction. We will contact your acquirer and update the status of the transaction within one working day. Please check the status later.",
		'20001007' => "We received an unknown status for the transaction. We will contact your acquirer and update the status of the transaction within one working day. Please check the status later.",
		'20001008' => "We received an unknown status for the transaction. We will contact your acquirer and update the status of the transaction within one working day. Please check the status later.",
		'20001009' => "We received an unknown status for the transaction. We will contact your acquirer and update the status of the transaction within one working day. Please check the status later.",
		'20001010' => "We received an unknown status for the transaction. We will contact your acquirer and update the status of the transaction within one working day. Please check the status later.",
		'20001101' => "A technical problem occurred, please contact helpdesk",
		'20001105' => "We received an unknown status for the transaction. We will contact your acquirer and update the status of the transaction within one working day. Please check the status later.",
		'20001111' => "A technical problem occurred, please contact helpdesk",
		'20002001' => "Origin for the response of the bank can not be checked",
		'20002002' => "Beneficiary account number has been modified during processing",
		'20002003' => "Amount has been modified during processing",
		'20002004' => "Currency has been modified during processing",
		'20002005' => "No feedback from the bank server has been detected",
		'30001001' => "Payment refused by the acquirer",
		'30001002' => "Duplicate request",
		'30001010' => "A technical problem occurred, please contact helpdesk",
		'30001011' => "A technical problem occurred, please contact helpdesk",
		'30001012' => "Card black listed - Contact acquirer",
		'30001015' => "Your merchant's acquirer is temporarily unavailable, please try later or choose another payment method.",
		'30001051' => "A technical problem occurred, please contact helpdesk",
		'30001054' => "A technical problem occurred, please contact helpdesk",
		'30001057' => "Your merchant's acquirer is temporarily unavailable, please try later or choose another payment method.",
		'30001058' => "Your merchant's acquirer is temporarily unavailable, please try later or choose another payment method.",
		'30001060' => "Aquirer indicates that a failure occured during payment processing",
		'30001090' => "CVC check required by front end and returned invalid by acquirer",
		'30001091' => "ZIP check required by front end and returned invalid by acquirer",
		'30001092' => "Address check required by front end and returned as invalid by acquirer.",
		'30001100' => "Unauthorized buyer's country",
		'30001101' => "IP country <> card country",
		'30001102' => "Number of different countries too high",
		'30001103' => "unauthorized card country",
		'30001104' => "unauthorized ip address country",
		'30001105' => "Anonymous proxy",
		'30001110' => "If the problem persists, please contact Support, or go to paysafecard's card balance page (https://customer.cc.at.paysafecard.com/psccustomer/GetWelcomePanelServlet?language=en) to see when the amount reserved on your card will be available again.",
		'30001120' => "IP address in merchant's black list",
		'30001130' => "BIN in merchant's black list",
		'30001140' => "Card in merchant's card blacklist",
		'30001141' => "Email in blacklist",
		'30001142' => "Passenger name in blacklist",
		'30001143' => "Card holder name in blacklist",
		'30001144' => "Passenger name different from owner name",
		'30001145' => "Time to departure too short",
		'30001149' => "Card Configured in Card Supplier Limit for another relation (CSL)",
		'30001150' => "Card not configured in the system for this customer (CSL)",
		'30001151' => "REF1 not allowed for this relationship (Contract number",
		'30001152' => "Card/Supplier Amount limit reached (CSL)",
		'30001153' => "Card not allowed for this supplier (Date out of contract bounds)",
		'30001154' => "You have reached the usage limit allowed",
		'30001155' => "You have reached the usage limit allowed",
		'30001156' => "You have reached the usage limit allowed",
		'30001157' => "Unauthorized IP country for itinerary",
		'30001158' => "email usage limit reached",
		'30001159' => "Unauthorized card country/IP country combination",
		'30001160' => "Postcode in highrisk group",
		'30001161' => "generic blacklist match",
		'30001180' => "maximum scoring reached",
		'30001997' => "Authorization canceled by simulation",
		'30001998' => "A technical problem occurred, please try again.",
		'30001999' => "Your merchant's acquirer is temporarily unavailable, please try later or choose another payment method.",
		'30002001' => "Payment refused by the financial institution",
		'30021001' => "Call acquirer support call number.",
		'30022001' => "Payment must be approved by the acquirer before execution.",
		'30031001' => "Invalid merchant number.",
		'30041001' => "Retain card.",
		'30051001' => "Authorization declined",
		'30071001' => "Retain card - special conditions.",
		'30121001' => "Invalid transaction",
		'30131001' => "Invalid amount",
		'30131002' => "You have reached the total amount allowed",
		'30141001' => "Invalid card number",
		'30151001' => "Unknown acquiring institution.",
		'30171001' => "Payment method cancelled by the buyer",
		'30171002' => "The maximum time allowed is elapsed.",
		'30191001' => "Try again later.",
		'30201001' => "A technical problem occurred, please contact helpdesk",
		'30301001' => "Invalid format",
		'30311001' => "Unknown acquirer ID.",
		'30331001' => "Card expired.",
		'30341001' => "Suspicion of fraud.",
		'30341002' => "Suspicion of fraud (3rdMan)",
		'30341003' => "Suspicion of fraud (Perseuss)",
		'30341004' => "Suspicion of fraud (ETHOCA)",
		'30381001' => "A technical problem occurred, please contact helpdesk",
		'30401001' => "Invalid function.",
		'30411001' => "Lost card.",
		'30431001' => "Stolen card, pick up",
		'30511001' => "Insufficient funds.",
		'30521001' => "No Authorization. Contact the issuer of your card.",
		'30541001' => "Card expired.",
		'30551001' => "Invalid PIN.",
		'30561001' => "Card not in authorizer's database.",
		'30571001' => "Transaction not permitted on card.",
		'30581001' => "Transaction not allowed on this terminal",
		'30591001' => "Suspicion of fraud.",
		'30601001' => "The merchant must contact the acquirer.",
		'30611001' => "Amount exceeds card ceiling.",
		'30621001' => "Restricted card.",
		'30631001' => "Security policy not respected.",
		'30641001' => "Amount changed from ref. trn.",
		'30681001' => "Tardy response.",
		'30751001' => "PIN entered incorrectly too often",
		'30761001' => "Card holder already contesting.",
		'30771001' => "PIN entry required.",
		'30811001' => "Message flow error.",
		'30821001' => "Authorization center unavailable",
		'30831001' => "Authorization center unavailable",
		'30901001' => "Temporary system shutdown.",
		'30911001' => "Acquirer unavailable.",
		'30921001' => "Invalid card type for acquirer.",
		'30941001' => "Duplicate transaction",
		'30961001' => "Processing temporarily not possible",
		'30971001' => "A technical problem occurred, please contact helpdesk",
		'30981001' => "A technical problem occurred, please contact helpdesk",
		'31011001' => "Unknown acceptance code",
		'31021001' => "Invalid currency",
		'31031001' => "Acceptance code missing",
		'31041001' => "Inactive card",
		'31051001' => "Merchant not active",
		'31061001' => "Invalid expiration date",
		'31071001' => "Interrupted host communication",
		'31081001' => "Card refused",
		'31091001' => "Invalid password",
		'31101001' => "Plafond transaction (majoré du bonus) dépassé",
		'31111001' => "Plafond mensuel (majoré du bonus) dépassé",
		'31121001' => "Plafond centre de facturation dépassé",
		'31131001' => "Plafond entreprise dépassé",
		'31141001' => "Code MCC du fournisseur non autorisé pour la carte",
		'31151001' => "Numéro SIRET du fournisseur non autorisé pour la carte",
		'31161001' => "This is not a valid online banking account",
		'32001004' => "A technical problem occurred, please try again.",
		'39991001' => "A technical problem occurred, please contact the helpdesk of your acquirer",
		'40001001' => "A technical problem occurred, please try again.",
		'40001002' => "A technical problem occurred, please try again.",
		'40001003' => "A technical problem occurred, please try again.",
		'40001004' => "A technical problem occurred, please try again.",
		'40001005' => "A technical problem occurred, please try again.",
		'40001006' => "A technical problem occurred, please try again.",
		'40001007' => "A technical problem occurred, please try again.",
		'40001008' => "A technical problem occurred, please try again.",
		'40001009' => "A technical problem occurred, please try again.",
		'40001010' => "A technical problem occurred, please try again.",
		'40001011' => "A technical problem occurred, please contact helpdesk",
		'40001012' => "Your merchant's acquirer is temporarily unavailable, please try later or choose another payment method.",
		'40001013' => "A technical problem occurred, please contact helpdesk",
		'40001016' => "A technical problem occurred, please contact helpdesk",
		'40001018' => "A technical problem occurred, please try again.",
		'40001019' => "Sorry, an error occurred during processing. Please retry the operation (use back button of the browser). If problem persists, contact your merchant's helpdesk.",
		'40001020' => "Sorry, an error occurred during processing. Please retry the operation (use back button of the browser). If problem persists, contact your merchant's helpdesk.",
		'40001050' => "A technical problem occurred, please contact helpdesk",
		'40001133' => "Authentication failed, the signature of your bank access control server is incorrect",
		'40001134' => "Authentication failed, please retry or cancel.",
		'40001135' => "Authentication temporary unavailable, please retry or cancel.",
		'40001136' => "Technical problem with your browser, please retry or cancel",
		'40001137' => "Your bank access control server is temporary unavailable, please retry or cancel",
		'40001998' => "Temporary technical problem. Please retry a little bit later.",
		'50001001' => "Unknown card type",
		'50001002' => "Card number format check failed for given card number.",
		'50001003' => "Merchant data error",
		'50001004' => "Merchant identification missing",
		'50001005' => "Expiry date error",
		'50001006' => "Amount is not a number",
		'50001007' => "A technical problem occurred, please contact helpdesk",
		'50001008' => "A technical problem occurred, please contact helpdesk",
		'50001009' => "A technical problem occurred, please contact helpdesk",
		'50001010' => "A technical problem occurred, please contact helpdesk",
		'50001011' => "Brand not supported for that merchant",
		'50001012' => "A technical problem occurred, please contact helpdesk",
		'50001013' => "A technical problem occurred, please contact helpdesk",
		'50001014' => "A technical problem occurred, please contact helpdesk",
		'50001015' => "Invalid currency code",
		'50001016' => "A technical problem occurred, please contact helpdesk",
		'50001017' => "A technical problem occurred, please contact helpdesk",
		'50001018' => "A technical problem occurred, please contact helpdesk",
		'50001019' => "A technical problem occurred, please contact helpdesk",
		'50001020' => "A technical problem occurred, please contact helpdesk",
		'50001021' => "A technical problem occurred, please contact helpdesk",
		'50001022' => "A technical problem occurred, please contact helpdesk",
		'50001023' => "A technical problem occurred, please contact helpdesk",
		'50001024' => "A technical problem occurred, please contact helpdesk",
		'50001025' => "A technical problem occurred, please contact helpdesk",
		'50001026' => "A technical problem occurred, please contact helpdesk",
		'50001027' => "A technical problem occurred, please contact helpdesk",
		'50001028' => "A technical problem occurred, please contact helpdesk",
		'50001029' => "A technical problem occurred, please contact helpdesk",
		'50001030' => "A technical problem occurred, please contact helpdesk",
		'50001031' => "A technical problem occurred, please contact helpdesk",
		'50001032' => "A technical problem occurred, please contact helpdesk",
		'50001033' => "A technical problem occurred, please contact helpdesk",
		'50001034' => "A technical problem occurred, please contact helpdesk",
		'50001035' => "A technical problem occurred, please contact helpdesk",
		'50001036' => "Card length does not correspond to an acceptable value for the brand",
		'50001037' => "Purchasing card number for a regular merchant",
		'50001038' => "Non Purchasing card for a Purchasing card merchant",
		'50001039' => "Details sent for a non-Purchasing card merchant, please contact helpdesk",
		'50001040' => "Details not sent for a Purchasing card transaction, please contact helpdesk",
		'50001041' => "Payment detail validation failed",
		'50001042' => "Given transactions amounts (tax,discount,shipping,net,etc…) do not compute correctly together",
		'50001043' => "A technical problem occurred, please contact helpdesk",
		'50001044' => "No acquirer configured for this operation",
		'50001045' => "No UID configured for this operation",
		'50001046' => "Operation not allowed for the merchant",
		'50001047' => "A technical problem occurred, please contact helpdesk",
		'50001048' => "A technical problem occurred, please contact helpdesk",
		'50001049' => "A technical problem occurred, please contact helpdesk",
		'50001050' => "A technical problem occurred, please contact helpdesk",
		'50001051' => "A technical problem occurred, please contact helpdesk",
		'50001052' => "A technical problem occurred, please contact helpdesk",
		'50001053' => "A technical problem occurred, please contact helpdesk",
		'50001054' => "Card number incorrect or incompatible",
		'50001055' => "A technical problem occurred, please contact helpdesk",
		'50001056' => "A technical problem occurred, please contact helpdesk",
		'50001057' => "A technical problem occurred, please contact helpdesk",
		'50001058' => "A technical problem occurred, please contact helpdesk",
		'50001059' => "A technical problem occurred, please contact helpdesk",
		'50001060' => "A technical problem occurred, please contact helpdesk",
		'50001061' => "A technical problem occurred, please contact helpdesk",
		'50001062' => "A technical problem occurred, please contact helpdesk",
		'50001063' => "Card Issue Number does not correspond to range or not present",
		'50001064' => "Start Date not valid or not present",
		'50001066' => "Format of CVC code invalid",
		'50001067' => "The merchant is not enrolled for 3D-Secure",
		'50001068' => "The card number or account number (PAN) is invalid",
		'50001069' => "Invalid check for CardID and Brand",
		'50001070' => "The ECI value given is either not supported, or in conflict with other data in the transaction",
		'50001071' => "Incomplete TRN demat",
		'50001072' => "Incomplete PAY demat",
		'50001073' => "No demat APP",
		'50001074' => "Authorisation too old",
		'50001075' => "VERRes was an error message",
		'50001076' => "DCP amount greater than authorisation amount",
		'50001077' => "Details negative amount",
		'50001078' => "Details negative quantity",
		'50001079' => "Could not decode/decompress received PARes (3D-Secure)",
		'50001080' => "Received PARes was an erereor message from ACS (3D-Secure)",
		'50001081' => "Received PARes format was invalid according to the 3DS specifications (3D-Secure)",
		'50001082' => "PAReq/PARes reconciliation failure (3D-Secure)",
		'50001084' => "Maximum amount reached",
		'50001087' => "The transaction type requires authentication, please check with your bank.",
		'50001090' => "CVC missing at input, but CVC check asked",
		'50001091' => "ZIP missing at input, but ZIP check asked",
		'50001092' => "Address missing at input, but Address check asked",
		'50001095' => "Invalid date of birth",
		'50001096' => "Invalid commodity code",
		'50001097' => "The requested currency and brand are incompatible.",
		'50001111' => "Data validation error",
		'50001113' => "This order has already been processed",
		'50001114' => "Error pre-payment check page access",
		'50001115' => "Request not received in secure mode",
		'50001116' => "Unknown IP address origin",
		'50001117' => "NO IP address origin",
		'50001118' => "Pspid not found or not correct",
		'50001119' => "Password incorrect or disabled due to numbers of errors",
		'50001120' => "Invalid currency",
		'50001121' => "Invalid number of decimals for the currency",
		'50001122' => "Currency not accepted by the merchant",
		'50001123' => "Card type not active",
		'50001124' => "Number of lines don't match with number of payments",
		'50001125' => "Format validation error",
		'50001126' => "Overflow in data capture requests for the original order",
		'50001127' => "The original order is not in a correct status",
		'50001128' => "missing authorization code for unauthorized order",
		'50001129' => "Overflow in refunds requests",
		'50001130' => "Error access to original order",
		'50001131' => "Error access to original history item",
		'50001132' => "The Selected Catalog is empty",
		'50001133' => "Duplicate request",
		'50001134' => "Authentication failed, please retry or cancel.",
		'50001135' => "Authentication temporary unavailable, please retry or cancel.",
		'50001136' => "Technical problem with your browser, please retry or cancel",
		'50001137' => "Your bank access control server is temporary unavailable, please retry or cancel",
		'50001150' => "Fraud Detection, Technical error (IP not valid)",
		'50001151' => "Fraud detection : technical error (IPCTY unknown or error)",
		'50001152' => "Fraud detection : technical error (CCCTY unknown or error)",
		'50001153' => "Overflow in redo-authorisation requests",
		'50001170' => "Dynamic BIN check failed",
		'50001171' => "Dynamic country check failed",
		'50001172' => "Error in Amadeus signature",
		'50001174' => "Card Holder Name is too long",
		'50001175' => "Name contains invalid characters",
		'50001176' => "Card number is too long",
		'50001177' => "Card number contains non-numeric info",
		'50001178' => "Card Number Empty",
		'50001179' => "CVC too long",
		'50001180' => "CVC contains non-numeric info",
		'50001181' => "Expiration date contains non-numeric info",
		'50001182' => "Invalid expiration month",
		'50001183' => "Expiration date must be in the future",
		'50001184' => "SHA Mismatch",
		'60000001' => "account number unknown",
		'60000003' => "not credited dd-mm-yy",
		'60000005' => "name/number do not correspond",
		'60000007' => "account number blocked",
		'60000008' => "specific direct debit block",
		'60000009' => "account number WKA",
		'60000010' => "administrative reason",
		'60000011' => "account number expired",
		'60000012' => "no direct debit authorisation given",
		'60000013' => "debit not approved",
		'60000014' => "double payment",
		'60000018' => "name/address/city not entered",
		'60001001' => "no original direct debit for revocation",
		'60001002' => "payer's account number format error",
		'60001004' => "payer's account at different bank",
		'60001005' => "payee's account at different bank",
		'60001006' => "payee's account number format error",
		'60001007' => "payer's account number blocked",
		'60001008' => "payer's account number expired",
		'60001009' => "payee's account number expired",
		'60001010' => "direct debit not possible",
		'60001011' => "creditor payment not possible",
		'60001012' => "payer's account number unknown WKA-number",
		'60001013' => "payee's account number unknown WKA-number",
		'60001014' => "impermissible WKA transaction",
		'60001015' => "period for revocation expired",
		'60001017' => "reason for revocation not correct",
		'60001018' => "original run number not numeric",
		'60001019' => "payment ID incorrect",
		'60001020' => "amount not numeric",
		'60001021' => "amount zero not permitted",
		'60001022' => "negative amount not permitted",
		'60001023' => "payer and payee giro account number",
		'60001025' => "processing code (verwerkingscode) incorrect",
		'60001028' => "revocation not permitted",
		'60001029' => "guaranteed direct debit on giro account number",
		'60001030' => "NBC transaction type incorrect",
		'60001031' => "description too large",
		'60001032' => "book account number not issued",
		'60001034' => "book account number incorrect",
		'60001035' => "payer's account number not numeric",
		'60001036' => "payer's account number not eleven-proof",
		'60001037' => "payer's account number not issued",
		'60001039' => "payer's account number of DNB/BGC/BLA",
		'60001040' => "payee's account number not numeric",
		'60001041' => "payee's account number not eleven-proof",
		'60001042' => "payee's account number not issued",
		'60001044' => "payee's account number unknown",
		'60001050' => "payee's name missing",
		'60001051' => "indicate payee's bank account number instead of 3102",
		'60001052' => "no direct debit contract",
		'60001053' => "amount beyond bounds",
		'60001054' => "selective direct debit block",
		'60001055' => "original run number unknown",
		'60001057' => "payer's name missing",
		'60001058' => "payee's account number missing",
		'60001059' => "restore not permitted",
		'60001060' => "bank's reference (navraaggegeven) missing",
		'60001061' => "BEC/GBK number incorrect",
		'60001062' => "BEC/GBK code incorrect",
		'60001087' => "book account number not numeric",
		'60001090' => "cancelled on request",
		'60001091' => "cancellation order executed",
		'60001092' => "cancelled instead of bended",
		'60001093' => "book account number is a shortened account number",
		'60001094' => "instructing party account number not identical with payer",
		'60001095' => "payee unknown GBK acceptor",
		'60001097' => "instructing party account number not identical with payee",
		'60001099' => "clearing not permitted",
		'60001101' => "payer's account number not spaces",
		'60001102' => "PAN length not numeric",
		'60001103' => "PAN length outside limits",
		'60001104' => "track number not numeric",
		'60001105' => "track number not valid",
		'60001106' => "PAN sequence number not numeric",
		'60001107' => "domestic PAN not numeric",
		'60001108' => "domestic PAN not eleven-proof",
		'60001109' => "domestic PAN not issued",
		'60001110' => "foreign PAN not numeric",
		'60001111' => "card valid date not numeric",
		'60001112' => "book period number (boekperiodenr) not numeric",
		'60001113' => "transaction number not numeric",
		'60001114' => "transaction time not numeric",
		'60001115' => "transaction no valid time",
		'60001116' => "transaction date not numeric",
		'60001117' => "transaction no valid date",
		'60001118' => "STAN not numeric",
		'60001119' => "instructing party's name missing",
		'60001120' => "foreign amount (bedrag-vv) not numeric",
		'60001122' => "rate (verrekenkoers) not numeric",
		'60001125' => "number of decimals (aantaldecimalen) incorrect",
		'60001126' => "tariff (tarifering) not B/O/S",
		'60001127' => "domestic costs (kostenbinnenland) not numeric",
		'60001128' => "domestic costs (kostenbinnenland) not higher than zero",
		'60001129' => "foreign costs (kostenbuitenland) not numeric",
		'60001130' => "foreign costs (kostenbuitenland) not higher than zero",
		'60001131' => "domestic costs (kostenbinnenland) not zero",
		'60001132' => "foreign costs (kostenbuitenland) not zero",
		'60001134' => "Euro record not fully filled in",
		'60001135' => "Client currency incorrect",
		'60001136' => "Amount NLG not numeric",
		'60001137' => "Amount NLG not higher than zero",
		'60001138' => "Amount NLG not equal to Amount",
		'60001139' => "Amount NLG incorrectly converted",
		'60001140' => "Amount EUR not numeric",
		'60001141' => "Amount EUR not greater than zero",
		'60001142' => "Amount EUR not equal to Amount",
		'60001143' => "Amount EUR incorrectly converted",
		'60001144' => "Client currency not NLG",
		'60001145' => "rate euro-vv (Koerseuro-vv) not numeric",
		'60001146' => "comma rate euro-vv (Kommakoerseuro-vv) incorrect",
		'60001147' => "acceptgiro distributor not valid",
		'60001148' => "Original run number and/or BRN are missing",
		'60001149' => "Amount/Account number/ BRN different",
		'60001150' => "Direct debit already revoked/restored",
		'60001151' => "Direct debit already reversed/revoked/restored",
		'60001153' => "Payer's account number not known",
);

our %error_retry = (
        '0020001001' => 1, '0020001002' => 1, '0020001003' => 1, '0020001004' => 1,
        '0020001005' => 1, '0020001006' => 1, '0020001007' => 1, '0020001008' => 1,
        '0020001009' => 1, '0020001010' => 1, '0030001999' => 0, '0050001005' => 0,
        '0050001007' => 0, '0050001008' => 0, '0050001010' => 0, '0050001013' => 0,
        '0050001014' => 0, '0050001015' => 0, '0050001016' => 0, '0050001017' => 0,
        '0050001019' => 0, '0050001020' => 0, '0050001024' => 0, '0050001025' => 0,
        '0050001028' => 0, '0050001031' => 0, '0050001032' => 0, '0050001033' => 0,
        '0050001034' => 0, '0050001035' => 0, '0050001036' => 0, '0050001036' => 0,
        '0050001068' => 0, '0050001069' => 0, '0050001070' => 0, '0050001116' => 0,
        '0050001117' => 0, '0050001118' => 0,

        '10001001' => 0, '10001002' => 0, '10001003' => 0, '10001004' => 0, '10001005' => 0,
        '20001001' => 0, '20001002' => 0, '20001003' => 0, '20001004' => 0, '20001005' => 0,
        '20001006' => 0, '20001007' => 0, '20001008' => 0, '20001009' => 0, '20001010' => 0,
        '20001101' => 0, '20001105' => 0, '20001111' => 0, '20002001' => 0, '20002002' => 0,
        '20002003' => 0, '20002004' => 0, '20002005' => 0, '30001001' => 0, '30001002' => 0,
        '30001010' => 1, '30001011' => 1, '30001012' => 0, '30001015' => 1, '30001051' => 0,
        '30001054' => 0, '30001057' => 1, '30001058' => 1, '30001060' => 0, '30001090' => 0,
        '30001091' => 0, '30001092' => 0, '30001100' => 0, '30001101' => 0, '30001102' => 0,
        '30001103' => 0, '30001104' => 0, '30001105' => 0, '30001110' => 0, '30001120' => 0,
        '30001130' => 0, '30001140' => 0, '30001141' => 0, '30001142' => 0, '30001143' => 0,
        '30001144' => 0, '30001145' => 0, '30001149' => 0, '30001150' => 0, '30001151' => 0,
        '30001152' => 0, '30001153' => 0, '30001154' => 0, '30001155' => 0, '30001156' => 0,
        '30001157' => 0, '30001158' => 0, '30001159' => 0, '30001160' => 0, '30001161' => 0,
        '30001180' => 0, '30001997' => 0, '30001998' => 1, '30001999' => 1, '30002001' => 0,
        '30021001' => 0, '30022001' => 0, '30031001' => 0, '30041001' => 0, '30051001' => 0,
        '30071001' => 0, '30121001' => 0, '30131001' => 0, '30131002' => 0, '30141001' => 0,
        '30151001' => 0, '30171001' => 0, '30171002' => 0, '30191001' => 0, '30201001' => 0,
        '30301001' => 0, '30311001' => 0, '30331001' => 0, '30341001' => 0, '30341002' => 0,
        '30341003' => 0, '30341004' => 0, '30381001' => 0, '30401001' => 0, '30411001' => 0,
        '30431001' => 0, '30511001' => 0, '30521001' => 0, '30541001' => 0, '30551001' => 0,
        '30561001' => 0, '30571001' => 0, '30581001' => 0, '30591001' => 0, '30601001' => 0,
        '30611001' => 1, '30621001' => 0, '30631001' => 0, '30641001' => 0, '30681001' => 0,
        '30751001' => 0, '30761001' => 0, '30771001' => 0, '30811001' => 0, '30821001' => 0,
        '30831001' => 0, '30901001' => 0, '30911001' => 0, '30921001' => 0, '30941001' => 0,
        '30961001' => 1, '30971001' => 0, '30981001' => 0, '31011001' => 0, '31021001' => 0,
        '31031001' => 0, '31041001' => 0, '31051001' => 0, '31061001' => 0, '31071001' => 0,
        '31081001' => 0, '31091001' => 0, '31101001' => 0, '31111001' => 0, '31121001' => 0,
        '31131001' => 0, '31141001' => 0, '31151001' => 0, '31161001' => 0, '32001004' => 0,
        '39991001' => 0, '40001001' => 1, '40001002' => 1, '40001003' => 1, '40001004' => 1,
        '40001005' => 1, '40001006' => 1, '40001007' => 1, '40001008' => 1, '40001009' => 1,
        '40001010' => 1, '40001011' => 0, '40001012' => 1, '40001013' => 0, '40001016' => 0,
        '40001018' => 1, '40001019' => 1, '40001020' => 1, '40001050' => 0, '40001133' => 0,
        '40001134' => 1, '40001135' => 1, '40001136' => 1, '40001137' => 1, '40001998' => 0,
        '50001001' => 0, '50001002' => 0, '50001003' => 0, '50001004' => 0, '50001005' => 0,
        '50001006' => 0, '50001007' => 0, '50001008' => 0, '50001009' => 0, '50001010' => 0,
        '50001011' => 0, '50001012' => 0, '50001013' => 0, '50001014' => 0, '50001015' => 0,
        '50001016' => 0, '50001017' => 0, '50001018' => 0, '50001019' => 0, '50001020' => 0,
        '50001021' => 0, '50001022' => 0, '50001023' => 0, '50001024' => 0, '50001025' => 0,
        '50001026' => 0, '50001027' => 0, '50001028' => 0, '50001029' => 0, '50001030' => 0,
        '50001031' => 0, '50001032' => 0, '50001033' => 0, '50001034' => 0, '50001035' => 0,
        '50001036' => 0, '50001037' => 0, '50001038' => 0, '50001039' => 0, '50001040' => 0,
        '50001041' => 0, '50001042' => 0, '50001043' => 0, '50001044' => 0, '50001045' => 0,
        '50001046' => 0, '50001047' => 0, '50001048' => 0, '50001049' => 0, '50001050' => 0,
        '50001051' => 0, '50001052' => 0, '50001053' => 0, '50001054' => 0, '50001055' => 0,
        '50001056' => 0, '50001057' => 0, '50001058' => 0, '50001059' => 0, '50001060' => 0,
        '50001061' => 0, '50001062' => 0, '50001063' => 0, '50001064' => 0, '50001066' => 0,
        '50001067' => 0, '50001068' => 0, '50001069' => 0, '50001070' => 0, '50001071' => 0,
        '50001072' => 0, '50001073' => 0, '50001074' => 0, '50001075' => 0, '50001076' => 0,
        '50001077' => 0, '50001078' => 0, '50001079' => 0, '50001080' => 0, '50001081' => 0,
        '50001082' => 0, '50001084' => 0, '50001087' => 0, '50001090' => 0, '50001091' => 0,
        '50001092' => 0, '50001095' => 0, '50001096' => 0, '50001097' => 0, '50001111' => 0,
        '50001113' => 0, '50001114' => 0, '50001115' => 0, '50001116' => 0, '50001117' => 0,
        '50001118' => 0, '50001119' => 0, '50001120' => 0, '50001121' => 0, '50001122' => 0,
        '50001123' => 0, '50001124' => 0, '50001125' => 0, '50001126' => 0, '50001127' => 0,
        '50001128' => 0, '50001129' => 0, '50001130' => 0, '50001131' => 0, '50001132' => 0,
        '50001133' => 0, '50001134' => 0, '50001135' => 0, '50001136' => 0, '50001137' => 0,
        '50001150' => 0, '50001151' => 0, '50001152' => 0, '50001153' => 0, '50001170' => 0,
        '50001171' => 0, '50001172' => 0, '50001174' => 1, '50001175' => 0, '50001176' => 0,
        '50001177' => 0, '50001178' => 0, '50001179' => 0, '50001180' => 0, '50001181' => 0,
        '50001182' => 0, '50001183' => 0, '50001184' => 0, '60000001' => 0, '60000003' => 0,
        '60000005' => 0, '60000007' => 0, '60000008' => 0, '60000009' => 0, '60000010' => 0,
        '60000011' => 0, '60000012' => 0, '60000013' => 0, '60000014' => 0, '60000018' => 0,
        '60001001' => 0, '60001002' => 0, '60001004' => 0, '60001005' => 0, '60001006' => 0,
        '60001007' => 0, '60001008' => 0, '60001009' => 0, '60001010' => 0, '60001011' => 0,
        '60001012' => 0, '60001013' => 0, '60001014' => 0, '60001015' => 0, '60001017' => 0,
        '60001018' => 0, '60001019' => 0, '60001020' => 0, '60001021' => 0, '60001022' => 0,
        '60001023' => 0, '60001025' => 0, '60001028' => 0, '60001029' => 0, '60001030' => 0,
        '60001031' => 0, '60001032' => 0, '60001034' => 0, '60001035' => 0, '60001036' => 0,
        '60001037' => 0, '60001039' => 0, '60001040' => 0, '60001041' => 0, '60001042' => 0,
        '60001044' => 0, '60001050' => 0, '60001051' => 0, '60001052' => 0, '60001053' => 0,
        '60001054' => 0, '60001055' => 0, '60001057' => 0, '60001058' => 0, '60001059' => 0,
        '60001060' => 0, '60001061' => 0, '60001062' => 0, '60001087' => 0, '60001090' => 0,
        '60001091' => 0, '60001092' => 0, '60001093' => 0, '60001094' => 0, '60001095' => 0,
        '60001097' => 0, '60001099' => 0, '60001101' => 0, '60001102' => 0, '60001103' => 0,
        '60001104' => 0, '60001105' => 0, '60001106' => 0, '60001107' => 0, '60001108' => 0,
        '60001109' => 0, '60001110' => 0, '60001111' => 0, '60001112' => 0, '60001113' => 0,
        '60001114' => 0, '60001115' => 0, '60001116' => 0, '60001117' => 0, '60001118' => 0,
        '60001119' => 0, '60001120' => 0, '60001122' => 0, '60001125' => 0, '60001126' => 0,
        '60001127' => 0, '60001128' => 0, '60001129' => 0, '60001130' => 0, '60001131' => 0,
        '60001132' => 0, '60001134' => 0, '60001135' => 0, '60001136' => 0, '60001137' => 0,
        '60001138' => 0, '60001139' => 0, '60001140' => 0, '60001141' => 0, '60001142' => 0,
        '60001143' => 0, '60001144' => 0, '60001145' => 0, '60001146' => 0, '60001147' => 0,
        '60001148' => 0, '60001149' => 0, '60001150' => 0, '60001151' => 0, '60001153' => 0);

42;

