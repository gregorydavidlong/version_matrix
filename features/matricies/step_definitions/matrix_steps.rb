When /^I visit the matrix page$/ do
  visit "/matricies/matrix"
end

Then /^I should see the matrix page$/ do
  page.should have_content("Version Matrix")
end

Given /^The user is at the matrix page$/ do
  visit "/matricies/matrix"
end

Then /^I should see a version matrix displaying compatible versions$/ do
  page.should have_content(@product.name)
  page.should have_content(@version.version_string)
  page.should have_content(@product2.name)
  page.should have_content(@version2.version_string)
  #Should this step say something about itentifying these versions as compatible?
end
