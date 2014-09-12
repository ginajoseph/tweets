require "rails_helper"

RSpec.describe WelcomesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/welcome").to route_to("welcome#index")
    end

    it "routes to #new" do
      expect(:get => "/welcome/new").to route_to("welcome#new")
    end

    it "routes to #show" do
      expect(:get => "/welcome/1").to route_to("welcome#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/welcome/1/edit").to route_to("welcome#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/welcome").to route_to("welcome#create")
    end

    it "routes to #update" do
      expect(:put => "/welcome/1").to route_to("welcome#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/welcome/1").to route_to("welcome#destroy", :id => "1")
    end

  end
end
