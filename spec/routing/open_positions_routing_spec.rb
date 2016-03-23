require "rails_helper"

RSpec.describe OpenPositionsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/open_positions").to route_to("open_positions#index")
    end

    it "routes to #new" do
      expect(:get => "/open_positions/new").to route_to("open_positions#new")
    end

    it "routes to #show" do
      expect(:get => "/open_positions/1").to route_to("open_positions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/open_positions/1/edit").to route_to("open_positions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/open_positions").to route_to("open_positions#create")
    end

    it "routes to #update" do
      expect(:put => "/open_positions/1").to route_to("open_positions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/open_positions/1").to route_to("open_positions#destroy", :id => "1")
    end

  end
end
