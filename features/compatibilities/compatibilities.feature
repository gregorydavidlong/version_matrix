Feature: A user should be able to identify product versions as compatibile
    In order to provide the basic functionality of the application
    A user
    Should be able to identify compatible versions of products

    Scenario: The user views a list of compatibilities
        When I visit the compatibilities page
        Then I should see "Compatibilities"
        And I should not see a 404 page

    Scenario: All compatibilities are listed
        Given There is test data in the database
        When I visit the compatibilities page
        Then I should see "Product 1 (1)"
        And I should see "Product 2 (2)"

    Scenario: A compatibility can be shown
        Given There is test data in the database
        When I visit the compatibilities page
        And I follow "Show"
        Then I should see "Product 1 (1)"
        And I should see "Product 2 (2)"

    Scenario: A compatibility can be edited
        Given There is test data in the database
        When I visit the compatibilities page
        And I follow "Edit"
        Then The "First version" field should equal "1"
        And The "Second version" field should equal "2"

    Scenario: A compatibility can be created
        Given There is test data in the database
        When I visit the compatibilities page
        And I follow "New Compatibility"
        When I fill in the following:
            #| compatibility_test_date | 2011-01-01 |
            | First version | 1 |
            | Second version | 2 |
	And I press "Create Compatibility" 
	Then I should see "Product 1 (1)"
        And I should see "Product 2 (2)"

    Scenario: A Compatibility can be deleted
        Given There is test data in the database
        When I visit the compatibilities page
        And I follow "Destroy"
        Then I should not see "Product 2 (2)"
        And I should not see "Product 1 (1)"
        
