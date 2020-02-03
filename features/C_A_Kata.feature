Feature: Citizen Advice test suite
    as a User I want to

# @google-search
# Scenario: Users are able to Access the Citizen Adivce Page through google
#     Given I am on the Google Homepage
#     When I search for Citizen Adivce on google
#     When I click the citizen advice link from the search
#     Then I see the Citizen Advice Homepage

@state-pension
Scenario: Users can find state pension help on the Citizens Advice site
    Given I am on the Google Homepage
    When I search for Citizen Adivce on google
    When I click the citizen advice link from the search
    When I search for state pension on the homepage
    Then I see a link to State Pension