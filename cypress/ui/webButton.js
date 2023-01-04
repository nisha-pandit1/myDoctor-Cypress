import locators from "../pages/MydoctorLocators.json";

class WebButton {
  
    click(webElem) {
        cy.get(locators[webElem]).click().then(function () {
            cy.log("The element got clicked.");
        }, function (err) {
            cy.log("--->Error: The element couldn't get clicked due to: " + err);
        });
    }

    multipleClick(webElem) {
        cy.get(locators[webElem]).click({ multiple: true }).then(function () {
            cy.log("The element got clicked.");
        }, function (err) {
            cy.log("--->Error: The element couldn't get clicked due to: " + err);
        });
    }

    focusClick(webElem) {
        cy.get(locators[webElem]).click({ force: true }).then(function () {
            cy.log("The element got clicked.");
        }, function (err) {
            cy.log("--->Error: The element couldn't get clicked due to: " + err);
        });
    }

    realclick(webElem) {
       cy.get(locators[webElem]).realClick().then(function () {
            cy.log("The element got clicked.");
        }, function (err) {
            cy.log("--->Error: The element couldn't get clicked due to: " + err);
        });
    }

    check(webElem){
       cy.get(locators[webElem]).check().then(function() {
            cy.log("The element got checked");
        }), function (err){
            cy.log("-->Error: The element couldn't get checked due to:"+ err);
        }
    }
}

export default WebButton;