package com.preludesys.stepdef;

import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers.equalTo;

import java.util.Map;

import org.apache.commons.lang3.math.NumberUtils;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.restassured.response.Response;

public class SearchStepDef {

	Response response = null;

	@Given("Search the iTunes with single parameter")
	public void searchForTerms(DataTable queryParams) {
		Map<String, String> params = queryParams.asMap();
		response = given()
					.queryParams(params)
					.get("https://itunes.apple.com/search");

	}
	
	@Given("Search the lookup with single or multiple parameter")
	public void lookupApiWithMultipleParams(DataTable queryParams) {
		Map<String, String> params = queryParams.asMap();
		response = given()
					.queryParams(params)
					.get("https://itunes.apple.com/lookup");

	}

	@Then("validate the values {string} {string}")
	public void validate_the_values(String jsonPath, String value) {
		// Write code here that turns the phrase above into concrete actions
		response
		.then()
		.body(jsonPath, equalTo(Integer.parseInt(value)))
		.log().all();
	}

	

}
