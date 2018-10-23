@javascript 
@api_call
Feature: Display third-party articles
    As an Editor,
    In order to select external articles for publication,
    I would like to display third party articles

    Background:
        Given I am on the third-party articles page

    Scenario: View list of "News" category
        Then I should see "News"
        And I should see '.article-title' element
        And I should see '.article-content' element
        And I should see '.article-author' element
        
    Scenario: View list of "Politics" category
        Then I should see "Politics"
        And I should see '.article-title' element
        And I should see '.article-content' element
        And I should see '.article-author' element