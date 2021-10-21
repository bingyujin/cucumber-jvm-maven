#Auto generated Octane revision tag
@BSPID22002REV0.16.0  @QandBAPIRegression

Feature: Validate Create and Draft Car API for Customer Quote Guidewire 10

  @TSCID290109
  Scenario: Validation of Create Car API with campaign code/Tracking  code

    Given I send a Create Car request with tracking code
    When I retrieve the Create Car response
    Then I validate the response to check if values are similar to the values in request
    And quote number,account ID and Producer code are generated


  @TSCID290110
  Scenario: Validation of Create Car API for invalid parameters

    Given I send a Create Car request without campaign code with invalid parameter
    When I retrieve the Create Car response
    Then Validate if error message "INVALID_PARAMS" is received


  #Request-4
  @TSCID290111
  Scenario: Validation of Create Car API with Producer code new account

    Given I send a Create Car request containing Producer code and account number
    When I retrieve the Create Car response
    Then I validate the response to check if values are similar to the values in request
    And quote number,account ID and Producer code are generated


  #Request-3
  @TSCID290112
  Scenario: Validation of Create Car API with Producer code Old Account

    Given I send a Create Car request containing producer code
    When I retrieve the Create Car response
    Then I validate the response to check if values are similar to the values in request
    And quote number,account ID and Producer code are generated


  #Request-1
  @TSCID290113
  Scenario: Validation of Create Car API without campaign code New Account


    Given I send a Create Car request without campaign code
    When I retrieve the Create Car response
    Then I validate the response to check if values are similar to the values in request
    And quote number,account ID and Producer code are generated