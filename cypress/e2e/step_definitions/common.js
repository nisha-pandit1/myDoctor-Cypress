import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import locators from "../../pages/MydoctorLocators.json";
import WebButton from "../../helpers/webButton";
import WebElement from "../../helpers/webElement";
import WebTextBox from "../../helpers/webTextBox";
import GenericActions from "../../utilities/genericActions";
import WebXpath from "../../helpers/webXpath";
const generic = new GenericActions();
const webTextBoxs = new WebTextBox();
const webButtons = new WebButton();
const webElements = new WebElement();
const webXpath = new WebXpath();
Given('user is on the homepage', function () {
    generic.visit();
});

When("user enters value {string} in the {string} input field", function (userData, webElem) {
    cy.wrap(userData).as("Specialities");
    webTextBoxs.typeText(locators[webElem], userData);
});

When("user clicks on the {string}", (webElem) => {
    webButtons.click(locators[webElem]);
});

Then("user can view message {string}", function (message) {
    let messageText = [];
    messageText = message.split('.');
    cy.log(messageText);
    for (let count = 0; count < messageText.length; count++) {
        webXpath.shouldContainTextByXpath("visibleText", messageText[count]);
    };
});


Given("user", () => {
    
})






