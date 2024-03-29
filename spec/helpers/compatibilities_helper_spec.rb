require 'spec_helper'

describe CompatibilitiesHelper do
    before(:each) do
        @product = Product.create!(:name => "Product 1")
        @product2 = Product.create!(:name => "Product 2")
        @version = Version.create!(:version_string => "1", :product_id => @product.id)
        @version2 = Version.create!(:version_string => "2", :product_id => @product2.id)
        @compatibility = Compatibility.create!(:test_date => Date.current, :first_version_id => @version.id, :second_version_id => @version2.id)
        @version3 = Version.create!(:version_string => "X", :product_id => @product.id)
    end



    it "should identify compatibile versions" do
        isCompatible(@version, @version2).should be_true
    end

    it "should identify compatible versions in reverse" do
        isCompatible(@version2, @version).should be_true
    end

    it "should identify incompatible versions" do
        isCompatible(@version, @version3).should_not be_true 
    end

    it "should identify incompatible versions in reverse" do
        isCompatible(@version3, @version).should_not be_true
    end

end
