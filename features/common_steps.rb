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

Given /^There is test data in the database$/ do
  @product = Product.create!(:name => "Product 1")
  @product2 = Product.create!(:name => "Product 2")
  @version = Version.create!(:version_string => "1", :product_id => @product.id)
  @version2 = Version.create!(:version_string => "2", :product_id => @product2.id)
  @compatibility = Compatibility.create!(:test_date => Date.current, :first_version_id => @version.id,
    :second_version_id => @version2.id)
end
