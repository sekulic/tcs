require 'rails_helper'

RSpec.describe "Authors", :type => :request do
  before(:each) do
    sign_in_as_admin
  end  
  describe "GET /authors" do
    it "works! (now write some real specs)" do
      get authors_path
      expect(response).to have_http_status(200)
    end
  end
end
