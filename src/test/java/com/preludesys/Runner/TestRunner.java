package com.preludesys.Runner;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;
    
@CucumberOptions(tags = "@LookupFeature", 
				 features = {"features"}, 
				 glue = {"com.preludesys.stepdef"},
				 plugin = { "pretty", "com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:" }
				)
    
public class TestRunner extends AbstractTestNGCucumberTests {
    
}
