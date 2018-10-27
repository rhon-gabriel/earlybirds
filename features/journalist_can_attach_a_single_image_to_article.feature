Feature: Journalist Can Attach a Single Image to Article
    As a Journalist,
    In order to make my articles more appealing,
    I would like to be able to attach a single image to my article when created or updated.

    Scenario: Journalist successfully creates an article with an image
        Given I visit the create page
        And I fill in "Header" with "Learning Rails 5"
        And I fill in "Subheader" with "Excited about learning a new framework"
        And I fill in "Byline" with "Angelica the Great"
        And I fill in "Body" with "Angelica in craftacademy"
        And I select "politics" as "Category"
        And I attach a file
        And I click "Submit"
        Then I should see "Your article was successfully saved in politics section"