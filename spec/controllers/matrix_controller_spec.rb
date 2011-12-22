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
      @compatibility = Compatibility.create!(:test_date => Date.current, :first_product_id => @product, :second_product_id => @product2)

      get 'matrix'
      assigns(:products).should include @product
      assigns(:products).should include @product2
      assigns(:compatibilities).should == [@compatibility]
      
    end

  end

end
