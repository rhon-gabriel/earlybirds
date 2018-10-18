Feature: Create articles inside category
    As a journalist,
    in order to share the latest news,
    I would like to able to create an article and choose the right category for it.

  Background:
    When I visit the create page

  Scenario: Journalist create article inside category
    Then stop
    When I fill in "Header" with "Learning Rails 5"
    And I fill in "Subheader" with "Excited about learning a new framework"
    And I fill in "Byline" with "Angelica the Great"
    And I fill in "Body" with "Angelica in craftacademy"
    And I click on Politics
    Then I click "Submit"
