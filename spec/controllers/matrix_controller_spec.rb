require 'spec_helper'

describe MatrixController do

  describe "GET 'matrix'" do
    it "should be successful" do
      get 'matrix'
      response.should be_success
    end
  end

end
