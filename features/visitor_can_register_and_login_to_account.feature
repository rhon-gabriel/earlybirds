@javascript

Feature: Login capabilities
    As a visitor,
    In order to access premium content,
    I would like to be able to register and login to Early Birds.

    Background:
        Given the following categories exist
            | name     |
            | general  |
            | business |

        Given the following articles exist
            | header            | subheader | body                     | category | premium_status | status   |
            | A free article    | For free  | Today at craftacademy    | general  | free           | approved |
            | A premium article | Paid for  | Tomorrow at craftacademy | business | premium        | approved |


    Scenario: Visitor sucessfully registers and logs in to site
        Given I visit the site
        And I should see "For free"
        And I should not see "Paid for"
        And I click on "Login"
        And I click on "Sign up"
        Then I should be on the signup page
        And I fill in "Email" with "email@email.com"
        And I fill in "Password" with "mypassword"
        And I fill in "Password confirmation" with "mypassword"
        And I click on "Sign up"
        Then I should see "You have signed up successfully."
        Then I click on "Logout"
        And I click on "Login"
        Then I should be on the signin page
        And I fill in "Email" with "email@email.com"
        And I fill in "Password" with "mypassword"
        And I click on "Log in"
        Then I should see "Signed in successfully."
        And I should not see "Paid for"