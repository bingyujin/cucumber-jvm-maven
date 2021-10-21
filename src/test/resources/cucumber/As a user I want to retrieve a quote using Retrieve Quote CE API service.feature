#Auto generated Octane revision tag
@BSPID23002REV0.4.0 @QandBAPIRegression

Feature:
  As a user I want to retrieve a quote using Retrieve Quote CE API service

  @TSCID289050
  Scenario Outline: To validate if retrieve quote API retrieves quote details for valid inputs

    Given I create a draft with policy period "<Date>" for "<LOB>" to validate retrieve quote
    And I create a quote through Create Quote API
    When I send the request to retrieve quote API
    Then I should be presented the quote details that was requested


    Examples:
      | Date | LOB |
      | 2    | Car |

  @TSCID289051
  Scenario Outline: To validate if error handling is implemented by retrieve quote API

    Given I want to retrieve quote with invalid Quote ID "<QuoteID>" Postal Code "<Postal Code>"
    When I send the request to retrieve quote API
    Then I should be presented appropriate error "603" for Retrieve Draft or quote API

    Examples:

      | QuoteID    | Postal Code |
      | 0000009941 | CV37 0AQ    |
      | 000000078  | CV37 0AQ    |
      | 000000078  | CV3767 0AQ  |
      | 000000078  | 0000000338  |
      | 000000440  | HR97EX      |
      | 000000440  |             |
      |            | HR97EX      |