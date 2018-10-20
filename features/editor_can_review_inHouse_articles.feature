@javascript

Feature: Editor can review in-house articles
    As an editor,
    In order to maintain the quality of Early Bird's content,
    I would like to review the content created before it is published.

    Background:
        Given the following categories exist
            | name        |
            | Programming |
            | Education   |

        Given the following articles exist
            | header        | subheader             | body                     | category    | status   |
            | Top title     | A breaking news item  | Today at craftacademy    | Programming | pending  |
            | Other stories | Another breaking news | Tomorrow at craftacademy | Education   | approved |


    Scenario: View list of articles submitted for approval
        When I visit the admin page
        And I click on "Review articles"
        Then I should see "Top title"
        And I should see "A breaking news item"
        And I should see "Today at craftacademy"
        And I should not see "Other stories"
        And I should not see "Another breaking news"
        And I should not see "Tomorrow at craftacademy"