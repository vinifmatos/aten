class TipoAtendimento < ApplicationRecord
  scope :ativos, -> { where(ativo:true) }
end
