#Auto generated Octane revision tag
@BSPID23011REV0.7.0 @QandBAPIRegression
Feature: Validate manual van lookup API in Guidewire Customer Engage 10


  @TSCID301450
  Scenario: Validation of Manual Van Lookup API in Guidewire Customer Engage 10 with valid Commercial Van and no other inputs
    Given user constructs a request with "ProductCode" and with parameters "CommercialVan_Ext" "" and ""
    When  user retrieves the response  for manual van lookup
    Then  validate the manual van lookup API response against Guidewire previous version response

  @TSCID301451
  Scenario Outline: Validation of Manual Van Lookup API in Guidewire Customer Engage 10 with invalid Commercial Van and no other inputs
    Given user constructs a request with "<Request Type>" and with parameters "<Product code>" "<Manufacturer>" and "<Model>"
    When  user retrieves the response  for manual van lookup
    Then  validate the manual van lookup API response error is similar to Guidewire previous version response

    Examples:
      |  Request Type   | Product code            |Manufacturer     |  Model   |
      |  ProductCode    | InvalidCommercialVan_Ext|                 |          |
      |  ProductCode    | CommercialVan1          |                 |          |

  @TSCID301452
  Scenario Outline: Validation of Manual Van Lookup API in Guidewire Customer Engage 10 with valid Commercial Van and valid Manufacturer
    Given user constructs a request with "<Request Type>" and with parameters "<Product code>" "<Manufacturer>" and "<Model>"
    When  user retrieves the response  for manual van lookup
    Then  validate the manual van lookup API response against Guidewire previous version response

    Examples:
      |  Request Type                  |Product code       | Manufacturer  |  Model   |
      |  ProductCodewithManufacturer   |CommercialVan_Ext  | AIXAM         |          |
      |  ProductCodewithManufacturer   |CommercialVan_Ext  | ASIA          |          |
      |  ProductCodewithManufacturer   |CommercialVan_Ext  | AUSTIN        |          |

  @TSCID301453
  Scenario Outline: Validation of Manual Van Lookup API in Guidewire Customer Engage 10 with valid Commercial Van and Invalid manufacturer
    Given user constructs a request with "<Request Type>" and with parameters "<Product code>" "<Manufacturer>" and "<Model>"
    When  user retrieves the response  for manual van lookup
    Then  validate the manual van lookup API response error is similar to Guidewire previous version response

    Examples:
      |  Request Type                  |Product code       | Manufacturer   |  Model   |
      |  ProductCodewithManufacturer   |CommercialVan_Ext  | Invalid        |          |
      |  ProductCodewithManufacturer   |CommercialVan_Ext  | BMW            |          |

  @TSCID301454
  Scenario Outline: Validation of Manual Van Lookup API in Guidewire Customer Engage 10 with Invalid Commercial Van and valid manufacturer
    Given user constructs a request with "<Request Type>" and with parameters "<Product code>" "<Manufacturer>" and "<Model>"
    When  user retrieves the response  for manual van lookup
    Then  validate the manual van lookup API response error is similar to Guidewire previous version response

    Examples:
      |  Request Type                  | Product code             |Manufacturer   |  Model   |
      |  ProductCodewithManufacturer   |InvalidCommercialVan_Ext  | AUSTIN        |          |
      |  ProductCodewithManufacturer   |CommercialVan_Ext1        | AUSTIN        |          |


  @TSCID301455
  Scenario Outline: Validation of Manual Van Lookup API in Guidewire Customer Engage 10 with Invalid Commercial Van and Invalid manufacturer
    Given user constructs a request with "<Request Type>" and with parameters "<Product code>" "<Manufacturer>" and "<Model>"
    When  user retrieves the response  for manual van lookup
    Then  validate the manual van lookup API response error is similar to Guidewire previous version response
    Examples:
      |  Request Type                  |Product code              |Manufacturer   |  Model   |
      |  ProductCodewithManufacturer   |InvalidCommercialVan_Ext  | Invalid       |          |
      |  ProductCodewithManufacturer   |CommercialVan_Ext1        | AUSTIN1       |          |

  @TSCID301456
  Scenario Outline: Validation of Manual Van Lookup API in Guidewire Customer Engage 10 with valid Commercial Van,valid manufacturer and valid model
    Given user constructs a request with "<Request Type>" and with parameters "<Product code>" "<Manufacturer>" and "<Model>"
    When  user retrieves the response  for manual van lookup
    Then  validate the manual van lookup API response against Guidewire previous version response

    Examples:
      |  Request Type  |Product code        |Manufacturer|Model                |
      |  Alldata       |CommercialVan_Ext   |AUSTIN      |METRO 310 CITY       |
      |  Alldata       |CommercialVan_Ext   |JEEP        |CARCHEROKEE PIONEERRY|
      |  Alldata       |CommercialVan_Ext   |AUSTIN      |METRO 310 L          |

  @TSCID301457
  Scenario Outline: Validation of Manual Van Lookup API in Guidewire Customer Engage 10 with valid Commercial Van,Invalid manufacturer and Invalid model
    Given user constructs a request with "<Request Type>" and with parameters "<Product code>" "<Manufacturer>" and "<Model>"
    When  user retrieves the response  for manual van lookup
    Then  validate the manual van lookup API response error is similar to Guidewire previous version response

    Examples:
      |  Request Type | Product code      |Manufacturer   |  Model                 |
      |  Alldata      |CommercialVan_Ext  | SUZUKI1       |    METRO 310 CITY 1.31 |
      |  Alldata      |CommercialVan_Ext  | AUSTIN1       |    METRO 310 CITY 1.31 |


  @TSCID301458
  Scenario Outline: Validation of Manual Van Lookup API in Guidewire Customer Engage 10 with Invalid Commercial Van,valid manufacturer and valid model
    Given user constructs a request with "<Request Type>" and with parameters "<Product code>" "<Manufacturer>" and "<Model>"
    When  user retrieves the response  for manual van lookup
    Then  validate the manual van lookup API response error is similar to Guidewire previous version response

    Examples:
      |  Request Type |Product code              | Manufacturer  |  Model               |
      |  Alldata      |InvalidCommercialVan_Ext  | AUSTIN        |  METRO 310 CITY 1.3  |
      |  Alldata      |CommercialVan_Ext1        | SUZUKI        |  CARRY               |

  @TSCID301459
  Scenario Outline: Validation of Manual Van Lookup API in Guidewire Customer Engage 10 with Invalid Commercial Van,Invalid manufacturer and Invalid model
    Given user constructs a request with "<Request Type>" and with parameters "<Product code>" "<Manufacturer>" and "<Model>"
    When  user retrieves the response  for manual van lookup
    Then  validate the manual van lookup API response error is similar to Guidewire previous version response

    Examples:
      |  Request Type | Product code              | Manufacturer   |    Model        |
      |  Alldata      | InvalidCommercialVan_Ext  | Invalid        |    Invalid      |
      |  Alldata      | CommercialVan_Ext1        | Invalid        |    Invalid      |