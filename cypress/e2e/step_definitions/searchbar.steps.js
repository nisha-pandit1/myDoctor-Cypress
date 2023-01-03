import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import WebText from "../../ui/webText";
import WebTextBox from "../../ui/webTextBox";
import locators from "../../pages/MydoctorLocators.json";
const webTextBoxs = new WebTextBox();
const webText= new WebText();
Then(
  "corresponding page appears with the expected {string}: {string}",
  function (webElem,doctorNames) {
    cy.log(doctorNames);
    let doctorName = [];
      doctorName = doctorNames.split(',');
   for (let count=0;count<doctorName.length;count++){
    webText.verifyPartialText(locators[webElem], doctorName[count]);
};
});

Then("user enters {string} in the {string} field", function (specialities,webElem) {
  cy.wrap(specialities).as("specialities");
 webTextBoxs.typeText(locators[webElem], specialities);
 webTextBoxs.typeText(locators[webElem], "{downArrow}");
 webTextBoxs.typeText(locators[webElem], "{enter}");
});






  
