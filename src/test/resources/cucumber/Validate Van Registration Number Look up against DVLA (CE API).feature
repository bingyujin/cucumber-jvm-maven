#Auto generated Octane revision tag
@BSPID22009REV0.2.0 @QandBAPIRegression

Feature: Validate Van Registration Number Look up against DVLA (CE API)

    @TSCID290091
  Scenario Outline: Validation of valid Van registration number look up

    Given I have sent a "<Input type>" Van registration number as "<registrationnumber>" through DVLA Van lookup service
    When I retrieve the response for Van registration number
    Then Validate the Van registration number response to check if response values are similar to existing one


    Examples:
      |Input type  |  registrationnumber  |
      | Valid      |     YD61GVZ          |
      | Valid      |     VN61XVE          |
      | Valid      |      BF62XPR           |
      | Valid      |     YS14VDD          |
      | Valid      |      PF54JKX          |


    @TSCID290092
  Scenario Outline: Validation of in-valid Van registration number look up

    Given I have sent a "<Input type>" Van registration number as "<registrationnumber>" through DVLA Van lookup service
    When I retrieve the response for Van registration number
    Then Validate if Van registration number  response contains error message "INVALID_PARAMS"


    Examples:
      |Input type     |  registrationnumber  |
      | In-valid      |     AV12BG2          |
      | In-valid      |     AV12BG3           |
      | In-valid      |      PF54JK8          |


    @TSCID290093
  Scenario Outline: Validation of blank Van registration number look up

    Given I have sent a "<Input type>" Van registration number as "<registrationnumber>" through DVLA Van lookup service
    When I retrieve the response for Van registration number
    Then Validate if Van registration number  response contains error code "601"

    Examples:
      |Input type  |  registrationnumber  |
      | Blank      |                      |