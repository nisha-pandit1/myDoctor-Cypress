import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import GenericActions from "../../utilities/genericActions";
import WebTextBox from "../../ui/webTextBox";
import WebXpath from "../../ui/webXpath";
import Urls from "../../envUrls/urls.json";

const generic = new GenericActions();
const webTextBoxs = new WebTextBox();
const webXpath = new WebXpath();

Given("user navigates to the {string} page", function (url) {
  cy.visit(Urls[url]);
});

Then("user enters value in the {string} input field", function (elementIdentifier) {
if(elementIdentifier=='Email'){
  var email = generic.generateEmailAddresss();
  cy.wrap(email).as("emailId");
  webTextBoxs.typeText(elementIdentifier, email);
}
else{
  var mobileNo = generic.generateMobileNumber();
  cy.wrap(mobileNo).as("mobileNumber");
  webTextBoxs.typeText(elementIdentifier, mobileNo);
}
});


Then("user enter users data in the {string} input field", function (elementIdentifier) {
  if(elementIdentifier=='Email')
  cy.get('@emailId').then((emailId) => {
    webTextBoxs.typeText(elementIdentifier, emailId);
 
});
else{
  cy.get('@mobileNumber').then((mobileNumber) => {
    webTextBoxs.typeText(elementIdentifier, mobileNumber);
  });
}
});
Then("user selects checkbox with value {string}", function (gender) {
  webXpath.clickByXpath("visibleText",gender);
});
