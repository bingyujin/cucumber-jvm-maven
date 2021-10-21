#Auto generated Octane revision tag
@BSPID23008REV0.4.0 @QandBAPIRegression
Feature: Validate Manual Car Lookup API in Guidewire Customer Engage 10

  @TSCID303360
  Scenario: Validation of Manual Car Lookup API in Guidewire Customer Engage 10 with valid Private car and no other inputs
    Given user construct a request with "ProductCode" and with parameters "PrivateCar_Ext" "" and ""
    When  user retrieves the response  for manual car lookup
    Then  validate the manual car lookup API response against Guidewire previous version response

  @TSCID303361
  Scenario Outline: Validation of Manual Car Lookup API in Guidewire Customer Engage 10 with invalid Private car and no other inputs
    Given user construct a request with "<Request Type>" and with parameters "<Product code>" "<Manufacturer>" and "<Model>"
    When  user retrieves the response  for manual car lookup
    Then  validate the manual car lookup API response error is similar to Guidewire previous version response

    Examples:
      |  Request Type   | Product code         |Manufacturer    |  Model   |
      |  ProductCode    |InvalidPrivateCar_Ext |                |          |
      |  ProductCode    |PrivateCar_Ext1       |                |          |

  @TSCID303362
  Scenario Outline: Validation of Manual Car Lookup API in Guidewire Customer Engage 10 with valid Private car and valid Manufacturer
    Given user construct a request with "<Request Type>" and with parameters "<Product code>" "<Manufacturer>" and "<Model>"
    When  user retrieves the response  for manual car lookup
    Then  validate the manual car lookup API response against Guidewire previous version response

    Examples:
      |  Request Type                  | Product code   | Manufacturer   |  Model   |
      |  ProductCodewithManufacturer   | PrivateCar_Ext | BMW            |          |
      |  ProductCodewithManufacturer   | PrivateCar_Ext | AMC            |          |
      |  ProductCodewithManufacturer   | PrivateCar_Ext | AC             |          |

  @TSCID303363
  Scenario Outline: Validation of Manual Car Lookup API in Guidewire Customer Engage 10 with valid Private car and Invalid manufacturer
    Given user construct a request with "<Request Type>" and with parameters "<Product code>" "<Manufacturer>" and "<Model>"
    When  user retrieves the response  for manual car lookup
    Then  validate the manual car lookup API response error is similar to Guidewire previous version response

    Examples:
      |  Request Type                  | Product code    | Manufacturer   |  Model   |
      |  ProductCodewithManufacturer   | PrivateCar_Ext  | Invalid        |          |
      |  ProductCodewithManufacturer   | PrivateCar_Ext  | BMW1           |          |

  @TSCID303364
  Scenario Outline: Validation of Manual Car Lookup API in Guidewire Customer Engage 10 with Invalid Private car and valid manufacturer
    Given user construct a request with "<Request Type>" and with parameters "<Product code>" "<Manufacturer>" and "<Model>"
    When  user retrieves the response  for manual car lookup
    Then  validate the manual car lookup API response error is similar to Guidewire previous version response

    Examples:
      |  Request Type                  |Product code           | Manufacturer   |  Model   |
      |  ProductCodewithManufacturer   |InvalidPrivateCar_Ext  | ANT            |          |
      |  ProductCodewithManufacturer   |PrivateCar_Ext1        | AMC            |          |

  @TSCID303365
  Scenario Outline: Validation of Manual Car Lookup API in Guidewire Customer Engage 10 with Invalid Private car and Invalid manufacturer
    Given user construct a request with "<Request Type>" and with parameters "<Product code>" "<Manufacturer>" and "<Model>"
    When  user retrieves the response  for manual car lookup
    Then  validate the manual car lookup API response error is similar to Guidewire previous version response

    Examples:
      |  Request Type                  |Product code           | Manufacturer   |  Model   |
      |  ProductCodewithManufacturer   |InvalidPrivateCar_Ext  | Invalid        |          |
      |  ProductCodewithManufacturer   |PrivateCar_Ext1        | AMC1           |          |

  @TSCID303366
  Scenario Outline: Validation of Manual Car Lookup API in Guidewire Customer Engage 10 with valid Private car,valid manufacturer and valid model
    Given user construct a request with "<Request Type>" and with parameters "<Product code>" "<Manufacturer>" and "<Model>"
    When  user retrieves the response  for manual car lookup
    Then  validate the manual car lookup API response against Guidewire previous version response

    Examples:
      |  Request Type  |Product code  |Manufacturer|Model       |
      |  Alldata       |PrivateCar_Ext|AMC         |MATADOR AUTO|
      |  Alldata       |PrivateCar_Ext|AC          |16          |

  @TSCID303367
  Scenario Outline: Validation of Manual Car Lookup API in Guidewire Customer Engage 10 with valid Private car,Invalid manufacturer and Invalid model
    Given user construct a request with "<Request Type>" and with parameters "<Product code>" "<Manufacturer>" and "<Model>"
    When  user retrieves the response  for manual car lookup
    Then  validate the manual car lookup API response error is similar to Guidewire previous version response

    Examples:
      |  Request Type | Product code   |Manufacturer   |  Model           |
      |  Alldata      |PrivateCar_Ext  |Invalid        |  Invalid         |
      |  Alldata      |PrivateCar_Ext  |AMC_Invalid    |  MATADOR_Invalid |

  @TSCID303368
  Scenario Outline: Validation of Manual Car Lookup API in Guidewire Customer Engage 10 with Invalid Private car,valid manufacturer and valid model
    Given user construct a request with "<Request Type>" and with parameters "<Product code>" "<Manufacturer>" and "<Model>"
    When  user retrieves the response  for manual car lookup
    Then  validate the manual car lookup API response error is similar to Guidewire previous version response

    Examples:
      |  Request Type| Product code           | Manufacturer   |  Model       |
      |  Alldata     | InvalidPrivateCar_Ext  | AMC            |  MATADOR AUTO|
      |  Alldata     | PrivateCar_Ext1        | AMC            |  MATADOR AUTO|

  @TSCID303369
  Scenario Outline: Validation of Manual Car Lookup API in Guidewire Customer Engage 10 with Invalid Private car,Invalid manufacturer and Invalid model
    Given user construct a request with "<Request Type>" and with parameters "<Product code>" "<Manufacturer>" and "<Model>"
    When  user retrieves the response  for manual car lookup
    Then  validate the manual car lookup API response error is similar to Guidewire previous version response

    Examples:
      |  Request Type | Product code           | Manufacturer   |  Model           |
      |  Alldata      | InvalidPrivateCar_Ext  | Invalid        |  Invalid         |
      |  Alldata      | PrivateCar_Ext1        | AMC_Invalid    |  MATADOR_Invalid |