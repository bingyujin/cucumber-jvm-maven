#Auto generated Octane revision tag
@BSPID22001REV0.6.0 @QandBAPIRegression

Feature:
  To validate Quote CE API service


  @TSCID290043
  Scenario Outline: To validate Create Quote API Service in GWCE10 is able to generate a quote

    Given I create a draft quote with driver and vehicle details with policyPeriod "<Date>" for "<LOB>"
    When I send a valid request DTO for create quote API Service
    Then the response parameters on GWCE new version must have all the response parameters as in older version

    Examples:

      | Date | LOB |
      | 2    | Car |


  @TSCID290044
  Scenario Outline: To validate Create Quote API Service in GWCE10 is not able to generate a quote with invalid details

    Given I create a draft quote without driver and vehicle details with policyPeriod "<Date>" for "<LOB>"
    Then error message should be  displayed to the user with error code "-32602"
    When I send an invalid request DTO or invalid sessionUUID for create quote API Service
    Then error message should be  displayed to the user with error code "-32602"


    Examples:

      | Date | LOB |
      | 2    | Car |