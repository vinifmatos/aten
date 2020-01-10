require 'rails_helper'

RSpec.describe "TipoAtendimentos", type: :request do
  describe "GET /tipo_atendimentos" do
    it "works! (now write some real specs)" do
      get tipo_atendimentos_path
      expect(response).to have_http_status(200)
    end
  end
end
