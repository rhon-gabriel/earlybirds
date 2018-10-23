@javascript

Feature: Journalist can resubmit article marked as for revision
    As a Journalist,
    In order to get my article published,
    I would like to be able to edit and re-submit articles marked as "For revision" by Editor review.

    Background:
        Given the following categories exist
            | name        |
            | Programming |

        Given the following articles exist
            | header    | subheader            | body                  | category    | status       | comment                 |
            | Top title | A breaking news item | Today at craftacademy | Programming | for_revision | Please update the title |

    Scenario: Article successfully updated and resubmitted - when marked For revision
        When I visit the admin page
        Then I should see "Top title"
        And I should see "A breaking news item"
        And I should see "Today at craftacademy"
        And I should see "For revision"
        When I click "Update article"
        Then I should be on the create page
        And I should see "Top title"
        And I should see "A breaking news item"
        And I should see "Today at craftacademy"
        Then I fill in "Header" with "A better title"
        And I click "Submit"
        Then I should see "Your article was successfully saved in Programming section"
        And I should be on the admin page
        Then I click on "Review articles"
        Then I should see "A better title"
        And I should see "A breaking news item"
        And I should see "Today at craftacademy"