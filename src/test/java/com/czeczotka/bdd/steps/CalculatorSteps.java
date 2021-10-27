package com.czeczotka.bdd.steps;

import com.czeczotka.bdd.calculator.Calculator;
import cucumber.api.java.Before;
import cucumber.api.java.en.*;
import org.junit.Assert;

public class CalculatorSteps {

    private Calculator calculator;

    @Before
    public void setUp() {
        //Assume.assumeTrue(false);
        calculator = new Calculator();
    }
    //background steps
    @Given("a global administrator named {string}")
    public void aGlobalAdministratorNamed(String arg0) {

    }
    @Given("a blog named \"Greg's anti-tax rants\"")
    public void saomePrecondition() {

    }
    @Given("a customer named \"Wilson\"")
    public void saomsePrecondition() {

    }

    //Some determinable business situation steps
    @Given("the following people exist:")
    public void theFollowingPeopleExist(io.cucumber.datatable.DataTable table) {
    }
    @And("some precondition {int}")
    public void somePrecondition(int arg0) {

    }
    @When("some action by the actor")
    public void someActionByTheActor() {

    }

    @And("some other action")
    public void someOtherAction() {
    }
    @Then("some testable outcome is achieved")
    public void someTestableOutcomeIsAchieved() {
        //throw new RuntimeException("fdsf");
    }

    @And("something else we can check happens too")
    public void somethingElseWeCanCheckHappensToo() {
    }



    //Some another scenario 2 steps
    @Given("some precondition")
    public void somePrecondition() {
        Assert.assertEquals(2,3);

    }
    @And("some other precondition with doc string")
    public void someOtherPreconditionWithDocString(String a) {

    }
    @And("yet another action")
    public void yetAnotherAction() {
    }
    @But("I don't see something else")
    public void iDonTSeeSomethingElse() {
    }


    // outline steps
    @Given("the cow weighs {int} kg")
    public void theCowWeighsWeighctKg(int arg0) {
    }

    @When("we calculate the feeding requirements")
    public void weCalculateTheFeedingRequirements() {
    }

    @Then("the energy should be {int} MJ")
    public void theEnergyShouldBeEnergyMJ(int arg0) {
//        if(arg0==26500) {
//            assertEquals(2, 3);
//        }
//        else{throw new RuntimeException("fdsf");}
        if(arg0==26500) {
            throw new RuntimeException();
        }
        else{
        }
    }
    //no need
//    @Given("^I have a calculator$")
//    public void i_have_a_calculator() throws Throwable {
//        //assertNotNull(calculator);
//    }
//
//    @When("^I add (\\d+) and (\\d+)$")
//    public void i_add_and(int arg1, int arg2) throws Throwable {
//        //calculator.add(arg1, arg2);
//    }
//
//    @Then("^the result should be (\\d+)$")
//    public void the_result_should_be(int result) throws Throwable {
//        //assertEquals(result, calculator.getResult());
//    }

//    @Given("the cow weighs <weight> kg")
//    public void theCowWeighsWeightKg() {
//    }


}
