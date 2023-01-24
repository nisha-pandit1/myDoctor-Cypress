<<<<<<< HEAD
import Loctors from "../myDoctorLocators/mergingLocators";
const locators = new Loctors();
=======
import locators from "../pages/MydoctorLocators.json";

>>>>>>> 3a1f0936280e82e795ee1d200fb79090acd40ca8
class GenericHelpers  {
  
    elementCount(webElem) {

        try {
<<<<<<< HEAD
            return cy.get(locators.getLoctors(element)).its('length').then(function (size) {
=======
            return cy.get(locators[webElem]).its('length').then(function (size) {
>>>>>>> 3a1f0936280e82e795ee1d200fb79090acd40ca8
                return new Promise(function (resolve, reject) {
                    resolve(size);
                })
            })
        }
        catch (err) {
            cy.log("count of element cannot be found");
        }
    }

<<<<<<< HEAD
    elementIsPresent(element) {
        cy.get(locators.getLoctors(element)).should('exist').then(function() {
=======
    elementIsPresent(webElem) {
        cy.get(locators[webElem]).should('exist').then(function() {
>>>>>>> 3a1f0936280e82e795ee1d200fb79090acd40ca8
            cy.log("The Element: " + element + " is Present in the webpage.");
        }), function (err){
            cy.log("The Element: " + element + " is not Present in the webpage.");
          }

    }
       
    
    elementIsNotPresent(webElem) {
        try {
            if (element.should('not.exist')) {
                cy.log("The Element: " + element + " is Not Present in the webpage.");
            }
            else {
                cy.log("The Element: " + element + " is Present in the webpage.");
            }
        }
        catch (err) {
            cy.log("There was an Exception in checking whether the element is Present.");
        }
    }

<<<<<<< HEAD
    elementIsDisplayed(element) {
        cy.get(locators.getLoctors(element)).should('be.visible').then(function() {
=======
    elementIsDisplayed(webElem) {
        cy.get(locators[webElem]).should('be.visible').then(function() {
>>>>>>> 3a1f0936280e82e795ee1d200fb79090acd40ca8
            cy.log("The Element: " + element + " is Displyaed in the webpage.");
        }), function (err){
            cy.log("The Element: " + element + " is not Displayed in the webpage.");
          }

    }

<<<<<<< HEAD
    elementIsNotDisplayed(element) {
        cy.get(locators.getLoctors(element)).should('not.be.visible').then(function() {
=======
    elementIsNotDisplayed(webElem) {
        cy.get(locators[webElem]).should('not.be.visible').then(function() {
>>>>>>> 3a1f0936280e82e795ee1d200fb79090acd40ca8
            cy.log("The Element: " + element + " is not Displyaed in the webpage.");
        }), function (err){
            cy.log("The Element: " + element + " is Displayed in the webpage.");
         }
    }

    elementIsEnabled(webElem) {

        try {
            if (element.should("not.be.disabled")) {
                cy.log("The Element: " + element + " is Displyaed in the webpage.");
            }
            else {
                cy.log("The Element: " + element + " is not Displayed in the webpage.");
            }
        }
        catch (err) {
            cy.log("There was an Exception in checking whether the element is Displayed.");
        }

    }
   
<<<<<<< HEAD
    elementIsNotEnabled(element) {
        cy.get(locators.getLoctors(element)).should("be.disabled").then(function() {
=======
    elementIsNotEnabled(webElem) {
        cy.get(locators[webElem]).should("be.disabled").then(function() {
>>>>>>> 3a1f0936280e82e795ee1d200fb79090acd40ca8
            cy.log("The Element: " + element + " is Disabled in the webpage.");
        }), function (err){
            cy.log("The Element: " + element + " is not Displayed in the webpage.");
         }
    }
    

    
    shouldHaveCSS(webElem, cssname, value) {
        element.should('have.css', cssname, value).then(function (text) {
            cy.log("The element have css value: " + value);

        }, function (err) {
            cy.log("--->Error: The element dosn't have css expected css value due to: " + err);
        });
    }

    getAttribute(webElem, attribute) {
        element.invoke('attr', attribute).then(function (text) {
            cy.log("The attribute of element is captured which is: " + text);
            return text;
        }, function (err) {
            cy.log("--->Error: The attribute of the element couldn't be captured due to: " + err);
        });

    }

    drag(sourceElement, targetElement) {
        cy.get(sourceElement).drag(targetElement).then(function () {
            cy.log('Element is dragged from ' + sourceElement + ' to ' + targetElement);
        }, function (err) {
            cy.log('--->Error: Unable to drag Element due to' + err);
        });
    }



}

export default GenericHelpers;