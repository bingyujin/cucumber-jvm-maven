#Auto generated Octane revision tag
@BSPID22006REV0.5.0 @QandBAPIRegression
Feature:
  As a user I want to bind a quote created using Bind Quote CE API service

  @TSCID289072
  Scenario Outline: Validate if bind quote API for valid inputs to check if policy is bound

    Given I create a quote with driver and vehicle details with policy period "<Day>" for "<LOB>"
    When I send bind request with "<cardType>" "<merchantCode>" "<orderCode>""<completionCode>" "<paymentMethod>" "<currency>" "<amount>" "<Brand>"
    Then quote should get bound and policy number should be generated

    Examples:
      | Day | LOB | cardType      | merchantCode | orderCode            | completionCode | paymentMethod | currency | amount  | Brand |
      | 2   | Car | creditcardfee | abcd         | 1234-ASDFG-3456      | Default        | monthly       | gbp      | 3777.38 | HD    |
      | 1   | Car | creditcardfee | HASGWWEBDC   | local_181128_0000001 | Default        | everyyear     | gbp      | 5000.20 | HP    |


  @TSCID289073
  Scenario Outline: Validate bind quote for invalid inputs- Session ID invalid

    Given I create a quote with driver and vehicle details with policy period "<Date>" for "<LOB>"
    When I send bind request with "<cardType>" "<merchantCode>" "<orderCode>" "<completionCode>" "<paymentMethod>" "<currency>" "<amount>" and with "<invalidSessionID>"
    Then I should get error response "-32500" with message "ErrorCode: -32500-APPLICATION_ERROR ErrorMessage: Invalid session" from Bind API

    Examples:
      | Date | LOB | cardType      | merchantCode | orderCode       | completionCode | paymentMethod | currency | amount  | invalidSessionID                     |
      | 1    | Car | creditcardfee | abcd         | 1234-ASDFG-3456 | Default        | everyyear     | gbp      | 3777.38 | 49455cd7-69f7-45a0-9979-bda0c393bdde |


  @TSCID289074
  Scenario Outline: Validate bind quote for invalid inputs- Payment Details not provided

    Given I create a quote with driver and vehicle details with policy period "<Date>" for "<LOB>"
    When I send bind request without payment details
    Then I should get error response "-32602" with message "ErrorCode: -32602-INVALID_PARAMS ErrorMessage: edgev10.exception.DtoValidationException: ErrorCode: 601-GW_DTO_VALIDATION_ERROR ErrorMessage: Dto validation error" from Bind API

    Examples:
      | Date | LOB |
      | 1    | Car |


  @TSCID289075
  Scenario Outline: Validate bind quote for invalid inputs- Payment Details not provided, Session ID Invalid, Quote ID invalid

    Given I create a quote with driver and vehicle details with policy period "<Day>" for "<LOB>"
    When I send bind request without payment details with "<InvalidSessionID>" and "<InvalidQuoteID>"
    Then I should get error response "-32602" with message "ErrorCode: -32602-INVALID_PARAMS ErrorMessage: edgev10.exception.DtoValidationException: ErrorCode: 601-GW_DTO_VALIDATION_ERROR ErrorMessage: Dto validation error" from Bind API

    Examples:
      | Day | LOB |
      | 1   | Car |


  @TSCID289076
  Scenario Outline: Validate bind quote for invalid inputs- Payment Details not provided and Session ID Invalid

    Given I create a quote with driver and vehicle details with policy period "<Day>" for "<LOB>"
    When I send bind request without payment details and with invalid "<SessionID>"
    Then I should get error response "-32602" with message "ErrorCode: -32602-INVALID_PARAMS ErrorMessage: edgev10.exception.DtoValidationException: ErrorCode: 601-GW_DTO_VALIDATION_ERROR ErrorMessage: Dto validation error" from Bind API

    Examples:
      | Day | LOB | SessionID                            |
      | 1   | Car | 49455cd7-69f7-45a0-9979-bda0c393bdde |


  @TSCID289077
  Scenario Outline: Validate bind quote for invalid inputs- Session ID invalid, Quote Reference Invalid

    Given I create a quote with driver and vehicle details with policy period "<Day>" for "<LOB>"
    When I send bind request with "<cardType>" "<merchantCode>" "<orderCode>" "<completionCode>" "<paymentMethod>" "<currency>" "<amount>" and with "<invalidSessionID>" and "<QuoteID>"
    Then I should get error response "-32500" with message "ErrorCode: -32500-APPLICATION_ERROR ErrorMessage: ErrorCode: 603-GW_ENTITY_NOT_FOUND_ERROR ErrorMessage: Submission not found" from Bind API

    Examples:
      | Day | LOB | cardType      | merchantCode | orderCode       | completionCode | paymentMethod | currency | amount  | invalidSessionID                     | QuoteID   |
      | 1   | Car | creditcardfee | abcd         | 1234-ASDFG-3456 | Default        | everyyear     | gbp      | 3777.38 | 49455cd7-69f7-45a0-9979-bda0c393bdde | 000989676 |