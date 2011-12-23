When /^I visit the matrix page$/ do
  visit "/matricies/matrix"
end

Then /^I should see the matrix page$/ do
  page.should have_content("Version Matrix")
end

Given /^The user is at the matrix page$/ do
  visit "/matricies/matrix"
end

Given /^There is test data in the database$/ do
  @product = Product.create!(:name => "Product 1")
  @product2 = Product.create!(:name => "Product 2")
  @version = Version.create!(:version_string => "1", :product_id => @product)
  @version2 = Version.create!(:version_string => "2", :product_id => @product2) 
  Compatibility.create!(:test_date => Date.current, :first_version_id => @version,
    :second_version_id => @version2)
end

Then /^I should see a version matrix displaying compatible versions$/ do
  page.should have_content(@product.name)
  page.should have_content(@version.version_string)
  page.should have_content(@product2.name)
  page.should have_content(@version2.version_string)
  #Should this step say something about itentifying these versions as compatible?
end
