import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import loginFormData from "../../utilities/decrypt";
import WebTextBox from "../../ui/webTextBox";
import GenericActions from "../../utilities/genericActions";
import Urls from "../../envUrls/urls.json";

const webTextBoxs = new WebTextBox();
const generic = new GenericActions();

Then("user enters the users {string} in the {string} input field",function (userData,elementIdentifier) {
   let decoderdData= loginFormData.decoderdData(userData);
   webTextBoxs.typeText(elementIdentifier, decoderdData);
});

Then("user should navigate to the {string}", function (url) {
  generic.checkUrl(Urls[url]);
});

