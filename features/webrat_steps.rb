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
