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

Then("user enter value in the {string} input field", function (elementIdentifier) {
  if (elementIdentifier=="Email"){
    var email = generic.generateEmailAddresss();
    cy.wrap(email).as("emailId");
    webTextBoxs.typeText(locators[elementIdentifier], email);
  }
  else{
    var mobileNo = generic.generateMobileNumber();
      cy.wrap(mobileNo).as("mobileNumber");
      webTextBoxs.typeText(locators[elementIdentifier], mobileNo);
  }
  
});
Then("user enters value in the {string} input field", function (elementIdentifier) {
  if (elementIdentifier=="Email"){
      cy.get('@mobileNumber').then((mobileNumber) => {
  webTextBoxs.typeText(locators[elementIdentifier], mobileNumber);});
      }
      else{
        cy.get('@emailId').then((emailId) => {
            webTextBoxs.typeText(locators[elementIdentifier], emailId);});
        }
});

Then("user selects checkbox with value {string}", function (gender) {
  webXpath.clickByXpath("visibleText",gender);
});
