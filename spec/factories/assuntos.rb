FactoryBot.define do
  factory :assunto do
    descricao { "MyString" }
    tipo_tendimento { nil }
    ativo { false }
  end
end
