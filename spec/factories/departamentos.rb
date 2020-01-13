FactoryBot.define do
  factory :departamento do
    descricao { Faker::Space.galaxy }
    sudordinacao_adm { nil }
    ativo { true }
  end
end
