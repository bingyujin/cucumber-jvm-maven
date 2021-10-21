#Auto generated Octane revision tag
@TID271033REV0.1.0 @QandBAPIRegression

Feature: Validate manual Bike lookup API in Guidewire Customer Engage 10


  @228105_ValidProductCode @QandBAPIRegression
  Scenario Outline: Validation of manual Bike lookup API in Guidewire Customer Engage 10 with valid Bike
    Given user constructs request  with "<Request Type>" and with parameters "<Product code>" "<Manufacturer>" and "<Model>"
    When  user retrieves the response  for manual bike lookup
    Then  validate the manual Bike lookup API response against Guidewire previous version response


  @Regression

    Examples:
      |  Request Type   | Product code   |Manufacturer|  Model   |
      |  ProductCode    |MotorCycle_Ext |            |          |

    Examples:
      |  Request Type   | Product code   |Manufacturer|  Model   |
      |  ProductCode    |MotorCycle_Ext |            |          |

  @228105_InvalidProductCode @QandBAPIRegression
  Scenario Outline: Validation of manual Bike lookup API in Guidewire Customer Engage 10 with In-valid Product code
    Given user constructs request  with "<Request Type>" and with parameters "<Product code>" "<Manufacturer>" and "<Model>"
    When  user retrieves the response  for manual bike lookup
    Then  validate the manual Bike lookup API response error is similar to Guidewire previous version response


    @Regression
    Examples:
      |  Request Type   | Product code   |Manufacturer|  Model   |
      |  ProductCode    |MotorCyclu_Ixt  |            |          |


    Examples:
      |  Request Type   | Product code   |Manufacturer|  Model   |
      |  ProductCode    |MotorCyclu_Ixt  |            |          |


  @228105_ValidProductCodeManufacturer @QandBAPIRegression
  Scenario Outline: Validation of manual Bike lookup API in Guidewire Customer Engage 10 with valid Product code and Manufacturer
    Given user constructs request  with "<Request Type>" and with parameters "<Product code>" "<Manufacturer>" and "<Model>"
    When  user retrieves the response  for manual bike lookup
    Then  validate the manual Bike lookup API response against Guidewire previous version response


    @Regression
    Examples:
      |  Request Type                  | Product code   |Manufacturer   |  Model   |
      |  ProductCodewithManufacturer   |MotorCycle_Ext  | APRILIA       |          |


    Examples:
      |  Request Type                  | Product code   |Manufacturer   |  Model   |
      |  ProductCodewithManufacturer   |MotorCycle_Ext  | APRILIA       |          |
      |  ProductCodewithManufacturer   |MotorCycle_Ext  | BENELLI       |          |
      |  ProductCodewithManufacturer   |MotorCycle_Ext  | BOSUER        |          |
      |  ProductCodewithManufacturer   |MotorCycle_Ext  | ZING          |          |


  @228105_ValidProductCodeInvalidManufacturer @QandBAPIRegression
  Scenario Outline: Validation of manual Bike lookup API in Guidewire Customer Engage 10 with valid Product code and in-valid Manufacturer
    Given user constructs request  with "<Request Type>" and with parameters "<Product code>" "<Manufacturer>" and "<Model>"
    When  user retrieves the response  for manual bike lookup
    Then  validate the manual Bike lookup API response error is similar to Guidewire previous version response

    @Regression
    Examples:
      |  Request Type                   | Product code   |Manufacturer   |  Model   |
      |  ProductCodewithManufacturer    |MotorCycle_Ext  | APBNYIA       |          |

    Examples:
      |  Request Type                   | Product code   |Manufacturer   |  Model   |
      |  ProductCodewithManufacturer    |MotorCycle_Ext  | APBNYIA       |          |



  


  @228105_In_validProductCode_In_ValidManufacturer @QandBAPIRegression
  Scenario Outline: Validation of manual Bike lookup API in Guidewire Customer Engage 10 with Invalid Product code and In-valid manufacturer
    Given user constructs request  with "<Request Type>" and with parameters "<Product code>" "<Manufacturer>" and "<Model>"
    When  user retrieves the response  for manual bike lookup
    Then  validate the manual Bike lookup API response error is similar to Guidewire previous version response

    @Regression
    Examples:
      |  Request Type                   | Product code   |Manufacturer   |  Model   |
      |  ProductCodewithManufacturer    |MotorCycle_Ixt  | APBNYIA       |          |


    Examples:
      |  Request Type                   | Product code   |Manufacturer   |  Model   |
      |  ProductCodewithManufacturer    |MotorCycle_Ixt  | APBNYIA       |          |


  @228105_ValidProductCodeManufacturer_Model @QandBAPIRegression
  Scenario Outline: Validation of manual vehicle lookup API in Guidewire Customer Engage 10 with Valid Product Code,Manufacturer and Model
    Given user constructs request  with "<Request Type>" and with parameters "<Product code>" "<Manufacturer>" and "<Model>"
    When  user retrieves the response  for manual bike lookup
    Then  validate the manual Bike lookup API response against Guidewire previous version response

  @Regression
    Examples:
      |  Request Type   | Product code   |Manufacturer   |  Model          |
      |  Alldata        |MotorCycle_Ext  | ZING           |  ECHO      |

    Examples:
      |  Request Type   | Product code   |Manufacturer   |  Model          |
      |  Alldata        |MotorCycle_Ext  | APRILIA       |  125 RALLY      |
      |  Alldata        |MotorCycle_Ext  | BENELLI       |  250 ROADSTER   |
      |  Alldata        |MotorCycle_Ext  | ZING          |  ECHO           |
      |  Alldata        |MotorCycle_Ext  | BOSUER        |  BSR 125        |

  @228105_ValidProductCodeIn_validManufacturer_Model @QandBAPIRegression
  Scenario Outline: Validation of manual Bike lookup API in Guidewire Customer Engage 10 with valid Product code,Invalid manufacturer and Invalid model
    Given user constructs request  with "<Request Type>" and with parameters "<Product code>" "<Manufacturer>" and "<Model>"
    When  user retrieves the response  for manual bike lookup
    Then  validate the manual Bike lookup API response error is similar to Guidewire previous version response

  @Regression
    Examples:
      |  Request Type                   | Product code   |Manufacturer   |  Model          |
      |  Alldata                        |MotorCycle_Ext  | BIPBNYIA       |   195 RALLY      |

    Examples:
      |  Request Type                   | Product code   |Manufacturer   |  Model          |
      |  Alldata                        |MotorCycle_Ext  | BIPBNYIA       |   195 RALLY      |

  @228105_In_validProductCodeValidManufacturer_Model @QandBAPIRegression
  Scenario Outline: Validation of manual Bike lookup API in Guidewire Customer Engage 10 with Invalid Product code,valid manufacturer and valid model
    Given user constructs request  with "<Request Type>" and with parameters "<Product code>" "<Manufacturer>" and "<Model>"
    When  user retrieves the response  for manual bike lookup
    Then  validate the manual Bike lookup API response error is similar to Guidewire previous version response

    @Regression
    Examples:
      |  Request Type                   | Product code   |Manufacturer   |  Model           |
      |  Alldata                        |MotorCycle_Ixt  | APRILIA       |  125 RALLY        |



    Examples:
      |  Request Type                   | Product code   |Manufacturer   |  Model           |
      |  Alldata                        |MotorCycle_Ixt  | APRILIA       |  125 RALLY        |

  @224353_InvalidProductCode_InvalidManufacturerAndModel @QandBAPIRegression
  Scenario Outline: Validation of manual Bike lookup API in Guidewire Customer Engage 10 with Invalid Product Code,Invalid manufacturer and Invalid model
    Given user constructs request  with "<Request Type>" and with parameters "<Product code>" "<Manufacturer>" and "<Model>"
    When  user retrieves the response  for manual bike lookup
    Then  validate the manual Bike lookup API response error is similar to Guidewire previous version response

    @Regression
    Examples:
      |  Request Type                   | Product code   |Manufacturer   |  Model   |
      |  Alldata                        |MotorCycle_Ixt  | APBNYIA       |          |



    Examples:
      |  Request Type                   | Product code   |Manufacturer   |  Model   |
      |  Alldata                        |MotorCycle_Ixt  | APBNYIA       |          |