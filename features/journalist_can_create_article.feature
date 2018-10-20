@javascript

Feature: Create articles inside category
  As a journalist,
  In order to share the latest news,
  I would like to able to create an article and choose the right category for it.

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
