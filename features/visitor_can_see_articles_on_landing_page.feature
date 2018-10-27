@javascript
Feature: Articles on the landing page
  As a visitor,
  In order to choose what article to read,
  I would like to see the headlines and the first paragraphs of the available articles.

  Background:
    Given the following categories exist
      | name     |
      | general  |
      | business |

    Given the following articles exist
      | header        | subheader             | body                     | category | status   |
      | Top title     | A breaking news item  | Today at craftacademy    | general  | approved |
      | Other stories | Another breaking news | Tomorrow at craftacademy | business | approved |

  Scenario: View available articles on the landing page
    When I visit the site
    And I click on "General"
    Then I should see "Top title"
    And I should see "A breaking news item"
    And I should see "Today at craftacademy"
    And I should see "Other stories"
    And I should see "Another breaking news"
    And I should see "Tomorrow at craftacademy"
