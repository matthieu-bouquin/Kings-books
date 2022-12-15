require 'rails_helper'

RSpec.describe "RedisTubroChats", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/redis_tubro_chat/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/redis_tubro_chat/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/redis_tubro_chat/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/redis_tubro_chat/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
