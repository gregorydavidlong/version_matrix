require 'spec_helper'

describe CompatibilitiesController do

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    before(:each) do
        @product = Product.create!(:name => "Product 1")
        @product2 = Product.create!(:name => "Product 2")
        @version = Version.create!(:version_string => "1")
        @version.product = @product
        @version2 = Version.create!(:version_string => "2")
        @version2.product = @product2
        @compatibility = Compatibility.create!(:test_date => Date.current, :first_version_id => @version.id, :second_version_id => @version2.id)
    end

    it "should be successful" do
        get 'show', {:id => 1}
        response.should be_success
    end

    it "should retrieve the correct compatibility" do
        @compatibility2 = Compatibility.create!(:test_date => Date.current, :first_version_id => @version2.id,
                                                :second_version_id => @version.id)
        get 'show', {:id => 1}
        assigns(:compatibility).should eq(@compatibility)
        assigns(:compatibility).should_not eq(@compatibility2)
    end

    it "should retrieve the compatible versions" do
        get 'show', {:id => 1}
        assigns(:first_version).should eq(@version)
        assigns(:second_version).should eq(@version2)
    end

  end

end
