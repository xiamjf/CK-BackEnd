require "rails_helper"

RSpec.describe UserQuestionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_questions").to route_to("user_questions#index")
    end


    it "routes to #show" do
      expect(:get => "/user_questions/1").to route_to("user_questions#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/user_questions").to route_to("user_questions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_questions/1").to route_to("user_questions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_questions/1").to route_to("user_questions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_questions/1").to route_to("user_questions#destroy", :id => "1")
    end

  end
end
