@javascript

Feature: Editor can review third-party articles
    As an Editor,
    In order to select external articles for publication,
    I would like to approve articles available with premium or non premium status

    Background:
        Given the following categories exist
            | name        |
            | Programming |
            | Education   |

    Scenario: View list of third-party articles submitted for approval
        When I visit the site
        