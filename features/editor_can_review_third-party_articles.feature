@javascript

Feature: Display third-party articles
    As an Editor,
    In order to select external articles for publication,
    I would like to display third party articles

    Background:
        Given I am on the third-party articles page

    Scenario: View list of third-party articles
        Then I should see "Top News"
        And I should see '.article-title' element
        And I should see '.article-content' element
        And I should see '.article-agency' element
        