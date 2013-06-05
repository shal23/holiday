require "spec_helper"

describe TravelAgentProfilesController do
  describe "routing" do

    it "routes to #index" do
      get("/travel_agent_profiles").should route_to("travel_agent_profiles#index")
    end

    it "routes to #new" do
      get("/travel_agent_profiles/new").should route_to("travel_agent_profiles#new")
    end

    it "routes to #show" do
      get("/travel_agent_profiles/1").should route_to("travel_agent_profiles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/travel_agent_profiles/1/edit").should route_to("travel_agent_profiles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/travel_agent_profiles").should route_to("travel_agent_profiles#create")
    end

    it "routes to #update" do
      put("/travel_agent_profiles/1").should route_to("travel_agent_profiles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/travel_agent_profiles/1").should route_to("travel_agent_profiles#destroy", :id => "1")
    end

  end
end
