@javascript

Feature: Editor can select if in-house approved article is free or premium
    As an editor,
    In order to balance making money with gathering interest,
    I would like to select if newly created content will be free or paid for before it is published.

    Background:
        Given the following categories exist
            | name        |
            | Programming |

        Given the following articles exist
            | header    | subheader            | body                  | category    | status  | comment                      | premium_status |
            | Top title | A breaking news item | Today at craftacademy | Programming | pending | No comments currently logged | free           |

        Given I visit the admin page
        And I click on "Review articles"
        And I select "Approved"
        
    Scenario: Article successfully approved with Premium status    
        And I select "Premium"
        And I click on "Update"
        Then I should see "Premium article approved for publication"