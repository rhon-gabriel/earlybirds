Feature: Article Categories
    As a visitor,
    In order to select articles of interest,
    I would like to be able to see articles grouped by category

  Background: 
    Given the following categories exists
    | name      |
    | News      |
    | Sports    |
    | Business  |
    | Politics  |

  
    Given the following articles exists    
        | header                            | subheader                | body                  | category    |
        | Top Title                         | A breaking news item     | Today at craftacademy |  News       |
        | Italy wins!                       | World cup results        | For the 5th times...  |  Sports     |
        | Italian spread                    | Italy economic situation | Today, the government |  Business   |
        | The new Italian Prime minister    | A breaking news item    | Today at craftacademy  |  Politics   |

  Scenario: An article should belong to a category
      When I visit the site
      Then I should see "News"
      And I should see "Sports"
      And I should see "Business"
      And I should see "Politics"

