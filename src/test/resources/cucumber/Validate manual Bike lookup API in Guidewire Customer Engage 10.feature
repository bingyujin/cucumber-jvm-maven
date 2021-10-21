#Auto generated Octane revision tag
@TID271033REV0.1.0 @QandBAPIRegression

Feature: Validate manual Bike lookup API in Guidewire Customer Engage 10



  @228105_InvalidProductCode @QandBAPIRegression
  Scenario Outline: Validation of manual Bike lookup API in Guidewire Customer Engage 10 with In-valid Product code and Valid manufacturer
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




  @228105_In_validProductCodeValidManufacturer @QandBAPIRegression
  Scenario Outline: Validation of manual Bike lookup API in Guidewire Customer Engage 10 with In-valid Product code
    Given user constructs request  with "<Request Type>" and with parameters "<Product code>" "<Manufacturer>" and "<Model>"
    When  user retrieves the response  for manual bike lookup
    Then  validate the manual Bike lookup API response error is similar to Guidewire previous version response


    @Regression
    Examples:
      |  Request Type                   | Product code   |Manufacturer   |  Model   |
      |  ProductCodewithManufacturer    |MotorCycle_Ixt  | APRILIA       |          |


    Examples:
      |  Request Type                   | Product code   |Manufacturer   |  Model   |
      |  ProductCodewithManufacturer    |MotorCycle_Ixt  | APRILIA       |          |



