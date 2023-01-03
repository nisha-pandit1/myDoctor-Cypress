class GenericHelpers  {
  
    elementCount(element) {

        try {
            return cy.get(element).its('length').then(function (size) {
                return new Promise(function (resolve, reject) {
                    resolve(size);
                })
            })
        }
        catch (err) {
            cy.log("count of element cannot be found");
        }
    }

    elementIsPresent(element) {
        cy.get(element).should('exist').then(function() {
            cy.log("The Element: " + element + " is Present in the webpage.");
        }), function (err){
            cy.log("The Element: " + element + " is not Present in the webpage.");
          }

    }
       
    
    elementIsNotPresent(element) {
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

    elementIsDisplayed(element) {
        cy.get(element).should('be.visible').then(function() {
            cy.log("The Element: " + element + " is Displyaed in the webpage.");
        }), function (err){
            cy.log("The Element: " + element + " is not Displayed in the webpage.");
          }

    }

    elementIsNotDisplayed(element) {
        cy.get(element).should('not.be.visible').then(function() {
            cy.log("The Element: " + element + " is not Displyaed in the webpage.");
        }), function (err){
            cy.log("The Element: " + element + " is Displayed in the webpage.");
         }
    }

    elementIsEnabled(element) {

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
   
    elementIsNotEnabled(element) {
        cy.get(element).should("be.disabled").then(function() {
            cy.log("The Element: " + element + " is Disabled in the webpage.");
        }), function (err){
            cy.log("The Element: " + element + " is not Displayed in the webpage.");
         }
    }
    

    
    shouldHaveCSS(element, cssname, value) {
        element.should('have.css', cssname, value).then(function (text) {
            cy.log("The element have css value: " + value);

        }, function (err) {
            cy.log("--->Error: The element dosn't have css expected css value due to: " + err);
        });
    }

    getAttribute(element, attribute) {
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