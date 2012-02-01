require 'spec_helper'

describe Product do
    
    describe "can create a valid product" do
        before(:each) do
            @product = Product.create!(:name => "Product 1")
            @product2 = Product.create!(:name => "Product 2")
        end 

        it "should be valid" do
            @product.should be_valid
            @product2.should be_valid
        end

        it "should have the right values" do
            @product.name.should == "Product 1"
            @product2.name.should == "Product 2"
        end
    end

    describe "cannot create an invalid product" do
        it "should have a name" do
            product = Product.new()
            product.should_not be_valid
        end
    end
        

end
