import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import WebText from "../../helpers/webText";
import WebTextBox from "../../helpers/webTextBox";
import locators from "../../pages/MydoctorLocators.json";
const webTextBoxs = new WebTextBox();
const webText= new WebText();
Then(
  "corresponding page appears with the expected {string}: {string}",
  function (elementIdentifier,doctorNames) {
    cy.log(doctorNames);
    let doctorName = [];
      doctorName = doctorNames.split(',');
   for (let count=0;count<doctorName.length;count++){
    webText.verifyPartialText(locators[elementIdentifier], doctorName[count]);
};
});

Then("user enters {string} in the {string} field", function (specialities,elementIdentifier) {
  cy.wrap(specialities).as("specialities");
 webTextBoxs.typeText(locators[elementIdentifier], specialities);
 webTextBoxs.typeText(locators[elementIdentifier], "{downArrow}");
 webTextBoxs.typeText(locators[elementIdentifier], "{enter}");
});






  
