@javascript 
@api_call
Feature: Display third-party articles
    As an Editor,
    In order to review external articles of interest
    I would like to see a list of third party articles available.

    Background:
        Given I am on the third-party articles page

    Scenario: View list of "news" category
        Then I should see "news"
        And I should see '.article-title' element
        And I should see '.article-content' element
        And I should see '.article-author' element
        
    Scenario: View list of "news" category
        Then I should see "news"
        And I should see '.article-title' element
        And I should see '.article-content' element
        And I should see '.article-author' element