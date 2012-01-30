Feature: A user should be presented with a matrix displaying compatible versions of software
    In order to provide information to the user
    A user
    Should be able to view compatible versions of products

    Scenario: The user is presented with a version matrix at the matricies/matrix URL
        When I visit the matrix page
        Then I should see the matrix page
        And I should not see a 404 page

    Scenario: The user can view the version matrix 
        Given The user is at the matrix page
        And There is test data in the database
        Then I should see a version matrix displaying compatible versions
