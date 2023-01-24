<<<<<<< HEAD
<<<<<<< HEAD
import Loctors from "../myDoctorLocators/mergingLocators";
const locators = new Loctors();
=======
import locators from "../pages/MydoctorLocators.json";
>>>>>>> 334278741e962ac1433265b57e77694626049893
=======
import locators from "../pages/MydoctorLocators.json";
>>>>>>> 3a1f0936280e82e795ee1d200fb79090acd40ca8
class WebTextBox {

    clearText(webElem) {

<<<<<<< HEAD
<<<<<<< HEAD
        cy.get(locators.getLoctors(element)).clear().then(function () {
=======
        cy.get(locators[webElem]).clear().then(function () {
>>>>>>> 334278741e962ac1433265b57e77694626049893
=======
        cy.get(locators[webElem]).clear().then(function () {
>>>>>>> 3a1f0936280e82e795ee1d200fb79090acd40ca8
            cy.log(' Clearing of field !!!');
        }, function (err) {
            cy.log('--->Error: Clearing did not perform due to: ' + err);
        });
    }

<<<<<<< HEAD
<<<<<<< HEAD
    typeText(element, data) {
        cy.get(locators.getLoctors(element)).type(data).then(function () {
=======
    typeText(webElem, data) {
        cy.get(locators[webElem]).type(data).then(function () {
>>>>>>> 334278741e962ac1433265b57e77694626049893
=======
    typeText(webElem, data) {
        cy.get(locators[webElem]).type(data).then(function () {
>>>>>>> 3a1f0936280e82e795ee1d200fb79090acd40ca8
            cy.log('Typing of the field with value: ' + data);
        }, function (err) {
            cy.log('--->Error: Typing of the field with value:' + data + ' was not done due to: ' + err);
        });
    }

    typeTextWithoutClearingExistingText(webElem, data) {

<<<<<<< HEAD
<<<<<<< HEAD
        cy.get(locators.getLoctors(element)).type(data).then(function () {
=======
        cy.get(locators[webElem]).type(data).then(function () {
>>>>>>> 334278741e962ac1433265b57e77694626049893
=======
        cy.get(locators[webElem]).type(data).then(function () {
>>>>>>> 3a1f0936280e82e795ee1d200fb79090acd40ca8
            cy.log('Typing of the field with value: ' + data);
        }, function (err) {
            cy.log(colors.red('--->Error: Typing of the field with value:' + data + ' was not done due to: ' + err));
        });
    }
}

export default WebTextBox