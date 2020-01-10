FactoryBot.define do
  factory :departamento do
    descricao { "MyString" }
    sudordinacao_adm { nil }
    ativo { false }
  end
end
