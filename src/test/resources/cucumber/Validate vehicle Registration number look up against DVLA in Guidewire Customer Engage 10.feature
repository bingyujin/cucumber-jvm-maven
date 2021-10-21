#Auto generated Octane revision tag
@BSPID23003REV0.11.0  @QandBAPIRegression
Feature: Validate vehicle Registration number look up against DVLA in Guidewire Customer Engage 10

  @TSCID289052
  Scenario Outline: Validation of valid vehicle Registration number look up

    Given I have sent a "<Input type>" Registration number with "<Registration number>" through DVLA vehicle lookup service
    When I retrieve the DVLA Car response
    Then Validate the response to check if response values are similar to existing one


    Examples:
      |Input type  |    Registration number |
      | Valid      |     AV12BGE           |
      | Valid      |      PJ60JFY          |
      | Valid      |     YT11ZVV           |
      | Valid      |      KN04UFK          |


  @TSCID289053
  Scenario Outline: Validation of in-valid vehicle Registration number look up

    Given I have sent a "<Input type>" Registration number with "<Registration number>" through DVLA vehicle lookup service
    When I retrieve the DVLA Car response
    Then Validate if response contains error code "608"


    Examples:
      |Input type     |    Registration number |
      | In-valid      |     AV12BG3           |
      | In-valid      |      FS6TA4           |

  @TSCID289054
  Scenario Outline: Validation of blank vehicle registration number look up

    Given I have sent a "<Input type>" Registration number with "<Registration number>" through DVLA vehicle lookup service
    When I retrieve the DVLA Car response
    Then Validate if response contains error code "601"



    Examples:
      |Input type  |    Registration number |
      | Blank      |                       |