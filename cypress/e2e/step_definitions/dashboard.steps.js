import { Given, Then, When } from '@badeball/cypress-cucumber-preprocessor';
import GenericHelpers from '../../utilities/genericHelpers';
import WebButton from '../../ui/webButton';
import WebText from '../../ui/webText';
import WebXpath from "../../ui/webXpath";
import dashboardLocators from "../../myDoctorLocators/dashboard.json"
const genericHelpers = new GenericHelpers();
const webButton = new WebButton();
const webText = new WebText();
const webXpath = new WebXpath();

When("user clicks on {string} {string}", function (elementIdentifier, pageNumber) {
    let identifier = `${dashboardLocators[elementIdentifier]}:contains("${pageNumber}")`;
    webButton.clicks(identifier);
})