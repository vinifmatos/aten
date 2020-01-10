require 'rails_helper'

RSpec.describe "Assuntos", type: :request do
  describe "GET /assuntos" do
    it "works! (now write some real specs)" do
      get assuntos_path
      expect(response).to have_http_status(200)
    end
  end
end
