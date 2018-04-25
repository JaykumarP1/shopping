require 'rails_helper'

RSpec.describe "Addrs", type: :request do
  describe "GET /addrs" do
    it "works! (now write some real specs)" do
      get addrs_path
      expect(response).to have_http_status(200)
    end
  end
end
