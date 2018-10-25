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
            | header          | premium_status | category |
            | Premium article | premium        | general  |
            | Free article    | free           | politics |

        And I am logged in as "user_1@email.com"

    Scenario: User is restricted from premium content if he is NOT a subscriber
        Given I visit the site
        Then I should see "Free article"
        And I should not see "Premium article"
        But I should see "You have to subscribe to see this content"

    Scenario: User is allowed to see premium content if he is a subscriber
        Given I visit the site
        And I should see "Free article"
        And I should not see "Premium article"
        Then I click on "Become a premium subscriber"
        And I fill in "Name" with "xxxxxx"
        And I fill in "Card number" with "xxxxxx"
        And I fill in "Expiry date" with "xxxxxx"
        And I fill in "Postcode" with "xxxxxx"
        And I click on "Submit payment"
        Then I should be on the landing page
        Then I should see "Thank you for registering for a premium subscription."
        And I should see "Other news story"
        And I should see "Premium article"

