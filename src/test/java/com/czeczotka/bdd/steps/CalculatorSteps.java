package com.czeczotka.bdd.steps;

import com.czeczotka.bdd.calculator.Calculator;
//import gherkin.ast.DataTable;
import io.cucumber.java.Before;
import io.cucumber.java.en.*;
import org.junit.Assume;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

public class CalculatorSteps {

    private Calculator calculator;

    @Before
    public void setUp() {
        //Assume.assumeTrue(false);
        calculator = new Calculator();
    }

    @Given("^I have a calculator$")
    public void i_have_a_calculator() throws Throwable {
        //assertNotNull(calculator);
    }

    @When("^I add (\\d+) and (\\d+)$")
    public void i_add_and(int arg1, int arg2) throws Throwable {
        //calculator.add(arg1, arg2);
    }

    @Then("^the result should be (\\d+)$")
    public void the_result_should_be(int result) throws Throwable {
        //assertEquals(result, calculator.getResult());
    }

    @Given("a global administrator named {string}")
    public void aGlobalAdministratorNamed(String arg0) {

    }














    @Then("some testable outcome is achieved")
    public void someTestableOutcomeIsAchieved() {
        //throw new RuntimeException("fdsf");
    }

    @And("some other precondition with doc string")
    public void someOtherPreconditionWithDocString(String a) {

    }

    @Given("some precondition")
    public void somePrecondition() {

    }
    @Given("a blog named \"Greg's anti-tax rants\"")
    public void saomePrecondition() {

    }
    @Given("a customer named \"Wilson\"")
    public void saomsePrecondition() {

    }


    @When("some action by the actor")
    public void someActionByTheActor() {

    }

    @Given("the following people exist:")
    public void theFollowingPeopleExist(io.cucumber.datatable.DataTable table) {
    }

    @And("some precondition {int}")
    public void somePrecondition(int arg0) {

    }

    @And("some other action")
    public void someOtherAction() {
    }

    @And("something else we can check happens too")
    public void somethingElseWeCanCheckHappensToo() {
    }

    @And("yet another action")
    public void yetAnotherAction() {
    }

    @But("I don't see something else")
    public void iDonTSeeSomethingElse() {
    }

    @Given("the cow weighs <weight> kg")
    public void theCowWeighsWeightKg() {
        
    }

    @When("we calculate the feeding requirements")
    public void weCalculateTheFeedingRequirements() {
    }

    @Then("the energy should be {int} MJ")
    public void theEnergyShouldBeEnergyMJ(int arg0) {
        if(arg0==26500) {
            assertEquals(2, 3);
        }
        else{throw new RuntimeException("fdsf");}
    }

    @Given("the cow weighs {int} kg")
    public void theCowWeighsWeighctKg(int arg0) {
    }

    @Given("I create a quote with driver and vehicle details with policy period {string} for {string}")
    public void iCreateAQuoteWithDriverAndVehicleDetailsWithPolicyPeriodFor(String arg0, String arg1) {
    }

    @When("I send bind request with {string} {string} {string}{string} {string} {string} {string} {string}")
    public void iSendBindRequestWith(String arg0, String arg1, String arg2, String arg3, String arg4, String arg5, String arg6, String arg7) {
        
    }

    @Then("quote should get bound and policy number should be generated")
    public void quoteShouldGetBoundAndPolicyNumberShouldBeGenerated() {
    }

    @When("I send bind request with {string} {string} {string} {string} {string} {string} {string} and with {string}")
    public void iSendBindRequestWithAndWith(String arg0, String arg1, String arg2, String arg3, String arg4, String arg5, String arg6, String arg7) {

    }

    @Then("I should get error response {string} with message {string} from Bind API")
    public void iShouldGetErrorResponseWithMessageFromBindAPI(String arg0, String arg1) {
    }

    @When("I send bind request without payment details")
    public void iSendBindRequestWithoutPaymentDetails() {
    }

    @When("I send bind request without payment details with {string} and {string}")
    public void iSendBindRequestWithoutPaymentDetailsWithAnd(String arg0, String arg1) {
    }

    @When("I send bind request without payment details and with invalid {string}")
    public void iSendBindRequestWithoutPaymentDetailsAndWithInvalid(String arg0) {
    }

    @When("I send bind request with {string} {string} {string} {string} {string} {string} {string} and with {string} and {string}")
    public void iSendBindRequestWithAndWithAnd(String arg0, String arg1, String arg2, String arg3, String arg4, String arg5, String arg6, String arg7, String arg8) {
    }

    @Given("user created quote  for {string}")
    public void userCreatedQuoteFor(String arg0) {

    }

    @And("user sends rerate quote request with {string} {string} {string} {string}{string}{string}")
    public void userSendsRerateQuoteRequestWith(String arg0, String arg1, String arg2, String arg3, String arg4, String arg5) {

    }

    @Given("user creates a quote in quote to buy journey for {string}")
    public void userCreatesAQuoteInQuoteToBuyJourneyFor(String arg0) {
    }

    @When("user sends rerate quote request with created quote details for {string}")
    public void userSendsRerateQuoteRequestWithCreatedQuoteDetailsFor(String arg0) {
    }

    @Then("validate that quote is rerated")
    public void validateThatQuoteIsRerated() {
    }

    @And("user sends invalid rerate quote request with {string} {string} {string} {string}{string}{string}")
    public void userSendsInvalidRerateQuoteRequestWith(String arg0, String arg1, String arg2, String arg3, String arg4, String arg5) {
    }

    @Then("user should be presented appropriate error messages for invalid input")
    public void userShouldBePresentedAppropriateErrorMessagesForInvalidInput() {
    }

    @And("user sends rerate quote request with {string} {string} {string} {string}{string}{string} and invalid session")
    public void userSendsRerateQuoteRequestWithAndInvalidSession(String arg0, String arg1, String arg2, String arg3, String arg4, String arg5) {
    }

    @Then("user should be presented appropriate error messages for invalid session")
    public void userShouldBePresentedAppropriateErrorMessagesForInvalidSession() {
    }

    @Given("I create a draft with policy period {string} for {string} to validate retrieve quote")
    public void iCreateADraftWithPolicyPeriodForToValidateRetrieveQuote(String arg0, String arg1) {

    }

    @And("I create a quote through Create Quote API")
    public void iCreateAQuoteThroughCreateQuoteAPI() {
    }

    @When("I send the request to retrieve quote API")
    public void iSendTheRequestToRetrieveQuoteAPI() {
    }

    @Then("I should be presented the quote details that was requested")
    public void iShouldBePresentedTheQuoteDetailsThatWasRequested() {
    }

    @Given("I want to retrieve quote with invalid Quote ID {string} Postal Code {string}")
    public void iWantToRetrieveQuoteWithInvalidQuoteIDPostalCode(String arg0, String arg1) {
    }

    @Then("I should be presented appropriate error {string} for Retrieve Draft or quote API")
    public void iShouldBePresentedAppropriateErrorForRetrieveDraftOrQuoteAPI(String arg0) {
    }

    @Given("I create a draft with policy period {string} for {string} to validate retrieve draft")
    public void iCreateADraftWithPolicyPeriodForToValidateRetrieveDraft(String arg0, String arg1) {
    }

    @When("I send the retrieve draft request to retrieve quote API")
    public void iSendTheRetrieveDraftRequestToRetrieveQuoteAPI() {
    }

    @Then("I should be presented the draft quote details that was requested")
    public void iShouldBePresentedTheDraftQuoteDetailsThatWasRequested() {
    }

    @Given("I enter a Driving License Number {string} for the request")
    public void iEnterADrivingLicenseNumberForTheRequest(String arg0) {
    }

    @When("I retrieve the response for driver details")
    public void iRetrieveTheResponseForDriverDetails() {
    }

    @Then("Validate the response to check  Driver  and Driving records are matching with existing response")
    public void validateTheResponseToCheckDriverAndDrivingRecordsAreMatchingWithExistingResponse() {
    }

    @Then("Validate if response contains error code {int}")
    public void validateIfResponseContainsErrorCode(int arg0) {
    }

    @Given("I create a draft quote with policyPeriod {string} for {string} to validate update Draft Submission API")
    public void iCreateADraftQuoteWithPolicyPeriodForToValidateUpdateDraftSubmissionAPI(String arg0, String arg1) {
    }

    @When("I send a valid request with updated vehicle and driver details for update quote API Service")
    public void iSendAValidRequestWithUpdatedVehicleAndDriverDetailsForUpdateQuoteAPIService() {
    }

    @Then("the response parameters of update draft submission in GWCE new version must have all the response parameters")
    public void theResponseParametersOfUpdateDraftSubmissionInGWCENewVersionMustHaveAllTheResponseParameters() {
    }

    @When("I send an invalid request DTO for update draft quote API Service")
    public void iSendAnInvalidRequestDTOForUpdateDraftQuoteAPIService() {
    }

    @Then("I should get error response from update API {string} with message {string}")
    public void iShouldGetErrorResponseFromUpdateAPIWithMessage(String arg0, String arg1) {
    }

    @When("I send an update draft request with invalid sessionID")
    public void iSendAnUpdateDraftRequestWithInvalidSessionID() {
    }

    @Given("I create a draft quote with driver and vehicle details with policyPeriod {string} for {string}")
    public void iCreateADraftQuoteWithDriverAndVehicleDetailsWithPolicyPeriodFor(String arg0, String arg1) {
    }

    @When("I send a valid request DTO for create quote API Service")
    public void iSendAValidRequestDTOForCreateQuoteAPIService() {
    }

    @Then("the response parameters on GWCE new version must have all the response parameters as in older version")
    public void theResponseParametersOnGWCENewVersionMustHaveAllTheResponseParametersAsInOlderVersion() {
    }

    @Given("I create a draft quote without driver and vehicle details with policyPeriod {string} for {string}")
    public void iCreateADraftQuoteWithoutDriverAndVehicleDetailsWithPolicyPeriodFor(String arg0, String arg1) {
    }

    @Then("error message should be  displayed to the user with error code {string}")
    public void errorMessageShouldBeDisplayedToTheUserWithErrorCode(String arg0) {
    }

    @When("I send an invalid request DTO or invalid sessionUUID for create quote API Service")
    public void iSendAnInvalidRequestDTOOrInvalidSessionUUIDForCreateQuoteAPIService() {
    }



    @And("I send re-rate quote request with {string} {string} {string} {string}{string}{string}")
    public void iSendReRateQuoteRequestWith(String arg0, String arg1, String arg2, String arg3, String arg4, String arg5) {
    }

    @When("I send a retrieve quote request with valid DTO for the  re-rated quote")
    public void iSendARetrieveQuoteRequestWithValidDTOForTheReRatedQuote() {
    }

    @Then("I should get re-rated quote details in retrieve quote response")
    public void iShouldGetReRatedQuoteDetailsInRetrieveQuoteResponse() {
    }

    @And("the other response parameters should match with the create or rerated quote response")
    public void theOtherResponseParametersShouldMatchWithTheCreateOrReratedQuoteResponse() {
    }

    @Given("user wants to retrieve quote with invalid Quote ID {string} Postal Code {string}")
    public void userWantsToRetrieveQuoteWithInvalidQuoteIDPostalCode(String arg0, String arg1) {
    }

    @When("user sends the request in JSON format")
    public void userSendsTheRequestInJSONFormat() {
    }

    @Then("error message should be  displayed in response with error code {string}")
    public void errorMessageShouldBeDisplayedInResponseWithErrorCode(String arg0) {
    }

    @When("I retrieve the DVLA Car response")
    public void iRetrieveTheDVLACarResponse() {

    }

    @Given("I have sent a {string} Registration number with {string} through DVLA vehicle lookup service")
    public void iHaveSentARegistrationNumberWithThroughDVLAVehicleLookupService(String arg0, String arg1) {
    }

    @Then("Validate the response to check if response values are similar to existing one")
    public void validateTheResponseToCheckIfResponseValuesAreSimilarToExistingOne() {
    }

    @Then("Validate if response contains error code {string}")
    public void validateIfResponseContainsErrorCode(String arg0) {
    }

    @Given("I have sent a {string} Van registration number as {string} through DVLA Van lookup service")
    public void iHaveSentAVanRegistrationNumberAsThroughDVLAVanLookupService(String arg0, String arg1) {
    }

    @When("I retrieve the response for Van registration number")
    public void iRetrieveTheResponseForVanRegistrationNumber() {
    }

    @Then("Validate the Van registration number response to check if response values are similar to existing one")
    public void validateTheVanRegistrationNumberResponseToCheckIfResponseValuesAreSimilarToExistingOne() {
    }

    @Then("Validate if Van registration number  response contains error message {string}")
    public void validateIfVanRegistrationNumberResponseContainsErrorMessage(String arg0) {
    }

    @Then("Validate if Van registration number  response contains error code {string}")
    public void validateIfVanRegistrationNumberResponseContainsErrorCode(String arg0) {
    }

    @Given("user create a quote for {string}")
    public void userCreateAQuoteFor(String arg0) {
    }

    @And("send the request with  valid Quote  and valid Preferred payment day as {string}")
    public void sendTheRequestWithValidQuoteAndValidPreferredPaymentDayAs(String arg0) {
    }

    @When("user retrieves the Payment Schedule responses")
    public void userRetrievesThePaymentScheduleResponses() {
    }

    @Then("validate the Payment Schedule API response against Guidewire previous version response")
    public void validateThePaymentScheduleAPIResponseAgainstGuidewirePreviousVersionResponse() {
    }

    @And("send the request with  valid Quote  and in-valid Preferred payment day as {string}")
    public void sendTheRequestWithValidQuoteAndInValidPreferredPaymentDayAs(String arg0) {
    }

    @Then("validate the Payment Schedule API response error received is {int}")
    public void validateThePaymentScheduleAPIResponseErrorReceivedIs(int arg0) {
    }

    @And("send the request with  valid Quote  and valid Preferred payment day as {string} and in-valid sessionID")
    public void sendTheRequestWithValidQuoteAndValidPreferredPaymentDayAsAndInValidSessionID(String arg0) {
    }

    @Then("validate the manual van lookup API response against Guidewire previous version response")
    public void validateTheManualVanLookupAPIResponseAgainstGuidewirePreviousVersionResponse() {

    }

    @When("I retrieve the response from Bank Account")
    public void iRetrieveTheResponseFromBankAccount() {

    }

    @When("I retreive the response for bike registration number")
    public void iRetreiveTheResponseForBikeRegistrationNumber() {

    }

    @Then("error message stating invalid session ID should be displayed with error code {string}")
    public void errorMessageStatingInvalidSessionIDShouldBeDisplayedWithErrorCode(String arg0) {

    }

    @Given("user create a quote for {string} for Bank Account validation")
    public void userCreateAQuoteForForBankAccountValidation(String arg0) {

    }

    @Then("Validate the Bank Account response to check if response values are similar to existing one")
    public void validateTheBankAccountResponseToCheckIfResponseValuesAreSimilarToExistingOne() {

    }

    @Given("I send a in-valid quote for {string} for IPID")
    public void iSendAInValidQuoteForForIPID(String arg0) {

    }

    @Then("validate the manual van lookup API response error is similar to Guidewire previous version response")
    public void validateTheManualVanLookupAPIResponseErrorIsSimilarToGuidewirePreviousVersionResponse() {

    }

    @Then("validate the manual Bike lookup API response error is similar to Guidewire previous version response")
    public void validateTheManualBikeLookupAPIResponseErrorIsSimilarToGuidewirePreviousVersionResponse() {

    }

    @Then("Validate if IPID response generates error-code {string}")
    public void validateIfIPIDResponseGeneratesErrorCode(String arg0) {

    }

    @When("user retrieves the response  for manual car lookup")
    public void userRetrievesTheResponseForManualCarLookup() {

    }

    @When("user retrieves the response  for manual bike lookup")
    public void userRetrievesTheResponseForManualBikeLookup() {

    }

    @Given("I have sent a {string} bike Registration number as {string} through DVLA bike lookup service")
    public void iHaveSentABikeRegistrationNumberAsThroughDVLABikeLookupService(String arg0, String arg1) {

    }

    @Given("I create a quote to validate Update DDI for policy period {string} for {string}")
    public void iCreateAQuoteToValidateUpdateDDIForPolicyPeriodFor(String arg0, String arg1) {

    }

    @When("user sends refresh quote request by adding ancillary coverages {string} {string} {string} {string} {string}{string} with {string}")
    public void userSendsRefreshQuoteRequestByAddingAncillaryCoveragesWith(String arg0, String arg1, String arg2, String arg3, String arg4, String arg5, String arg6) {

    }

    @Then("user should be presented error messages for invalid input")
    public void userShouldBePresentedErrorMessagesForInvalidInput() {

    }

    @And("user sends refresh quote request with created quote details for {string}")
    public void userSendsRefreshQuoteRequestWithCreatedQuoteDetailsFor(String arg0) {
    }

    @When("user sends refresh quote request by adding ancillary coverages {string} {string} {string} {string} {string}{string}")
    public void userSendsRefreshQuoteRequestByAddingAncillaryCoverages(String arg0, String arg1, String arg2, String arg3, String arg4, String arg5) {
    }

    @Then("validate that quote is refreshed")
    public void validateThatQuoteIsRefreshed() {
    }

    @And("user sends refresh quote request by adding ancillary coverages for {string}")
    public void userSendsRefreshQuoteRequestByAddingAncillaryCoveragesFor(String arg0) {
    }

    @When("user sends refresh quote request by removing ancillary coverages {string} {string} {string} {string} {string}{string}")
    public void userSendsRefreshQuoteRequestByRemovingAncillaryCoverages(String arg0, String arg1, String arg2, String arg3, String arg4, String arg5) {
    }

    @Then("validate that quote is refreshed for ancillaries")
    public void validateThatQuoteIsRefreshedForAncillaries() {
    }

    @When("user sends refresh quote request by adding ancillary coverages {string} {string} {string} {string} {string}{string} with invalid session")
    public void userSendsRefreshQuoteRequestByAddingAncillaryCoveragesWithInvalidSession(String arg0, String arg1, String arg2, String arg3, String arg4, String arg5) {
    }

    @Then("user should be presented {int} error code for invalid session")
    public void userShouldBePresentedErrorCodeForInvalidSession(int arg0) {
    }

    @When("user sends refresh quote request by adding ancillary coverages {string} {string} {string} {string} {string}{string} with {string} and with invalid session")
    public void userSendsRefreshQuoteRequestByAddingAncillaryCoveragesWithAndWithInvalidSession(String arg0, String arg1, String arg2, String arg3, String arg4, String arg5, String arg6) {
    }

    @When("I send a request to update DDI with payer, loan holder and bank details")
    public void iSendARequestToUpdateDDIWithPayerLoanHolderAndBankDetails() {
    }

    @Then("I should get update success response of my direct debit information")
    public void iShouldGetUpdateSuccessResponseOfMyDirectDebitInformation() {
    }

    @When("I send a request to update DDI with {string}")
    public void iSendARequestToUpdateDDIWith(String arg0) {
    }

    @When("I send a request to update DDI without payer, loan holder and bank details")
    public void iSendARequestToUpdateDDIWithoutPayerLoanHolderAndBankDetails() {
    }

    @Then("error message stating DTO Invalid error message should be displayed with error code {string}")
    public void errorMessageStatingDTOInvalidErrorMessageShouldBeDisplayedWithErrorCode(String arg0) {
    }

    @And("send the request with  account number as {string} and sort code as {string}")
    public void sendTheRequestWithAccountNumberAsAndSortCodeAs(String arg0, String arg1) {
    }



    @Then("Validate the bike registration number response to check if response values are similar to existing one")
    public void validateTheBikeRegistrationNumberResponseToCheckIfResponseValuesAreSimilarToExistingOne() {
    }

    @Then("Validate if bike registration number  response contains error message {string}")
    public void validateIfBikeRegistrationNumberResponseContainsErrorMessage(String arg0) {
    }

    @Then("Validate if bike registration number  response contains error code {string}")
    public void validateIfBikeRegistrationNumberResponseContainsErrorCode(String arg0) {
    }

    @Given("I send a Create Car request with tracking code")
    public void iSendACreateCarRequestWithTrackingCode() {
    }

    @When("I retrieve the Create Car response")
    public void iRetrieveTheCreateCarResponse() {
    }

    @Then("I validate the response to check if values are similar to the values in request")
    public void iValidateTheResponseToCheckIfValuesAreSimilarToTheValuesInRequest() {
    }

    @And("quote number,account ID and Producer code are generated")
    public void quoteNumberAccountIDAndProducerCodeAreGenerated() {
    }

    @Given("I send a Create Car request without campaign code with invalid parameter")
    public void iSendACreateCarRequestWithoutCampaignCodeWithInvalidParameter() {
    }

    @Then("Validate if error message {string} is received")
    public void validateIfErrorMessageIsReceived(String arg0) {
    }

    @Given("I send a Create Car request containing Producer code and account number")
    public void iSendACreateCarRequestContainingProducerCodeAndAccountNumber() {
    }

    @Given("I send a Create Car request containing producer code")
    public void iSendACreateCarRequestContainingProducerCode() {
    }

    @Given("I send a Create Car request without campaign code")
    public void iSendACreateCarRequestWithoutCampaignCode() {
    }

    @Given("user creates a quote with driver and vehicle details for {string}")
    public void userCreatesAQuoteWithDriverAndVehicleDetailsFor(String arg0) {
    }

    @When("user send valid {string} {string} {string} {string} {string} request parameters")
    public void userSendValidRequestParameters(String arg0, String arg1, String arg2, String arg3, String arg4) {
    }

    @Then("user should be able to get valid order code")
    public void userShouldBeAbleToGetValidOrderCode() {
    }

    @When("user send invalid {string} {string} {string} {string} {string} request parameters")
    public void userSendInvalidRequestParameters(String arg0, String arg1, String arg2, String arg3, String arg4) {
    }

    @Then("user should get  {string} error in response.")
    public void userShouldGetErrorInResponse(String arg0) {
    }

    @When("user send {string} {string} {string} {string} {string} mandatory request parameters blank")
    public void userSendMandatoryRequestParametersBlank(String arg0, String arg1, String arg2, String arg3, String arg4) {
    }

    @Then("user should get  {string} error for response time out")
    public void userShouldGetErrorForResponseTimeOut(String arg0) {
    }

    @When("user send invalid sessionID {string} {string} {string} {string} {string} {string} request parameters")
    public void userSendInvalidSessionIDRequestParameters(String arg0, String arg1, String arg2, String arg3, String arg4, String arg5) {
    }

    @Then("user should get  {string} error for invalid session")
    public void userShouldGetErrorForInvalidSession(String arg0) {
    }

    @Given("user create a quote for {string} for IPID")
    public void userCreateAQuoteForForIPID(String arg0) {
    }

    @When("I retrieve the response from IPID")
    public void iRetrieveTheResponseFromIPID() {
    }

    @Then("Validate the IPID response to check if response values are similar to existing one")
    public void validateTheIPIDResponseToCheckIfResponseValuesAreSimilarToExistingOne() {
    }

    @Given("user constructs request  with {string} and with parameters {string} {string} and {string}")
    public void userConstructsRequestWithAndWithParametersAnd(String arg0, String arg1, String arg2, String arg3) {
    }

    @Then("validate the manual Bike lookup API response against Guidewire previous version response")
    public void validateTheManualBikeLookupAPIResponseAgainstGuidewirePreviousVersionResponse() {
    }

    @Given("user construct a request with {string} and with parameters {string} {string} and {string}")
    public void userConstructARequestWithAndWithParametersAnd(String arg0, String arg1, String arg2, String arg3) {
    }

    @Then("validate the manual car lookup API response against Guidewire previous version response")
    public void validateTheManualCarLookupAPIResponseAgainstGuidewirePreviousVersionResponse() {
    }

    @Then("validate the manual car lookup API response error is similar to Guidewire previous version response")
    public void validateTheManualCarLookupAPIResponseErrorIsSimilarToGuidewirePreviousVersionResponse() {
    }

    @Given("user constructs a request with {string} and with parameters {string} {string} and {string}")
    public void userConstructsARequestWithAndWithParametersAnd(String arg0, String arg1, String arg2, String arg3) {
    }

    @When("user retrieves the response  for manual van lookup")
    public void userRetrievesTheResponseForManualVanLookup() {
    }

    @Given("I enter a valid Postcode {string} in Postcode Address Finder")
    public void iEnterAValidPostcodeInPostcodeAddressFinder(String arg0) {
    }

    @When("i retrieve the response received")
    public void iRetrieveTheResponseReceived() {
    }

    @Then("Validate the response to check if response values are similar to existing Postcode response")
    public void validateTheResponseToCheckIfResponseValuesAreSimilarToExistingPostcodeResponse() {
    }

    @Given("I enter a in-valid Postcode {string} in Postcode Address Finder")
    public void iEnterAInValidPostcodeInPostcodeAddressFinder(String arg0) {
    }

    @Then("Validate if response contains error code {int} in the response received")
    public void validateIfResponseContainsErrorCodeInTheResponseReceived(int arg0) {
    }

    @Given("I enter a blank Postcode {string} in Postcode Address Finder")
    public void iEnterABlankPostcodeInPostcodeAddressFinder(String arg0) {
    }

    @Given("I create a quote with driver and vehicle details with policyPeriod {string} for {string}")
    public void iCreanteAQuoteWithDriverAndVehicleDetailsWithPolicyPeriodFor(String arg0, String arg1) {
    }
}
