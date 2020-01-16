require 'rails_helper'

RSpec.describe Departamento, type: :model do
  describe 'Validações' do
    it 'é valido com atributos validos' do
      departamento = build(:departamento)

      expect(departamento).to be_valid
    end

    it 'é invalido sem descrição' do
      departamento = build(:departamento, descricao: nil)

      expect(departamento).not_to be_valid
    end
  end
end
