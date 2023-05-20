import Loctors from "../myDoctorLocators/mergingLocators";
const locators = new Loctors();
class WebButton {
  
    click(element) {
        cy.get(locators.getLoctors(element)).click().then(function () {
            cy.log("The element got clicked.");
        }, function (err) {
            cy.log("--->Error: The element couldn't get clicked due to: " + err);
        });
    }
    clicks(element) {
        cy.get(element).click().then(function () {
            cy.log("The element got clicked.");
        }, function (err) {
            cy.log("--->Error: The element couldn't get clicked due to: " + err);
        });
    }

    multipleClick(element) {
        cy.get(locators.getLoctors(element)).click({ multiple: true }).then(function () {
            cy.log("The element got clicked.");
        }, function (err) {
            cy.log("--->Error: The element couldn't get clicked due to: " + err);
        });
    }

    focusClick(element) {
        cy.get(locators.getLoctors(element)).click({ force: true }).then(function () {
            cy.log("The element got clicked.");
        }, function (err) {
            cy.log("--->Error: The element couldn't get clicked due to: " + err);
        });
    }

    realclick(element) {
        cy.get(locators.getLoctors(element)).realClick().then(function () {
            cy.log("The element got clicked.");
        }, function (err) {
            cy.log("--->Error: The element couldn't get clicked due to: " + err);
        });
    }

    check(element){
        cy.get(locators.getLoctors(element)).check().then(function() {
            cy.log("The element got checked");
        }), function (err){
            cy.log("-->Error: The element couldn't get checked due to:"+ err);
        }
    }
}

export default WebButton;