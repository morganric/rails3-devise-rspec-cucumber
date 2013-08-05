require "spec_helper"

describe FacebooktabsController do
  describe "routing" do

    it "routes to #index" do
      get("/facebooktabs").should route_to("facebooktabs#index")
    end

    it "routes to #new" do
      get("/facebooktabs/new").should route_to("facebooktabs#new")
    end

    it "routes to #show" do
      get("/facebooktabs/1").should route_to("facebooktabs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/facebooktabs/1/edit").should route_to("facebooktabs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/facebooktabs").should route_to("facebooktabs#create")
    end

    it "routes to #update" do
      put("/facebooktabs/1").should route_to("facebooktabs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/facebooktabs/1").should route_to("facebooktabs#destroy", :id => "1")
    end

  end
end
