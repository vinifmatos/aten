require 'rails_helper'

RSpec.describe Atendimento, type: :model do
  before(:all) do
    create(:assunto)
  end

  it 'é valido com atributos validos' do
    atendimento = build(:atendimento)

    expect(atendimento).to be_valid
  end

  it 'é invalido com texto vazio ou menor que 20 caracteres' do
    atendimento = build(:atendimento, texto: '')
    atendimento2 = build(:atendimento, texto: nil)

    expect(atendimento).not_to be_valid
    expect(atendimento2).not_to be_valid
  end

  it 'gera numero e ano ao salvar' do
    ano = Time.now.year
    numero = 1 + (Atendimento.where(ano: ano).maximum(:numero) || 0)
    atendimento = create(:atendimento)

    expect(atendimento.numero).to eq(numero)
    expect(atendimento.ano).to eq(ano)
  end

  it 'gera data de abertura ao salvar' do
    atendimento = create(:atendimento)

    expect(atendimento.data_abertura).not_to be_nil
  end

  it 'gera data de finalação ao finalizar' do
    atendimento = create(:atendimento)

    atendimento.finalizar!
    expect(atendimento.data_finalizacao).not_to be_nil
  end

  it 'gera data de arquivamento ao arquivar' do
    atendimento = create(:atendimento)

    atendimento.arquivar!
    expect(atendimento.data_arquivamento).not_to be_nil
  end
end
