import locators from "../pages/MydoctorLocators.json";
class WebSelectBox {

    selectDropDownUsingText(webElem, text) {

        cy.get(locators[webElem]).select(text).then(function () {
            cy.log("--->Success: The " + text + " in dropdown got clicked.");
        }, function (err) {
            cy.log("--->Error: The " + text + " in dropdown couldn't get clicked due to: " + err);
        });


    }
}

export default WebSelectBox