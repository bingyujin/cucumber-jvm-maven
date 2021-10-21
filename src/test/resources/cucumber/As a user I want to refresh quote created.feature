#Auto generated Octane revision tag
@BSPID23012REV0.5.0 @QandBAPIRegression
Feature:
  As a user I want to refresh quote created

  @TSCID304309
  Scenario Outline: Validate Refresh Quote API for valid inputs by adding ancillaries

    Given user created quote  for "<LOB>"
    And user sends refresh quote request with created quote details for "<brand>"
    When user sends refresh quote request by adding ancillary coverages "<breakDown>" "<motorLegalexpense>" "<motorPersonalAccident>" "<excessProtector>" "<substituteVehicle>""<brand>"
    Then validate that quote is refreshed

    Examples:
      | LOB | breakDown | motorLegalexpense | motorPersonalAccident | excessProtector | substituteVehicle | brand |
      | Car | true      | true              | true                  | true            | true              | HP    |

  @TSCID304310
  Scenario Outline: Validate Refresh Quote API for valid inputs by removing ancillaries

    Given user created quote  for "<LOB>"
    And user sends refresh quote request by adding ancillary coverages for "<brand>"
    When user sends refresh quote request by removing ancillary coverages "<breakDown>" "<motorLegalexpense>" "<motorPersonalAccident>" "<excessProtector>" "<substituteVehicle>""<brand>"
    Then validate that quote is refreshed for ancillaries

    Examples:
      | LOB | breakDown | motorLegalexpense | motorPersonalAccident | excessProtector | substituteVehicle | brand |
      | Car | false     | false             | false                 | false           | false             | HD    |
      | Car | true      | false             | false                 | false           | false             | HD    |
      | Car | false     | true              | false                 | false           | false             | HD    |
      | Car | false     | false             | true                  | false           | false             | HE    |
      | Car | false     | false             | false                 | true            | false             | HE    |
      | Car | false     | false             | false                 | false           | true              | HE    |
      | Car | true      | true              | false                 | false           | false             | HE    |
      | Car | true      | true              | true                  | false           | false             | HP    |
      | Car | true      | true              | true                  | true            | false             | HP    |
      | Car | false     | false             | true                  | true            | false             | HE    |
      | Car | false     | false             | true                  | true            | true              | HE    |

  @TSCID304311
  Scenario Outline: Validate Refresh Quote API for invalid session

    Given user created quote  for "<LOB>"
    When user sends refresh quote request by adding ancillary coverages "<breakDown>" "<motorLegalexpense>" "<motorPersonalAccident>" "<excessProtector>" "<substituteVehicle>""<brand>" with invalid session
    Then user should be presented 600 error code for invalid session

    Examples:
      | LOB | breakDown | motorLegalexpense | motorPersonalAccident | excessProtector | substituteVehicle | brand |
      | Car | true      | true              | false                 | false           | false             | HD    |
      | Car | true      | false             | true                  | true            | false             | HE    |
      | Car | true      | false             | true                  | true            | true              | HP    |


  @TSCID304312
  Scenario Outline: Validate Refresh Quote API for invalid inputs

    Given user created quote  for "<LOB>"
    When user sends refresh quote request by adding ancillary coverages "<breakDown>" "<motorLegalexpense>" "<motorPersonalAccident>" "<excessProtector>" "<substituteVehicle>""<brand>" with "<periodStartDate>"
    Then user should be presented error messages for invalid input

    Examples:
      | LOB | periodStartDate | breakDown | motorLegalexpense | motorPersonalAccident | excessProtector | substituteVehicle | brand |
      | Car | 2               | invalid   | true              | false                 | true            | false             | HP    |
      | Car | 2               | true      | invalid           | false                 | false           | false             | HP    |


  @TSCID304313
  Scenario Outline: Validate Refresh Quote API for invalid input and invalid session

    Given user created quote  for "<LOB>"
    When user sends refresh quote request by adding ancillary coverages "<breakDown>" "<motorLegalexpense>" "<motorPersonalAccident>" "<excessProtector>" "<substituteVehicle>""<brand>" with "<periodStartDate>" and with invalid session
    Then user should be presented error messages for invalid input

    Examples:
      | LOB | periodStartDate | breakDown | motorLegalexpense | motorPersonalAccident | excessProtector | substituteVehicle | brand |
      | Car | 22              | true      | true              | false                 | false           | false             | HP    |
      | Car | 3               | true      | true              | true                  | false           | false             | HE    |
      | Car | 9               | true      | true              | false                 | true            | false             | HD    |
      | Car | 10              | invalid   | true              | false                 | true            | false             | HP    |