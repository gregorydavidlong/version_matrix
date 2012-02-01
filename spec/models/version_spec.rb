require 'spec_helper'

describe Version do
    
    describe "can create a valid version" do
        before(:each) do
            @product = Product.create!(:name => "Product 1")
            @version = Version.create!(:product_id => @product.id, :version_string => "1")
        end 

        it "should be valid" do
            @version.should be_valid
        end

        it "should have the right values" do
            @version.product.should == @product
            @version.version_string.should == "1"
        end
    end

    describe "cannot create an invalid version" do
        before(:each) do
            @product = Product.create!(:name => "Product 1")
        end

        it "should have a version_string" do
            version = Version.new(:product_id => @product.id)
            version.should_not be_valid
        end

        it "should have a product" do
            version = Version.new(:version_string => "1")
            version.should_not be_valid
        end
    end
        

end
