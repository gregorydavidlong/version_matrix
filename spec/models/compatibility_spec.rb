require 'spec_helper'

describe Compatibility do
    before(:each) do
        @product = Product.create!(:name => "Product 1")
        @product2 = Product.create!(:name => "Product 2")
        @version = Version.create!(:version_string => "1")
        @version.product = @product
        @version2 = Version.create!(:version_string => "2")
        @version2.product = @product2
    end 
    
    describe "can create a valid compatibility" do
        before(:each) do
            @test_date = Date.current
            @compatibility = Compatibility.create!(:test_date => @test_date, :first_version_id => @version.id, :second_version_id => @version2.id)
        end

        it "should be valid" do
            @compatibility.should be_valid
        end

        it "should have the right values" do
            @compatibility.test_date.should == @test_date
            @compatibility.first_version_id == @version.id
            @compatibility.second_version_id == @version2.id
        end
    end

end
