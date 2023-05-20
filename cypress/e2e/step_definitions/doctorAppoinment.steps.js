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

Then("user {string} button is {string}", function (elementIdentifier, element) {
    if (element == "disabled") {
        genericHelpers.elementIsNotEnabled(elementIdentifier)
    }
    else {
        genericHelpers.elementIsEnabled(elementIdentifier)
    }
})

Then("user checks the consult {string}", function (elementIdentifier) {
    genericHelpers.elementIsDisplayed(elementIdentifier)
})