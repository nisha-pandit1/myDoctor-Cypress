import locators from "../pages/MydoctorLocators.json";
class WebTextBox {

    clearText(webElem) {

        cy.get(locators[webElem]).clear().then(function () {
            cy.log(' Clearing of field !!!');
        }, function (err) {
            cy.log('--->Error: Clearing did not perform due to: ' + err);
        });
    }

    typeText(webElem, data) {
        cy.get(locators[webElem]).type(data).then(function () {
            cy.log('Typing of the field with value: ' + data);
        }, function (err) {
            cy.log('--->Error: Typing of the field with value:' + data + ' was not done due to: ' + err);
        });
    }

    typeTextWithoutClearingExistingText(webElem, data) {

        cy.get(locators[webElem]).type(data).then(function () {
            cy.log('Typing of the field with value: ' + data);
        }, function (err) {
            cy.log(colors.red('--->Error: Typing of the field with value:' + data + ' was not done due to: ' + err));
        });
    }
}

export default WebTextBox