import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import WebButton from "../../ui/webButton";
import GenericActions from "../../utilities/genericActions";
import WebTextBox from "../../ui/webTextBox";
import WebXpath from "../../ui/webXpath";
const generic = new GenericActions();
const webTextBoxs = new WebTextBox();
const webButtons = new WebButton();
const webXpath = new WebXpath();

Given('user is on the homepage', function () {
    generic.visit();
});

When("user enters value {string} in the {string} input field", function (userData, elementIdentifier) {
    cy.wrap(userData).as("Specialities");

    webTextBoxs.typeText(elementIdentifier, userData);
});

When("user clicks on the {string}", (elementIdentifier) => {
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








