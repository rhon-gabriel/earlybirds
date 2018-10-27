@javascript
Feature: Registered user can become subscriber and gain access to premium content

    As a registered user
    In order to gain access to premium content
    I would like to become a subscriber


    Background:

        Given the following users exist
            | email            | subscriber |
            | user_1@email.com | false      |
            | user_2@email.com | true       |

        Given the following categories exist
            | name     |
            | general  |
            | politics |

        Given the following articles exist
            | header          | subheader | premium_status | category | status   |
            | Premium article | Paid for  | premium        | general  | approved |
            | Free article    | For free  | free           | politics | approved |

        And I am logged in as "user_1@email.com"

    Scenario: User is restricted from premium content if he is NOT a subscriber
        Given I visit the site
        Then I should see "For free"
        And I should not see "Paid for"
        But I should see "You have to subscribe to see this content"

    Scenario: User is allowed to see premium content if he is a subscriber
        Given I visit the site
        Then I click on "Get Premium"
        And I click on "Submit FAKE payment"
        Then I should be on the landing page
        Then I should see "Thank you for registering for a premium subscription."
        And I should see "For free"
        And I should see "Paid for"

