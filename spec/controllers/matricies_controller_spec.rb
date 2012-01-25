require 'spec_helper'

describe MatriciesController do

  describe "GET 'default'" do
    it "should be successful" do
      get 'default'
      response.should be_success
    end
  end

end
