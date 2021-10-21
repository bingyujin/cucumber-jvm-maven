#Auto generated Octane revision tag
@BSPID23010REV0.5.0 @QandBAPIRegression
Feature: Update DDI CE API Service to enable customer to continue with DD payments in GWCE10

   @TSCID290088
  Scenario Outline: To update direct debit mandate details for a policy quote - Positive Acceptance Criteria

    Given I create a quote to validate Update DDI for policy period "<Date>" for "<LOB>"
    When I send a request to update DDI with payer, loan holder and bank details
    Then I should get update success response of my direct debit information

    Examples:
      | Date | LOB |
      | 1    | Car |

   @TSCID290089
  Scenario Outline: To validate update direct debit service with invalid session ID in request

    Given I create a quote to validate Update DDI for policy period "<Date>" for "<LOB>"
    When I send a request to update DDI with "<Invalid Session ID>"
    Then error message stating invalid session ID should be displayed with error code "600"


    Examples:
      | Date | LOB | Invalid Session ID                   |
      | 1    | Car | f1815f5a-516d-4867-af5f-bb69ae69f1e6 |

   @TSCID290090
  Scenario Outline: To validate update direct debit service for invalid DTO request

    Given I create a quote to validate Update DDI for policy period "<Date>" for "<LOB>"
    When I send a request to update DDI without payer, loan holder and bank details
    Then error message stating DTO Invalid error message should be displayed with error code "-32602"


    Examples:
      | Date | LOB |
      | 4    | Car |