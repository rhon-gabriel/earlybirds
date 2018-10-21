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
            | header    | subheader            | body                  | category    | status  |
            | Top title | A breaking news item | Today at craftacademy | Programming | pending |

    Scenario: Approve article for publishing
        When I visit the admin page
        And I click on "Review articles"
        Then I should see "Top title"
        And I should see "A breaking news item"
        And I should see "Today at craftacademy"
        Then I select "Approved"
        And I click on "Update"
        Then I should see "Article approved for publication"

    Scenario: Reject article for publishing
        When I visit the admin page
        And I click on "Review articles"
        Then I should see "Top title"
        And I should see "A breaking news item"
        And I should see "Today at craftacademy"
        Then I select "Rejected"
        And I click on "Update"
        Then I should see "Article not approved for publication"

    Scenario: Reject article for publishing with comments
        When I visit the admin page
        And I click on "Review articles"
        Then I should see "Top title"
        And I should see "A breaking news item"
        And I should see "Today at craftacademy"
        Then I select "Commented"
        And I fill in "Comments" with "Next time try to use more paragraphs"
        And I click on "Update"
        Then I should see "Article not approved for publication, please respond to comments"