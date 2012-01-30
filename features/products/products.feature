Feature: A user should be presented with a products page
    In order to allow a user to create, edit, and view products
    A user
    Should be able to visit our web site's products page

    Scenario: The user is presented with a list of products
        Given There is test data in the database
        When I visit the products index page
        Then I should see a list of all products
        And I should not see a 404 page

    Scenario: The user is able to navigate to the product creation page
	Given I am on the products page
	When I click on the "New Product" link
	Then I should see the "New product" page

    Scenario: The user is able to create a product
	Given I am on the product creation page
        When I fill in the following:
            | Name | Product 1 |
	And I press "Create Product" 
	Then I should see the "Product 1" page

    Scenario: I the user is able to navigate to the product's details page
        Given There is test data in the database
	And I am on the products page
	When I follow "Show"
	Then I should see the "Product 1" page

    Scenario: The user is able to edit a product
	#Given I am on a product page
	#When I click on the "edit" link
	#Then I should

    Scenario: The user is able to delete a product
