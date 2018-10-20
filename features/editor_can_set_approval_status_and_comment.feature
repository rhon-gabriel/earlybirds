@javascript

Feature: Editor can set approval status and comment
    As an editor,
    In order to maintain the quality of Early Bird's content,
    I would like to comment and approve the content created before it is published.

    Background:
        Given the following categories exist
        | name     |
        | Politics |
        | Business |
        | News     |

        And I visit the admin section

    Scenario: Journalist creates article inside a category
        And I click "Create article"
        When I fill in "Header" with "Learning Rails 5"
        And I fill in "Subheader" with "Excited about learning a new framework"
        And I fill in "Byline" with "Angelica the Great"
        And I fill in "Body" with "Angelica in craftacademy"
        And I select "Politics" as "Category"
        And I click "Submit"
        Then I should see "Your article was successfully saved in Politics section"

    Scenario: Journalist create article inside another category
        And I click "Create article"
        When I fill in "Header" with "Learning Rails 5"
        And I fill in "Subheader" with "Excited about learning a new framework"
        And I fill in "Byline" with "Angelica the Great"
        And I fill in "Body" with "Angelica in craftacademy"
        And I select "Business" as "Category"
        Then I click "Submit"
        Then I should see "Your article was successfully saved in Business section"