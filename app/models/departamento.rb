class Departamento < ApplicationRecord
  belongs_to :sudordinacao_adm, class_name: 'Departamento', optional: true
  validates :descricao, presence: true
end
