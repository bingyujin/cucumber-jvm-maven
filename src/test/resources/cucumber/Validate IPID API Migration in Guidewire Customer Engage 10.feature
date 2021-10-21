#Auto generated Octane revision tag
@BSPID23007REV0.11.0   @QandBAPIRegression
Feature: Validate IPID API Migration in Guidewire Customer Engage 10

  @TSCID290061
  Scenario Outline: Validation of IPID API with valid Quote ID for motor quotes

    Given user create a quote for "<LOB>" for IPID
    When I retrieve the response from IPID
    Then Validate the IPID response to check if response values are similar to existing one

    Examples:
      |      LOB     |
      |     Car      |




  @TSCID290062
  Scenario Outline: Validation of IPID API with in-valid Quote ID and valid session ID for motor quotes

    Given I send a in-valid quote for "<LOB>" for IPID
    When I retrieve the response from IPID
    Then Validate if IPID response generates error-code "701"



    Examples:
      |      LOB     |
      |     Car      |