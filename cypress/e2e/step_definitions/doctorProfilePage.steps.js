import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

import WebButton from "../../ui/webButton";
import GenericActions from "../../utilities/genericActions";
import WebTextBox from "../../ui/webTextBox";
import WebXpath from "../../ui/webXpath";
import WebText from "../../ui/webText";
import GenericHelpers from "../../utilities/genericHelpers";
const generic = new GenericActions();
const webTextBoxs = new WebTextBox();
const webButtons = new WebButton();
const webXpath = new WebXpath();
const webText = new WebText();
const genericHelpers = new GenericHelpers();

Then("{string} should be {string}",function(elementIdentifier,webElemt){
if(webElemt=='displayed'){
    genericHelpers.elementIsDisplayed(elementIdentifier);
}
else {
    genericHelpers.elementIsEnabled(elementIdentifier)
}
})
Then("Corresponding {string} along with {string} should get Displayed",function(elementIdentifier){
    cy.wait(2000)
        cy.log(elementIdentifier);
        let doctorName = [];
          doctorName = elementIdentifier.split(',');
       for (let count=0;count<doctorName.length;count++){
        webText.verifyPartialText(elementIdentifier, doctorName[count]);
       }
});
    