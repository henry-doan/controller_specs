require 'rails_helper'

RSpec.describe BankAccountsController, type: :controller do

  # login users before all the test
  login_user

  # an attribute we can use to test to pass
  let(:valid_attributes) {
    { institution: 'Chase', amount: 200, active: true }
  }

   # an attribute we can use to test to fail
  let(:invalid_attributes) {
    { institution: '', amount: 200, active: true }
  }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

end
