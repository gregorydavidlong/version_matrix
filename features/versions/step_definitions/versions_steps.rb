When /^I visit the versions index page$/ do
    visit "/versions"
end

Then /^I should see a list of all versions$/ do
  page.should have_content("Product 1 (1)")
  page.should have_content("Product 2 (2)")
end

Given /^I am on the versions page$/ do
  visit "/versions"
end

Given /^I am on the version creation page$/ do
  visit "/versions/new"
end

