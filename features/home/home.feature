Feature: A user should be presented with a home page at the root URL
    In order to welcome a user
    A user
    Should be able to visit our web site's home page

    Scenario: The user is presented with a home page at the root URL
        When I visit the home page
        Then I should see the home page
        And I should not see a 404 page

    Scenario: The user can navigate to the list of products from the home page
        Given The user is at the home page
        When I click on the "Products" link
        Then I should see the "Products" page

    Scenario: The user can navigate to the version matrix page from the home page
        Given The user is at the home page
        When I click on the "Version Matrix" link
        Then I should see the "Version Matrix" page
