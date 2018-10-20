@javascript

Feature: Editor can set approval status and comment
    As an editor,
    In order to maintain the quality of Early Bird's content,
    I would like to comment and approve the content created before it is published.

    Background:
        Given the following categories exist
            | name        |
            | Programming |

        Given the following articles exist
            | header        | subheader             | body                     | category    | status   |
            | Top title     | A breaking news item  | Today at craftacademy    | Programming | pending  |

    Scenario: Approve article for publishing
        When I visit the admin page
        And I click on "Review articles"
        Then I should see "Top title"
        And I should see "A breaking news item"
        And I should see "Today at craftacademy"
        Then I check "approve"
        And I click "Submit"
        Then I should see "Article approved for publication"