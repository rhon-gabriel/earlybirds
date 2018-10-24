@javascript

Feature: Editor can select if in-house approved article is free or premium
    As an editor,
    In order to balance making money with gathering interest,
    I would like to select if newly created content will be free or paid for before it is published.

    Background:
        Given the following categories exist
            | name        |
            | Programming |

        Given the following articles exist
            | header     | category    | status  | comment                      | premium_status |
            | Top title  | Programming | pending | No comments currently logged | free           |
            | Top title2 | Programming | pending | No comments currently logged | free           |


        Given I visit the admin page
        And I click on "Review articles"
        And I select "Approved" for "Top title"

    Scenario: Article successfully approved with Premium status
        And I select "Premium" for "Top title"
        And I click on "Update" for "Top title"
        Then I should see "Premium article approved for publication"