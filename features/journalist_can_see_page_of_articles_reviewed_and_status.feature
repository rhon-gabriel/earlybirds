@javascript

Feature: Journalist can see reviewed articles
    As a Journalist,
    In order to know if my article has been approved or if changes are needed,
    I would like to be able to see a list of submitted articles by current status.

    Background:
        Given the following categories exist
            | name        |
            | Programming |
            | Education   |

        Given the following articles exist
            | header        | subheader             | body                      | category    | status   |
            | Top title     | A breaking news item  | Today at craftacademy     | Programming | approved |
            | Other stories | Another breaking news | Tomorrow at craftacademy  | Education   | pending  |
            | More stories  | More breaking news    | Yesterday at craftacademy | Education   | rejected |


    Scenario: View list of reviewed articles
        When I visit the admin page
        Then I should see "Top title"
        And I should see "A breaking news item"
        And I should see "Today at craftacademy"
        And I should see "Approved"
        And I should see "More stories"
        And I should see "Yesterday at craftacademy"
        And I should see "Rejected"
        And I should not see "Other stories"
        And I should not see "Another breaking news"
        And I should not see "Tomorrow at craftacademy"