import { Given, When, Then } from '@badeball/cypress-cucumber-preprocessor'

Given('I navigate to the EngageSphere app having already accepted the cookies banner', () =>{
    cy.setCookie('cookieConsent', 'accepted')
    cy.visit('https://engage-sphere.vercel.app/')
})