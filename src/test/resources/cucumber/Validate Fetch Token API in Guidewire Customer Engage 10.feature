#Auto generated Octane revision tag
@BSPID22008REV0.5.0
#Auto generated Octane revision tag
@QandBAPIRegression
Feature: Validate Fetch Token API in Guidewire Customer Engage 10

  @TSCID312012
  Scenario Outline: Validation of Fetch Token API for car in Guidewire Customer Engage 10 with valid request parameters and no timeout error.
    Given user creates a quote with driver and vehicle details for "<LOB>" 
    When  user send valid "<paymentAmount>" "<transactionType>" "<merchantCode>" "<isPayerPolicyOwner>" "<firstName>" request parameters
    Then  user should be able to get valid order code

    Examples:
      | LOB|   paymentAmount | transactionType | merchantCode | isPayerPolicyOwner | firstName |
      | Car|   500.00        | newcardpayment  | HASGWWEBDC   | true               | Dan       |
      | Car|   1000.00       | newcardpayment  | HASGWWEBDC   | true               | John      |
      | Car|   1500.00       | newcardpayment  | HASGWWEBDC   | true               | Alex      |

  @TSCID312013
  Scenario Outline: Validation of Fetch Token API for car in Guidewire Customer Engage 10 with invalid request parameters and no timeout error.
    Given user creates a quote with driver and vehicle details for "<LOB>" 
    When  user send invalid "<paymentAmount>" "<transactionType>" "<merchantCode>" "<isPayerPolicyOwner>" "<firstName>" request parameters
    Then  user should get  "404" error in response.

    Examples:
      | LOB  | paymentAmount | transactionType | merchantCode | isPayerPolicyOwner | firstName |
      |  Car | 500.00        | newcardpayment1 | HASGWWEBDC   | invalid            | Dan       |
      |  Car | 223.00        | newcardpayment1 | HASGWWEBDC   | false1             | Dan       |

  @TSCID312014
  Scenario Outline: Validation of Fetch Token API for car in Guidewire Customer Engage 10 with blank request parameters and timeout error.
    Given user creates a quote with driver and vehicle details for "<LOB>" 
    When  user send "<paymentAmount>" "<transactionType>" "<merchantCode>" "<isPayerPolicyOwner>" "<firstName>" mandatory request parameters blank
    Then  user should get  "408" error for response time out

    Examples:
       | LOB  | paymentAmount | transactionType |   merchantCode | isPayerPolicyOwner | firstName |
       | Car  | 500.00        | newcardpayment  |                | true               | Dan       |
       | Car  | 500.00        | newcardpayment  |                | false               | Dan       |

  @TSCID312015
  Scenario Outline: Validation of Fetch Token API for Car in Guidewire Customer Engage 10 with valid invalid session ID and no timeout error.
    Given user creates a quote with driver and vehicle details for "<LOB>" 
    When  user send invalid sessionID "<sessionID>" "<paymentAmount>" "<transactionType>" "<merchantCode>" "<isPayerPolicyOwner>" "<firstName>" request parameters
    Then   user should get  "600" error for invalid session

    Examples:
      | LOB    | sessionID |paymentAmount |   transactionType | merchantCode | isPayerPolicyOwner | firstName |
      |  Car   | 1         |500.00        |   newcardpayment  | HASGWWEBDC   | true               | RMMaxTest |
      |  Car   | 100       |5000.00       |   newcardpayment  | HASGWWEBDC   | false              | Dan       |