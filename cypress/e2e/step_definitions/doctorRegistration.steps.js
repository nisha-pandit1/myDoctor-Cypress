import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import locators from "../../pages/MydoctorLocators.json";
import GenericActions from "../../utilities/genericActions";
import WebTextBox from "../../helpers/webTextBox";
import WebXpath from "../../helpers/webXpath";
import Urls from "../../pages/urls.json";
const generic = new GenericActions();
const webTextBoxs = new WebTextBox();
const webXpath = new WebXpath();

Given("user navigates to the {string} page", function (url) {
  cy.visit(Urls[url]);
});

Then("user enters value email in the {string} input field", function (webElem) {
  var email = generic.generateEmailAddresss();
  cy.wrap(email).as("emailId");
  webTextBoxs.typeText(locators[webElem], email);
});

Then("user enters value Mobile Number in the {string} input field", function (webElem) {
  var mobileNo = generic.generateMobileNumber();
  cy.wrap(mobileNo).as("mobileNumber");
  webTextBoxs.typeText(locators[webElem], mobileNo);
});

Then("user enter mobile Number in the {string} input field", function (webElem) {
  cy.get('@mobileNumber').then((mobileNumber) => {
  webTextBoxs.typeText(locators[webElem], mobileNumber);
});
});

Then("user enter value email in the {string} input field", function (webElem) {
  cy.get('@emailId').then((emailId) => {
  webTextBoxs.typeText(locators[webElem], emailId);
});
});

Then("user selects checkbox with value {string}", function (gender) {
  webXpath.clickByXpath("visibleText",gender);
});
