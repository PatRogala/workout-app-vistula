require "rails_helper"

RSpec.describe "Users" do
  describe "GET /index" do
    context "when user is not logged in" do
      it "redirects to login page" do
        get root_path
        expect(response).to redirect_to(new_user_session_path)
      end
    end

    context "when user is logged in" do
      before { sign_in create(:user) }

      it "returns http success" do
        get root_path
        expect(response).to have_http_status(:success)
      end
    end
  end
end
