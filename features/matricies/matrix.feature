Feature: A user should be presented with a matrix displaying compatible versions of software
    In order to provide information to the user
    A user
    Should be able to view compatible versions of products

    Scenario: The user is presented with a version matrix at the matricies/matrix URL
        When I visit the matrix page
        Then I should see the matrix page
        And I should not see a 404 page

    Scenario: All products are listed
        Given There is test data in the database
        And The user is at the matrix page
        Then I should see "Product 1 (1)"
        And I should see "Product 2 (2)"

