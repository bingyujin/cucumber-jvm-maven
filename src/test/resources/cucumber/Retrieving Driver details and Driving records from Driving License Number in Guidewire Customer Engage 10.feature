#Auto generated Octane revision tag
@BSPID23005REV0.9.0   @QandBAPIRegression
Feature: Retrieving Driver details and Driving records from Driving License Number in Guidewire Customer Engage 10

  @TSCID289058
  Scenario Outline: Validation on Retrieving Driver details and Driving records from Valid DLN

    Given I enter a Driving License Number "<DLN>" for the request
    When I retrieve the response for driver details
    Then Validate the response to check  Driver  and Driving records are matching with existing response


    Examples:
      |  DLN              |
      | COOKS511250JH9HJ  |
      | RNEWQ801019DR9AB  |
      | IGAIN901019DR9AB  |
      | LZL99907303HG9JX  |

  @TSCID289059
  Scenario Outline: Validation on Error Code when Invalid DLN is given

    Given I enter a Driving License Number "<DLN>" for the request
    When I retrieve the response for driver details
    Then Validate if response contains error code 608


    Examples:
      |  DLN              |
      | COOKS511250JH9H2  |

  @TSCID289060
  Scenario Outline: Validation of blank DLN look up

    Given I enter a Driving License Number "<DLN>" for the request
    When I retrieve the response for driver details
    Then Validate if response contains error code 601


    Examples:
      |  DLN    |
      |         |