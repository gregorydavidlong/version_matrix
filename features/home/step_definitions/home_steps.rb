When /^I visit the home page$/ do
  visit "/"
end

Then /^I should see the home page$/ do
  page.should have_content("Version Matrix")
end

Then /^I should not see a (\d+) page$/ do |name|
  page.should_not have_content(name)
end

When /^I click on the "([^"]*)" link$/ do |link|
  click_link(link)
end

Then /^I should see the products page$/ do
  page.should have_content("Products")
end

Given /^The user is at the home page$/ do
  visit "/"
end

Then /^I should see the "([^"]*)" page$/ do |name|
  page.should have_content(name)
end
