require 'spec_helper'

describe MatriciesController do

  describe "GET 'matrix'" do
    it "should be successful" do
      get 'matrix'
      response.should be_success
    end


    it "should fetch the compatible versions"
  end

end
