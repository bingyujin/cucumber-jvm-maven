package com.czeczotka.bdd.steps;

import com.czeczotka.bdd.calculator.Calculator;
import cucumber.api.PendingException;
import cucumber.api.java.Before;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;



import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

public class CalculatorSteps {

    private Calculator calculator;

    @Before
    public void setUp() {
        calculator = new Calculator();
    }

    @Given("^I have a calculator$")
    public void i_have_a_calculator() throws Throwable {
        assertNotNull(calculator);
    }

    @When("^I add (\\d+) and (\\d+)$")
    public void i_add_and(int arg1, int arg2) throws Throwable {
        calculator.add(arg1, arg2);
    }

    @Then("^the result should be (\\d+)$")
    public void the_result_should_be(int result) throws Throwable {
        assertEquals(result, calculator.getResult());
    }

    @Given("^a global administrator named \"([^\"]*)\"$")
    public void aGlobalAdministratorNamed(String arg0) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @And("^a blog named \"([^\"]*)\"$")
    public void aBlogNamed(String arg0) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @And("^a customer named \"([^\"]*)\"$")
    public void aCustomerNamed(String arg0) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Given("^the following people exist:$")
    public void theFollowingPeopleExist() {
        
    }

    @And("^some precondition (\\d+)$")
    public void somePrecondition(int arg0) {
        
    }

    @When("^some action by the actor$")
    public void someActionByTheActor() {
        
    }

    @And("^some other action$")
    public void someOtherAction() {
        
    }

    @Then("^some testable outcome is achieved$")
    public void someTestableOutcomeIsAchieved() {
        
    }


    @And("^something else we can check happens too$")
    public void somethingElseWeCanCheckHappensToo() {
    }
}
