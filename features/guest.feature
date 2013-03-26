Feature: Guest
  
  Scenario: Visiting home page
    Given a guest visits the home page
    And he should see a sign in link
    
  Scenario: Guest tries to submit a review
    Given a guest clicks Athletes link
    Then he should see a list of athletes
    When he clicks show link
    And he should see athlete region
    Then he should not be able to submit a review