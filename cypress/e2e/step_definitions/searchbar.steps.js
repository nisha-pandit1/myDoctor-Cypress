import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import WebText from "../../ui/webText";
import WebTextBox from "../../ui/webTextBox";

const webTextBoxs = new WebTextBox();
const webText= new WebText();

Then(
  "corresponding page appears with the expected {string}: {string}",
  function (elementIdentifier,doctorNames) {
    cy.log(doctorNames);
    let doctorName = [];
      doctorName = doctorNames.split(',');
   for (let count=0;count<doctorName.length;count++){
    webText.verifyPartialText(elementIdentifier, doctorName[count]);
};
});

Then("user enters {string} in the {string} field", function (specialities,elementIdentifier) {
cy.wrap(specialities).as("specialities");
 webTextBoxs.typeText(elementIdentifier, specialities);
 webTextBoxs.typeText(elementIdentifier, "{downArrow}");
 webTextBoxs.typeText(elementIdentifier, "{enter}");
});






  
