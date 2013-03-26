Feature: Search
  
  Scenario: Searching for an athlete
    Given the user is on the home page
        And he sees the search box
    When he searches for athletes called Jones
    Then he should see the result as Jones