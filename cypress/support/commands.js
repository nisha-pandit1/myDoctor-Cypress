// ***********************************************
// This example commands.js shows you how to
// create various custom commands and overwrite
// existing commands.
//
// For more comprehensive examples of custom
// commands please read more here:
// https://on.cypress.io/custom-commands
// ***********************************************
//
//
// -- This is a parent command --
// Cypress.Commands.add('login', (email, password) => { ... })
//
//
// -- This is a child command --
// Cypress.Commands.add('drag', { prevSubject: 'element'}, (subject, options) => { ... })
//
//
// -- This is a dual command --
// Cypress.Commands.add('dismiss', { prevSubject: 'optional'}, (subject, options) => { ... })
//
//
// -- This will overwrite an existing command --
// Cypress.Commands.overwrite('visit', (originalFn, url, options) => { ... })

// import locators from "../myDoctorLocators";
// import { readFile } from 'fs';

// readFile('/etc/passwd', (err, data) => {
//   if (err) throw err;
//   console.log(data);
// });
// Cypress.Commands.add('loadJson',(token,filename)=>{
//     cy.readFile('../myDoctorLocators'+filename).its(token).then(val) => 
//     ({
//       cy.fetchElement(token,JSON.stringify(val));
//     })
// })
Cypress.Commands.add('Login', (email, password) => {
    cy.visit("/");
    cy.get(".MuiButton-label").click();
    cy.get("#emailOrMobile").type("aka@gmail.com");
    cy.get("#password").type("MYdoctors@149");
    cy.get(".MuiButton-label:last()").click();
});