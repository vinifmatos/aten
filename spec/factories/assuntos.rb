FactoryBot.define do
  factory :assunto do
    descricao { Faker::Color.color_name }
    tipo_atendimento { TipoAtendimento.find Random.rand(1..TipoAtendimento.ativos.maximum(:id)) }
    ativo { true }
  end
end
