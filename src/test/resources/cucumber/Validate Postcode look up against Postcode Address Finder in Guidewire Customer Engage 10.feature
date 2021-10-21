#Auto generated Octane revision tag
@BSPID23004REV0.11.0  @QandBAPIRegression
Feature: Validate Postcode look up against Postcode Address Finder in Guidewire Customer Engage 10

  @TSCID289055
  Scenario Outline: Validation of valid Postcode look up

    Given I enter a valid Postcode "<Postcode>" in Postcode Address Finder
    When i retrieve the response received
    Then Validate the response to check if response values are similar to existing Postcode response


    Examples:
      |  Postcode           |
      |     TN394NF         |
      |     TN393PS         |
      |     TN401EH         |
      |     TN402EH         |


  @TSCID289056
  Scenario Outline: Validation of in-valid Postcode look up

    Given I enter a in-valid Postcode "<Postcode>" in Postcode Address Finder
    When i retrieve the response received
    Then Validate if response contains error code 603 in the response received



    Examples:
      |  Postcode           |
      |     HR97E           |

  @TSCID289057
  Scenario Outline: Validation of blank Postcode look up

    Given I enter a blank Postcode "<Postcode>" in Postcode Address Finder
    When i retrieve the response received
    Then Validate if response contains error code 601 in the response received



    Examples:
      |  Postcode           |
      |                     |