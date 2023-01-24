<<<<<<< HEAD
import Loctors from "../myDoctorLocators/mergingLocators";
const locators = new Loctors();
=======
import locators from "../pages/MydoctorLocators.json";
>>>>>>> 334278741e962ac1433265b57e77694626049893
class WebText {
   
    getText(webElem) {
        try {
<<<<<<< HEAD
            return  cy.get(locators.getLoctors(element)).invoke('text').then(function (text) {
=======
            return   cy.get(locators[webElem]).invoke('text').then(function (text) {
>>>>>>> 334278741e962ac1433265b57e77694626049893
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

<<<<<<< HEAD
    shouldHaveText(element, text) {
        cy.get(locators.getLoctors(element)).should("have.text", text).then(function (text) {
=======
    shouldHaveText(webElem, text) {
         cy.get(locators[webElem]).should("have.text", text).then(function (text) {
>>>>>>> 334278741e962ac1433265b57e77694626049893
            cy.log("The element is have: " + text);

        }, function (err) {
            cy.log("--->Error: The element dosn't have text due to: " + err);
        });

    }
<<<<<<< HEAD
    shouldHaveValue(element, value) {
        cy.get(locators.getLoctors(element)).should('have.value', value).then(function (text) {
=======
    shouldHaveValue(webElem, value) {
         cy.get(locators[webElem]).should('have.value', value).then(function (text) {
>>>>>>> 334278741e962ac1433265b57e77694626049893
            cy.log("The element have value: " + value);

        }, function (err) {
            cy.log("--->Error: The element dosn't have value due to: " + err);
        });

    }

<<<<<<< HEAD
    shouldContainText(element, text) {
        cy.get(locators.getLoctors(element)).should("contain", text).then(
=======
    shouldContainText(webElem, text) {
         cy.get(locators[webElem]).should("contain", text).then(
>>>>>>> 334278741e962ac1433265b57e77694626049893
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
<<<<<<< HEAD
            if ( cy.get(locators.getLoctors(element)).should('have.text', expectedtext)) {
=======
            if (  cy.get(locators[webElem]).should('have.text', expectedtext)) {
>>>>>>> 334278741e962ac1433265b57e77694626049893
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

<<<<<<< HEAD
    verifyPartialText(element, expectedtext) {
        cy.get(locators.getLoctors(element)).should('contain', expectedtext).then(
=======
    verifyPartialText(webElem, expectedtext) {
         cy.get(locators[webElem]).should('contain', expectedtext).then(
>>>>>>> 334278741e962ac1433265b57e77694626049893
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
<<<<<<< HEAD
            if ( cy.get(locators.getLoctors(element)).invoke('attr', attribute).should('equal', value)) {
=======
            if (  cy.get(locators[webElem]).invoke('attr', attribute).should('equal', value)) {
>>>>>>> 334278741e962ac1433265b57e77694626049893
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
<<<<<<< HEAD
            if ( cy.get(locators.getLoctors(element)).invoke('attr', attribute).should('contain', value)) {
=======
            if (  cy.get(locators[webElem]).invoke('attr', attribute).should('contain', value)) {
>>>>>>> 334278741e962ac1433265b57e77694626049893
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