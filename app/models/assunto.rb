class Assunto < ApplicationRecord
  belongs_to :tipo_atendimento

  scope :ativos, -> { where(ativo: true) }
end
