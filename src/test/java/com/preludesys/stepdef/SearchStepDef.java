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

	@Then("validate the values {string} {string}")
	public void validate_the_values(String jsonPath, String value) {
		// Write code here that turns the phrase above into concrete actions
		response
		.then()
		.body(jsonPath, equalTo(Integer.parseInt(value)))
		.log().all();
	}

	@Given("Search the iTunes with multiple parameters {string} {string} {string} {string}")
	public void searchForTerms(String queryParam1, String queryParamVal1, String queryParam2, String queryParamVal2) {
		if (NumberUtils.isDigits(queryParamVal2)) {
			response = given()
					.queryParam(queryParam1, queryParamVal1)
					.queryParam(queryParam2, Integer.parseInt(queryParamVal2))
					.get("https://itunes.apple.com/search");
		} else {
			response = given()
					.queryParam(queryParam1, queryParamVal1)
					.queryParam(queryParam2, queryParamVal2)
					.get("https://itunes.apple.com/search");
		}

	}

}
