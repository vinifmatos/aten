class Assunto < ApplicationRecord
  belongs_to :tipo_tendimento

  scope :ativos, -> { where(ativo: true) }
end
