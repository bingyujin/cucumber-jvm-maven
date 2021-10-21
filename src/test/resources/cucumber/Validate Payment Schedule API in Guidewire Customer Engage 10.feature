#Auto generated Octane revision tag
@BSPID22003REV0.12.0  @QandBAPIRegression
Feature: Validate Payment Schedule API in Guidewire Customer Engage 10


  @TSCID289061
  Scenario Outline: Validation of Payment Schedule lookup API for motor quotes in Guidewire Customer Engage 10 with valid inputs

    Given user create a quote for "<LOB>"
    And  send the request with  valid Quote  and valid Preferred payment day as "<Preferred payment day>"
    When  user retrieves the Payment Schedule responses
    Then  validate the Payment Schedule API response against Guidewire previous version response


    Examples:
      |  LOB    |  Preferred payment day|
      |  Car    |       15              |
      |  Car    |       10              |
      |  Car    |       2               |

  @TSCID289062
  Scenario Outline: Validation of Payment Schedule lookup API for motor quotes in Guidewire Customer Engage 10 with valid quote number and  payment day In-valid

    Given user create a quote for "<LOB>"
    And  send the request with  valid Quote  and in-valid Preferred payment day as "<Preferred payment day>"
    When  user retrieves the Payment Schedule responses
    Then  validate the Payment Schedule API response error received is 601



    Examples:
      |  LOB    |  Preferred payment day|
      |  Car    |       33              |


  @TSCID289063
  Scenario Outline: Validation of Payment Schedule lookup API for motor quotes in Guidewire Customer Engage 10 with valid quote number and  payment date valid with invalid session ID

    Given user create a quote for "<LOB>"
    And  send the request with  valid Quote  and valid Preferred payment day as "<Preferred payment day>" and in-valid sessionID
    When  user retrieves the Payment Schedule responses
    Then  validate the Payment Schedule API response error received is 600



    Examples:
      |  LOB    |  Preferred payment day|
      |  Car    |       2               |