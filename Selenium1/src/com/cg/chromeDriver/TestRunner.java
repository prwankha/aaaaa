package com.cg.chromeDriver;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(features="features",glue="com.cg.chromeDriver",tags= {"@HotelBooking"})
public class TestRunner {

}
