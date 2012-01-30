require 'spec_helper'

describe MatriciesController do

  describe "GET 'matrix'" do
    it "should be successful" do
      get 'matrix'
      response.should be_success
    end

    it "should fetch the compatible versions" do
      @product = Product.create!(:name => "Product 1")
      @product2 = Product.create!(:name => "Product 2")
      @version = Version.create!(:version_string => "1", :product_id => @product)
      @version2 = Version.create!(:version_string => "2", :product_id => @product2)
      @compatibility = Compatibility.create!(:test_date => Date.current, :first_version_id => @verison, :second_version_id => @version2)

      get 'matrix'
      assigns(:versions).should == [@version, @version2]
      assigns(:compatibilities).should == [@compatibility]
      
    end

  end

end
