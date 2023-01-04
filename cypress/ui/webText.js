import locators from "../pages/MydoctorLocators.json";
class WebText {
   
    getText(webElem) {
        try {
            return   cy.get(locators[webElem]).invoke('text').then(function (text) {
                return new Promise(function (resolve, reject) {
                    cy.log("The text of element is captured which is: " + err);
                    resolve(text);
                })
            })
        }
        catch (err) {
            cy.log("--->Error: The text of the element couldn't be captured due to: " + err);
        }
    }

    shouldHaveText(webElem, text) {
         cy.get(locators[webElem]).should("have.text", text).then(function (text) {
            cy.log("The element is have: " + text);

        }, function (err) {
            cy.log("--->Error: The element dosn't have text due to: " + err);
        });

    }
    shouldHaveValue(webElem, value) {
         cy.get(locators[webElem]).should('have.value', value).then(function (text) {
            cy.log("The element have value: " + value);

        }, function (err) {
            cy.log("--->Error: The element dosn't have value due to: " + err);
        });

    }

    shouldContainText(webElem, text) {
         cy.get(locators[webElem]).should("contain", text).then(
          function (text) {
            cy.log("             The element contain: " + text);
          },
          function (err) {
            cy.log("--->Error: The element dosn't contain text due to: " + err);
          }
        );
      }

    verifyExactText(webElem, expectedtext) {
        try {
            if (  cy.get(locators[webElem]).should('have.text', expectedtext)) {
                cy.log("The Expected Text matches the actual " + expectedtext);
            }
            else {
                cy.log("The Expected Text does not matches the actual " + expectedtext);
            }
        }
        catch (err) {
            cy.log("There was an Exception in the comparison of Text");
        }
    }

    verifyPartialText(webElem, expectedtext) {
         cy.get(locators[webElem]).should('contain', expectedtext).then(
            function (text) {
                cy.log("The Expected Text matches the actual " + expectedtext);
            },
            function (err) {
                cy.log("The Expected Text does not matches the actual " + expectedtext);
            }
          );
        }
       
      

    verifyExactAttribute(webElem, attribute, value) {
        try {
            if (  cy.get(locators[webElem]).invoke('attr', attribute).should('equal', value)) {
                cy.log("The expected attribute: " + attribute + " value matches the actual " + value);
            }
            else {
                cy.log("The expected attribute: " + attribute + " value does not matches the actual " + value);
            }
        }
        catch (err) {
            cy.log("There was an Exception in the comparison of attibute value");
        }

    }

    verifyPartialAttribute(webElem, attribute, value) {

        try {
            if (  cy.get(locators[webElem]).invoke('attr', attribute).should('contain', value)) {
                cy.log("The expected attribute: " + attribute + " value matches the actual " + value);
            }
            else {
                cy.log("The expected attribute: " + attribute + " value does not matches the actual " + value);
            }
        }
        catch (err) {
            cy.log("There was an Exception in the comparison of attibute value");
        }
    }
}

export default WebText;