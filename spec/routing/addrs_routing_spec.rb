require "rails_helper"

RSpec.describe AddrsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/addrs").to route_to("addrs#index")
    end

    it "routes to #new" do
      expect(:get => "/addrs/new").to route_to("addrs#new")
    end

    it "routes to #show" do
      expect(:get => "/addrs/1").to route_to("addrs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/addrs/1/edit").to route_to("addrs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/addrs").to route_to("addrs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/addrs/1").to route_to("addrs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/addrs/1").to route_to("addrs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/addrs/1").to route_to("addrs#destroy", :id => "1")
    end

  end
end
