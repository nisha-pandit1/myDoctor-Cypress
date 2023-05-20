import Loctors from "../myDoctorLocators/mergingLocators";
const locators = new Loctors();

class WebSelectBox {

    selectDropDownUsingText(element, text) {

        cy.get(locators.getLoctors(element)).select(text).then(function () {
            cy.log("--->Success: The " + text + " in dropdown got clicked.");
        }, function (err) {
            cy.log("--->Error: The " + text + " in dropdown couldn't get clicked due to: " + err);
        });


    }
}

export default WebSelectBox