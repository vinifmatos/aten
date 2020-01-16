class TipoAtendimento < ApplicationRecord
  validates :descricao, presence: true
  
  scope :ativos, -> { where(ativo:true) }
end
