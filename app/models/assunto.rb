class Assunto < ApplicationRecord
  belongs_to :tipo_atendimento
  validates :descricao, presence: true

  scope :ativos, -> { where(ativo: true) }
end
