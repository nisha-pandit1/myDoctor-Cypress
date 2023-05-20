import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import WebButton from "../../ui/webButton";
import GenericActions from "../../utilities/genericActions";
import WebTextBox from "../../ui/webTextBox";
import WebXpath from "../../ui/webXpath";
import WebText from "../../ui/webText";
import GenericHelpers from "../../utilities/genericHelpers";
import dashboardLocators from "../../myDoctorLocators/dashboard.json"
const generic = new GenericActions();
const webTextBoxs = new WebTextBox();
const webButtons = new WebButton();
const webXpath = new WebXpath();
const webText = new WebText();
const genericHelpers = new GenericHelpers();

When("user enters value {string} in the {string} input field", function (userData, elementIdentifier) {
    cy.wrap(userData).as("Specialities");
    webTextBoxs.typeText(elementIdentifier, userData);
});

When("user clicks on the {string}", (elementIdentifier) => {
    webText.getText(elementIdentifier);
    webButtons.click(elementIdentifier);
});

Then("user can view message {string}", function (message) {                                                  
    let messageText = [];
    messageText = message.split('.');
    cy.log(messageText);
    for (let count = 0; count < messageText.length; count++) {
        webXpath.shouldContainTextByXpath("visibleText", messageText[count]);
    };
});

Then("corresponding page appears with the expected {string}:{string}",
    function (elementIdentifier, doctorNames) {
        if (elementIdentifier == 'Showing results for text') {
            cy.get("@SpecialityCard").then((SpecialityCard) => {
                webText.shouldContainText(elementIdentifier, SpecialityCard);
            });
        }
        else {
            cy.log(doctorNames);
            let doctorName = [];
            doctorName = doctorNames.split(',');
            for (let count = 0; count < doctorName.length; count++) {
                webText.verifyPartialText(elementIdentifier, doctorName[count]);
            };
        }
    });

Given("User logs in with {string} credentials", function () {
    cy.Login();
})

Then("user can view list of {string}", function (elementIdentifier) {
    genericHelpers.elementIsDisplayed(elementIdentifier);
})

Then("User is on {string} {string}", function (pageNumber, elementIdentifier) {
    let identifier = `${dashboardLocators[elementIdentifier]}:contains("${pageNumber}")`;
    webText.verifyExactAttribute(identifier, 'aria-current', 'true');
    webButtons.clicks(identifier);
})


