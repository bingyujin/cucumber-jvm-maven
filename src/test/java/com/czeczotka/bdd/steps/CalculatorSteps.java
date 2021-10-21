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
}
