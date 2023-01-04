import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import locators from "../../pages/MydoctorLocators.json";
import WebButton from "../../ui/webButton";
import WebTextBox from "../../ui/webTextBox";
import GenericActions from "../../utilities/genericActions";
import WebXpath from "../../ui/webXpath";
const generic = new GenericActions();
const webTextBoxs = new WebTextBox();
const webButtons = new WebButton();
const webXpath = new WebXpath();

Given('user is on the homepage', function () {
    generic.visit();
});

When("user enters value {string} in the {string} input field", function (userData, webElem) {
    cy.wrap(userData).as("Specialities");
    webTextBoxs.typeText(webElem, userData);
});

When("user clicks on the {string}", (webElem) => {
    webButtons.click(webElem);
});

Then("user can view message {string}", function (message) {
    let messageText = [];
    messageText = message.split('.');
    cy.log(messageText);
    for (let count = 0; count < messageText.length; count++) {
        webXpath.shouldContainTextByXpath("visibleText", messageText[count]);
    };
});








