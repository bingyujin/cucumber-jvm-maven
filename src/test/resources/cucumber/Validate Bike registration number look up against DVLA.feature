#Auto generated Octane revision tag
@TID267035REV0.1.0 @QandBAPIRegression

Feature: Validate Bike registration number look up against DVLA

  @20.3 @20.4 @253037_Valid @QandBAPIRegression
  Scenario Outline: Validation of valid bike registration number look up

    Given I have sent a "<Input type>" bike Registration number as "<registrationnumber>" through DVLA bike lookup service
    When I retreive the response for bike registration number
    Then Validate the bike registration number response to check if response values are similar to existing one

    @Regression
    Examples:
      |Input type  |  registrationnumber  |
      | Valid      |     HX05KVS          |

    Examples:
      |Input type  |    registrationnumber |
      | Valid      |     W918URD           |
      | Valid      |      YA13BKU           |
      | Valid      |     WX61EUM           |
      | Valid      |      LJ54HPC          |


  @20.3 @20.4 @253037_Invalid @QandBAPIRegression
  Scenario Outline: Validation of in-valid bike registration number look up

    Given I have sent a "<Input type>" bike Registration number as "<registrationnumber>" through DVLA bike lookup service
    When I retreive the response for bike registration number
    Then Validate if bike registration number  response contains error message "INVALID_PARAMS"

    @Regression
    Examples:
      |Input type     |  registrationnumber  |
      | In-valid      |     AV12BG2          |

    Examples:
      |Input type     |    registrationnumber |
      | In-valid      |     AV12BG3           |
      | In-valid      |      FS6TA4           |

  @20.3 @20.4 @253037_Blank @QandBAPIRegression
  Scenario Outline: Validation of blank bike registration number look up

    Given I have sent a "<Input type>" bike Registration number as "<registrationnumber>" through DVLA bike lookup service
    When I retreive the response for bike registration number
    Then Validate if bike registration number  response contains error code "601"

    @Regression
    Examples:
      |Input type  |  registrationnumber  |
      | Blank      |                      |

    Examples:
      |Input type  |    registrationnumber |
      | Blank      |                       |