Feature: Greeting Message

  Background: access EngeSphere with the cookies consent banner already accepted
    Given I navigate to the EngageSphere app having already accepted the cookies banner

  @engagesphere
  Scenario: shows the default greeting
    Then I see the following greeting: Hi there!

  @engagesphere @smoke 
  Scenario: shows a customized greeting
    When I type "<name>" in the name input field
    Then I see the following greeting: Hi "<name>"!

    Examples:
      | name | 
      | Luiz |
      | Eloah |
      | Paloma |
      | Squirrel | 

