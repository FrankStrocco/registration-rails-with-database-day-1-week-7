require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #welcome" do
    it "returns http success" do
      get :welcome
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #register" do
    it "returns http success" do
      get :register
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #log_in" do
    it "returns http success" do
      get :log_in
      expect(response).to have_http_status(:success)
    end
  end

end
