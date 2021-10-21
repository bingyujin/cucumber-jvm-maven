#Auto generated Octane revision tag
@BSPID22005REV0.10.0 @QandBAPIRegression

Feature: Validate Bank Account validation API in Guidewire Customer Engage 10 for motor quotes

  @TSCID290064
  Scenario Outline: Assertion of the Bank Account validation API  with a valid account number and sortcode for motor quotes for Customer Engage 7 and 10
    Given user create a quote for "<LOB>" for Bank Account validation
    And  send the request with  account number as "<Account number>" and sort code as "<Sort code>"
    When I retrieve the response from Bank Account
    Then Validate the Bank Account response to check if response values are similar to existing one



    Examples:
      |  Account number     |  Sort code  |   LOB     |
      | 70872490            |  40-47-84   |  Car      |
      | 70872491            |   40-47-84  |  Car      |
      | 13537846            |   20-51-32  |  Car      |





  @TSCID290065
  Scenario Outline: Assertion of the Bank Account validation API  with a valid account number and in-valid sortcode for motor quotes for Customer Engage 7 and 10
    Given user create a quote for "<LOB>" for Bank Account validation
    And  send the request with  account number as "<Account number>" and sort code as "<Sort code>"
    When I retrieve the response from Bank Account
    Then Validate the Bank Account response to check if response values are similar to existing one



    Examples:
      |  Account number     |  Sort code  |   LOB     |
      | 70872490            |  40-47-8   |  Car      |
      | 70872491            |   40-47-8  |  Car      |
      | 13537846            |   20-51-31  |  Car      |



  @TSCID290066
  Scenario Outline: Assertion of the Bank Account validation API  with a in-valid account number and valid sortcode for motor quotes for Customer Engage 7 and 10
    Given user create a quote for "<LOB>" for Bank Account validation
    And  send the request with  account number as "<Account number>" and sort code as "<Sort code>"
    When I retrieve the response from Bank Account
    Then Validate the Bank Account response to check if response values are similar to existing one



    Examples:
      |  Account number     |  Sort code  |   LOB     |
      | 40872490            |  40-47-85   |  Car      |
      | 60872491            |   40-47-82  |  Car      |
      | 73537846            |   20-51-30  |  Car      |