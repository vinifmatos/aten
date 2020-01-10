FactoryBot.define do
  factory :atendimento do
    numero { 1 }
    ano { 1 }
    assunto { nil }
    data_abertura { "2020-01-10 12:16:07" }
    data_finalizacao { "2020-01-10 12:16:07" }
    data_arquivamento { "2020-01-10 12:16:07" }
    texto { "MyText" }
  end
end
