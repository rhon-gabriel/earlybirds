@javascript 
@api_call
Feature: Display third-party articles on landing page
    As a visitor,
    In order to choose what article to read,
    I would like to see a list of third party articles on the landing page

    Background:
        When I visit the site

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