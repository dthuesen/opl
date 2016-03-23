require 'rails_helper'

RSpec.describe "OpenPositions", :type => :request do
  describe "GET /open_positions" do
    it "works! (now write some real specs)" do
      get open_positions_path
      expect(response).to have_http_status(200)
    end
  end
end
