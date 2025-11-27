/// <reference types="cypress" />

import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps";

Given('que eu estou na página do Gov.br', () => {
    cy.log('Navegando para a página do Gov.br');
    cy.visit("https://www.gov.br/");
});

When('eu clicar no link "Órgãos do Governo"', () => {
    cy.log('Clicando no link Orgãos do Governo');
    cy.contains('Órgãos do Governo').click({ force: true });

});

Then('eu devo ser redirecionado para a página de órgãos do governo', () => {
    cy.log('Verificando o título da página');
    cy.title().should('include', 'Órgãos do Governo');
   
});
When('eu clicar no link com URL {string}', (linkUrl) => {
  cy.visit(linkUrl); 
});

Then('eu devo ser redirecionado para a página do órgão {string}', (expectedTitle) => {
  cy.title().should('include', expectedTitle); 
});
