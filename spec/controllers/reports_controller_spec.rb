require 'spec_helper'

describe ReportsController do

  describe "GET 'parts'" do
    it "should be successful" do
      get 'parts'
      response.should be_success
    end
  end

  describe "GET 'deliveries'" do
    it "should be successful" do
      get 'deliveries'
      response.should be_success
    end
  end

end
