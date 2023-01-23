import Loctors from "../myDoctorLocators/mergingLocators";
const locators = new Loctors();
class WebTextBox {

    clearText(element) {

        cy.get(locators.getLoctors(element)).clear().then(function () {
            cy.log(' Clearing of field !!!');
        }, function (err) {
            cy.log('--->Error: Clearing did not perform due to: ' + err);
        });
    }

    typeText(element, data) {
        cy.get(locators.getLoctors(element)).type(data).then(function () {
            cy.log('Typing of the field with value: ' + data);
        }, function (err) {
            cy.log('--->Error: Typing of the field with value:' + data + ' was not done due to: ' + err);
        });
    }

    typeTextWithoutClearingExistingText(element, data) {

        cy.get(locators.getLoctors(element)).type(data).then(function () {
            cy.log('Typing of the field with value: ' + data);
        }, function (err) {
            cy.log(colors.red('--->Error: Typing of the field with value:' + data + ' was not done due to: ' + err));
        });
    }
}

export default WebTextBox