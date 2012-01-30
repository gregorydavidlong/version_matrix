When /^I visit the products index page$/ do
    visit "/products"
end

Then /^I should see a list of all products$/ do
  page.should have_content("Product 1")
  page.should have_content("Product 2")
end

Given /^I am on the products page$/ do
  visit "/products"
  page.should have_content("Products")
end

Given /^I am on the product creation page$/ do
  visit "/products/new"
end
