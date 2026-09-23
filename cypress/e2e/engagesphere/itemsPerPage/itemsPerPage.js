import { Given, When, Then } from '@badeball/cypress-cucumber-preprocessor'

When('I filter by {string} item per page', numberOfItems =>{
    cy.get('[aria-label="Pagination limit"]').select(numberOfItems)
})

Then('I see {string} table rows', numberOfItems =>{
    cy.get('table tbody tr').should('have.length', numberOfItems)
})

