Feature: Articles on the landing page
    As a visitor,
    In order to choose what article to read,
    I would like to see the headlines and the first paragraphs of the available articles.

  Scenario: View available articles on the landing page
    Given the following articles exists
      | header                | subheader                       | body                    |
      | Top title             | A breaking news item            | Today at craftacademy   |
  
    When I visit the site
    Then I should see "Top title"
    And I should see "A breaking news item"
    And I should see "Today at craftacademy"