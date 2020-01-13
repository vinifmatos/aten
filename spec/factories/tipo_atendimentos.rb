FactoryBot.define do
  factory :tipo_atendimento do
    descricao { Faker::Space.planet }
    ativo { true }
  end
end
