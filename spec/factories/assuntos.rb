FactoryBot.define do
  factory :assunto do
    descricao { Faker::Color.color_name }
    tipo_atendimento { TipoAtendimento.limit(1).offset(rand(TipoAtendimento.ativos.count)).first }
    ativo { true }
  end
end
