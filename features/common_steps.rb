When /^I press "([^\"]*)"$/ do |button|
    click_button(button)
end

When /^I follow "([^\"]*)"$/ do |link|
    click_link(link)
end

When /^I follow "([^\"]*)" within "([^\"]*)"$/ do |link, parent|
    click_link_within(parent, link)
end

When /^I fill in the following:$/ do |table|
  # table is a Cucumber::Ast::Table
  table.rows_hash.each {|field, value| fill_in field, :with => value }
end

Then /^I should see "([^"]*)"$/ do |text|
    page.should have_content(text)
end

Then /^I should not see "([^"]*)"$/ do |text|
    page.should_not have_content(text)
end

Then /^The "([^\"]*)" field should( not)? equal "([^\"]*)"$/ do |field, negate, value|
  expectation = negate ? :should_not : :should
  field_labeled(field).value.send(expectation) == value
end
