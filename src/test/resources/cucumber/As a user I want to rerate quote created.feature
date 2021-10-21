#Auto generated Octane revision tag
@BSPID22010REV0.6.0 @QandBAPIRegression
Feature:
  As a user I want to rerate quote created

  @TSCID312021
  Scenario Outline: Validate Rerate Quote API for valid inputs
    Given user creates a quote in quote to buy journey for "<LOB>"
    When user sends rerate quote request with created quote details for "<Brand>"
    And user sends rerate quote request with "<periodStartDate>" "<ncdGrantedProtectionInd>" "<excess>" "<coverType>""<Brand>""<BrandName>"
    Then validate that quote is rerated

    Examples:
      | LOB | periodStartDate | ncdGrantedProtectionInd | excess | coverType     | Brand | BrandName          |
      | Car | 20              | true                    | 50     | comprehensive | HE    | Hastings Essential |
      | Car | 14              | false                   | 500    | comprehensive | HP    | Hastings Premier   |
      | Car | 2               | false                   | 200    | comprehensive | HD    | Hastings Direct    |
      | Car | 4               | true                    | 1000   | comprehensive | HD    | Hastings Direct    |
      | Car | 1               | true                    | 0      | comprehensive | HE    | Hastings Essential |
      | Car | 7               | true                    | 500    | comprehensive | HP    | Hastings Premier   |
      | Car | 9               | false                   | 200    | comprehensive | HD    | Hastings Direct    |

  @TSCID312022
  Scenario Outline: Validate Rerate Quote API for invalid inputs
    Given user creates a quote in quote to buy journey for "<LOB>"
    And user sends invalid rerate quote request with "<periodStartDate>" "<ncdGrantedProtectionInd>" "<excess>" "<coverType>""<Brand>""<BrandName>"
    Then user should be presented appropriate error messages for invalid input
    Examples:
      | LOB | periodStartDate | ncdGrantedProtectionInd | excess | coverType  | Brand | BrandName          |
      | Car | 4               | false                   | 200    | thirdParty | HP    | Hastings Premier   |
      | Car | 4               | false                   | 200    | thirdParty | HD    | Hastings Direct    |
      | Car | 2               | false                   | 20     | thirdParty | HD    | Hastings Direct    |
      | Car | 2               | false                   | 250    | t          | HD    | Hastings Direct    |
      | Car | 20              | false                   | 20     | thirdParty | HE    | Hastings Essential |

  @TSCID312023
  Scenario Outline: Validate Rerate Quote API for invalid session
    Given user creates a quote in quote to buy journey for "<LOB>"
    And user sends rerate quote request with "<periodStartDate>" "<ncdGrantedProtectionInd>" "<excess>" "<coverType>""<Brand>""<BrandName>" and invalid session
    Then user should be presented appropriate error messages for invalid session
    Examples:
      | LOB | periodStartDate | ncdGrantedProtectionInd | excess | coverType     | Brand | BrandName          |
      | Car | 6               | false                   | 200    | thirdParty    | HD    | Hastings Direct    |
      | Car | 5               | false                   | 500    | thirdParty    | HP    | Hastings Premier   |
      | Car | 3               | true                    | 50     | comprehensive | HE    | Hastings Essential |

  @TSCID312024
  Scenario Outline: Validate Rerate Quote API for invalid inputs and invalid session

    Given user creates a quote in quote to buy journey for "<LOB>"
    And user sends rerate quote request with "<periodStartDate>" "<ncdGrantedProtectionInd>" "<excess>" "<coverType>""<Brand>""<BrandName>" and invalid session
    Then user should be presented appropriate error messages for invalid input
    Examples:
      | LOB | periodStartDate | ncdGrantedProtectionInd | excess | coverType  | Brand | BrandName          |
      | Car | 2               | false                   | 20     | thirdParty | HE    | Hastings Essential |
      | Car | 4               | false                   | 200    | thirdParty | HP    | Hastings Premier   |
      | Car | 5               | false                   | 200    | thirdParty | HD    | Hastings Direct    |
      | Car | 6               | false                   | 20     | t          | HD    | Hastings Direct    |
      | Car | 4               | false                   | 20     | t          | YD    | Hastings Direct    |
      | Car | 3               | false                   | 20     | t          | HE    | Hastings Direct    |