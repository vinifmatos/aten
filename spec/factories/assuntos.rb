FactoryBot.define do
  factory :assunto do
    descricao { Faker::Color.color_name }
    tipo_atendimento { TipoAtendimetno.ativos.pluck(:id) }
    ativo { true }
  end
end
