Feature: Cookies Consent Banner

@engagesphere
Scenario: consents to the cookies polices
  Given I access the EngageSphere app without any cookies set
  And I see the cookies consent banner
  When I click on the "Accept" button
  Then the cookies banner is closed
  And the cookieConsent cookie is set with the value accepted

@engagesphere
  Scenario: decline the cookies polices
    Given I access the EngageSphere app without any cookies set
    And I see the cookies consent banner
    When I click on the "Decline" button
    Then the cookies banner is closed
    And the cookieConsent cookie is set with the value declined

