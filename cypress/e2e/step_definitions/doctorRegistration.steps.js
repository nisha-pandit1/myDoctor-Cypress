import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import locators from "../../pages/MydoctorLocators.json";
import GenericActions from "../../utilities/genericActions";
import WebTextBox from "../../ui/webTextBox";
import WebXpath from "../../ui/webXpath";
import Urls from "../../pages/urls.json";
const generic = new GenericActions();
const webTextBoxs = new WebTextBox();
const webXpath = new WebXpath();

Given("user navigates to the {string} page", function (url) {
  cy.visit(Urls[url]);
});

Then("user enters value in the {string} input field", function (webElem) {
if(webElem=='Email'){
  var email = generic.generateEmailAddresss();
  cy.wrap(email).as("emailId");
  webTextBoxs.typeText(webElem, email);
}
else{
  var mobileNo = generic.generateMobileNumber();
  cy.wrap(mobileNo).as("mobileNumber");
  webTextBoxs.typeText(webElem, mobileNo);
}
});


Then("user enter users data in the {string} input field", function (webElem) {
  if(webElem=='Email')
  cy.get('@emailId').then((emailId) => {
    webTextBoxs.typeText(webElem, emailId);
 
});
else{
  cy.get('@mobileNumber').then((mobileNumber) => {
    webTextBoxs.typeText(webElem, mobileNumber);
  });
}
});
Then("user selects checkbox with value {string}", function (gender) {
  webXpath.clickByXpath("visibleText",gender);
});
