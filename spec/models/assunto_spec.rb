require 'rails_helper'

RSpec.describe Assunto, type: :model do
  describe 'Validações' do 
    it 'é valido com atributos validos' do
      assunto = build(:assunto)

      expect(assunto).to be_valid
    end

    it 'é invalido sem tipo de atendimento' do
      assunto = build(:assunto, tipo_atendimento: nil)

      expect(assunto).not_to be_valid
    end

    it 'é invalido sem descrição' do
      assunto = build(:assunto, descricao: nil)

      expect(assunto).not_to be_valid
    end
  end
end
