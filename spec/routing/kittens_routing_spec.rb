require "rails_helper"

RSpec.describe KittensController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/kittens").to route_to("kittens#index")
    end

    it "routes to #new" do
      expect(get: "/kittens/new").to route_to("kittens#new")
    end

    it "routes to #show" do
      expect(get: "/kittens/1").to route_to("kittens#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/kittens/1/edit").to route_to("kittens#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/kittens").to route_to("kittens#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/kittens/1").to route_to("kittens#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/kittens/1").to route_to("kittens#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/kittens/1").to route_to("kittens#destroy", id: "1")
    end
  end
end
