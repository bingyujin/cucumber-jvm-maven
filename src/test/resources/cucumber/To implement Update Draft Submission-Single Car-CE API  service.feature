#Auto generated Octane revision tag
@BSPID23009REV0.5.0 @QandBAPIRegression
Feature:
  To implement Update Draft Submission-Single Car-CE API  service

    @TSCID289078
  Scenario Outline: To validate update draft Quote API Service in GWCE10 for updating vehicle and driver details to a draft

    Given I create a draft quote with policyPeriod "<Date>" for "<LOB>" to validate update Draft Submission API
    When I send a valid request with updated vehicle and driver details for update quote API Service
    Then the response parameters of update draft submission in GWCE new version must have all the response parameters


    Examples:
      | Date | LOB |
      | 3    | Car |


    @TSCID289079
  Scenario Outline: To validate updateDraft Quote API Service in GWCE10 for error response when DTO is invalid

    Given I create a draft quote with policyPeriod "<Date>" for "<LOB>" to validate update Draft Submission API
    When I send an invalid request DTO for update draft quote API Service
    Then I should get error response from update API "-32602" with message "INVALID PARAMS"


    Examples:
      | Date | LOB |
      | 2    | Car |



    @TSCID289080
  Scenario Outline: To validate updateDraft Quote API Service in GWCE10 for error response when Session ID is invalid

    Given I create a draft quote with policyPeriod "<Date>" for "<LOB>" to validate update Draft Submission API
    When I send an update draft request with invalid sessionID
    Then I should get error response from update API "-32500" with message "ErrorCode: -32500-APPLICATION_ERROR ErrorMessage: Invalid session"


    Examples:
      | Date | LOB |
      | 1    | Car |