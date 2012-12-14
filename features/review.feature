Feature: Review

    Scenario: Creating and deleting a review
        Given that the user is on the signup page
        And he fills in "Name" with "review"
        And he adds in "Email" with "r@r.com"
        And he enters in "Password" with "review"
        And he slots in "Password confirmation" with "review"
        And he sees Signed in as review
        And he visits the athlete number 1
        Then he should see the option of adding a new review
        When he clicks to add a new review
        Then he lands on the add a new review page
        And he submits the review
        Then the review should be created
        When the user deletes a review
        Then the review should be deleted