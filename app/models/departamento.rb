class Departamento < ApplicationRecord
  belongs_to :sudordinacao_adm, class_name: 'Departamento'
end
