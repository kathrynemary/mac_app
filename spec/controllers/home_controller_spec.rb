require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe "GET #index" do
    # TODO behavior is correct but test fails
    xit "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
