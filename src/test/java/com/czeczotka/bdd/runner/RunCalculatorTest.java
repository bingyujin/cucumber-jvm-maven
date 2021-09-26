package com.czeczotka.bdd.runner;


import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {
                "junit:target/junit-cucumber-reports/calculatortwo.xml",
                "html:target/cucumber",
                "pretty"
        },
        glue = "com.czeczotka.bdd.steps",
        features="classpath:cucumber/calculator.feature"
        //src/test/resources/cucumber/calculator.feature
        //classpath:cucumber/calculator.feature
)
public class RunCalculatorTest {
}
