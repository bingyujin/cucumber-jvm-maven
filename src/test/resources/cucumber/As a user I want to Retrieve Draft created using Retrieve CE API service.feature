#Auto generated Octane revision tag
@BSPID23001REV0.4.0 @QandBAPIRegression
Feature:
  As a user I want to Retrieve Draft created using Retrieve CE API service

  @TSCID290046
  Scenario Outline: To validate if retrieve draft API retrieves quote details for valid inputs


    Given I create a draft with policy period "<Date>" for "<LOB>" to validate retrieve draft
    When I send the retrieve draft request to retrieve quote API
    Then I should be presented the draft quote details that was requested


    Examples:
      | Date | LOB |
      | 6    | Car |


  @TSCID290047
  Scenario Outline: To validate if error handling is implemented by retrieve quote API

    Given I want to retrieve quote with invalid Quote ID "<QuoteID>" Postal Code "<Postal Code>"
    When I send the request to retrieve quote API
    Then I should be presented appropriate error "603" for Retrieve Draft or quote API


    Examples:

      | QuoteID    | Postal Code |
      | 0000009941 | CV37 0AQ    |
      | 000000078  | CV3767 0AQ  |
      | 000000078  | 0000000338  |
      | 000000440  | HR97EX      |
      | 000000440  |             |
      |            | HR97EX      |