@javascript 
@api_call_politics
@api_call_news
Feature: Display third-party articles on landing page
    As a visitor,
    In order to choose what article to read,
    I would like to see a list of third party articles on the landing page

    Background:
        Given I visit the site

    Scenario: View list of "News" category
        Then I should see "News"
        And I should see 'Donald Trump: US will build up nuclear arsenal'
        And I should see 'The US president says Russia'
        And I should see 'https://www.facebook.com/bbcnews'
        
    Scenario: View list of "Politics" category
        Then I should see "Politics"
        And I should see 'Extreme Category 5 Typhoon'
        And I should see 'Tied for the world strongest storm of the year'
        And I should see 'https://www.facebook.com/chriscmooney, https://www.facebook.com/eilperin'

    