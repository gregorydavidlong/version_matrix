Feature: A user should be presented with a products page
    In order to allow a user to create, edit, and view products
    A user
    Should be able to visit our web site's products page

    Scenario: The user is presented with a list of products
        When I visit the products index page
        Then I should see a list of all products
        And I should not see a 404 page

    Scenario: The user is able to navigate to the product creation page
	Given I am on the products page
	When I click on the "New Product" link
	Then I should see the "New Product" page

    Scenario: The user is able to create a product
	Given I am on the product creation page
	When I fill in the product's details
	And I click the submit button
	Then I should see the product's details

    Scenario: I the user is able to navigate to the product's details page
	Given I am on the products page
	When I click on a product
	Then I should see the product's details

    Scenario: The user is able to edit a product
	#Given I am on a product page
	#When I click on the "edit" link
	#Then I should

    Scenario: The user is able to delete a product
