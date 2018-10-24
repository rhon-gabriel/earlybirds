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
            | header    |  category    | status  | comment                              |
            | Top title |  Programming | pending | No comments currently logged         |
            | Top title2|  Programming | pending | No comments currently logged         |   

    Scenario: Approve article for publishing
        When I visit the admin page
        And I click on "Review articles"
        Then I should see "Top title"
        Then I select "Approved" for "Top title"
        And I click on "Update" for "Top title"
        Then I should see "Article approved for publication"

    Scenario: Reject article for publishing
        When I visit the admin page
        And I click on "Review articles"
        Then I should see "Top title"
        Then I select "Rejected" for "Top title"
        And I click on "Update" for "Top title"
        Then I should see "Article not approved for publication"

    Scenario: Reject article for publishing with comments
        When I visit the admin page
        And I click on "Review articles"
        Then I should see "Top title"
        Then I select "For revision" for "Top title"
        And I fill in "Comments" for "Top title" with "Next time try to use more paragraphs"
        And I click on "Update" for "Top title" 
        Then I should see "Article not approved for publication, please see comments: Next time try to use more paragraphs"