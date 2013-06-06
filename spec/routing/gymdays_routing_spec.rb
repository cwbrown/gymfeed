require "spec_helper"

describe GymdaysController do
  describe "routing" do

    it "routes to #index" do
      get("/gymdays").should route_to("gymdays#index")
    end

    it "routes to #new" do
      get("/gymdays/new").should route_to("gymdays#new")
    end

    it "routes to #show" do
      get("/gymdays/1").should route_to("gymdays#show", :id => "1")
    end

    it "routes to #edit" do
      get("/gymdays/1/edit").should route_to("gymdays#edit", :id => "1")
    end

    it "routes to #create" do
      post("/gymdays").should route_to("gymdays#create")
    end

    it "routes to #update" do
      put("/gymdays/1").should route_to("gymdays#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/gymdays/1").should route_to("gymdays#destroy", :id => "1")
    end

  end
end
