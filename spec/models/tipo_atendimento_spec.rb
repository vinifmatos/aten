require 'rails_helper'

RSpec.describe TipoAtendimento, type: :model do
  describe 'Validações' do
    it 'é valido com atributos validos' do
      tipo_atendimento = build(:tipo_atendimento)

      expect(tipo_atendimento).to be_valid
    end

    it 'é invalido sem descrição' do
      tipo_atendimento = build(:tipo_atendimento, descricao: nil)

      expect(tipo_atendimento).not_to be_valid
    end
  end
end
