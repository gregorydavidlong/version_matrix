Feature: A user should be presented with a versions page
    In order to allow a user to create, edit, and view versions
    A user
    Should be able to visit our web site's versions page

    Scenario: The user is presented with a list of versions
        Given There is test data in the database
        When I visit the versions index page
        Then I should see a list of all versions
        And I should not see a 404 page

    Scenario: The user is able to navigate to the version creation page
	Given I am on the versions page
	When I click on the "New Version" link
	Then I should see the "New version" page

    Scenario: The user is able to create a version
        Given There is test data in the database
	Given I am on the version creation page
        When I fill in the following:
            | Version string | 1 |
            | Product | 1 |
	And I press "Create Version" 
	Then I should see the "Product 1 (1)" page

    Scenario: I the user is able to navigate to the version's details page
        Given There is test data in the database
	And I am on the versions page
	When I follow "Show"
	Then I should see the "Product 1 (1)" page

    Scenario: The user is able to view a version's details when editing
        Given There is test data in the database
        And I am on the versions page
        When I follow "Edit"
        Then The "Version string" field should equal "1"

    Scenario: The user is able to edit a version
        Given There is test data in the database
        And I am on the versions page
        When I follow "Edit"
        And I fill in the following:
            | Version string | A |
            | Product | 1 |
        And I press "Update Version"
        Then I should see "Product 1 (A)"
        And I should not see "Product 1 (1)"

    Scenario: The user is able to delete a version
