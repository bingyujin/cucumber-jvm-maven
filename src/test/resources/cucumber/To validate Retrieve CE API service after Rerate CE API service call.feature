#Auto generated Octane revision tag

@BSPID22007REV0.5.0 @QandBAPIRegression
Feature:
  To validate Retrieve CE API service after Rerate CE API service call

  @TSCID290072
  Scenario Outline: To validate Retrieve Quote API Service post rerate in GWCE10 for positive acceptance criteria

    Given I create a quote with driver and vehicle details with policyPeriod "<day>" for "<LOB>"
    And I send re-rate quote request with "<periodStartDate>" "<ncdGrantedProtectionInd>" "<excess>" "<coverType>""<Brand>""<BrandName>"
    When I send a retrieve quote request with valid DTO for the  re-rated quote
    Then I should get re-rated quote details in retrieve quote response
    And the other response parameters should match with the create or rerated quote response

    Examples:
      | day | LOB | periodStartDate | ncdGrantedProtectionInd | excess | coverType     | Brand | BrandName          |
      | 1   | Car | 4               | true                    | 50     | comprehensive | HE    | Hastings Essential |
      | 2   | Car | 5               | false                   | 500    | thirdParty    | HP    | Hastings Premier   |
      | 1   | Car | 2               | false                   | 200    | thirdParty    | HD    | Hastings Direct    |
      | 1   | Car | 20              | true                    | 1000   | comprehensive | HD    | Hastings Direct    |
      | 1   | Car | 8               | true                    | 0      | comprehensive | HE    | Hastings Essential |
      | 1   | Car | 5               | true                    | 500    | comprehensive | HP    | Hastings Premier   |
      | 1   | Car | 2               | false                   | 200    | thirdParty    | HD    | Hastings Direct    |



  @TSCID290073
  Scenario Outline: To validate Retrieve Quote API Service post rerate in GWCE10 for negative acceptance criteria

    Given user wants to retrieve quote with invalid Quote ID "<QuoteID>" Postal Code "<Postal Code>"
    When user sends the request in JSON format
    Then error message should be  displayed in response with error code "603"

    Examples:

      | QuoteID    | Postal Code |
      | 0000009941 | CV37 0AQ    |
      | 000000078  | CV37 0AQ    |
      | 000000078  | CV3767 0AQ  |
      | 000000078  | 0000000338  |
      | 000000440  | HR97EX      |
      | 000000440  |             |
      |            | HR97EX      |