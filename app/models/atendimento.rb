class Atendimento < ApplicationRecord
  belongs_to :assunto
  before_create :set_numero_e_ano
  before_create :set_data_abertura
  validates :texto, length: { minimum: 20 }

  def finalizar!
    self.data_finalizacao = Time.now
    self.save
  end

  def arquivar!
    self.data_arquivamento = Time.now
    self.save
  end

  private

  def set_numero_e_ano
    self.numero = 1 + (Atendimento.where(ano: Time.now.year).maximum(:numero) || 0)
    self.ano = Time.now.year
  end

  def set_data_abertura
    self.data_abertura ||= Time.now
  end
end
