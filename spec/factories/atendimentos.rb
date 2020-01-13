FactoryBot.define do
  factory :atendimento do
    assunto { Assunto.find Random.rand(1..Assunto.ativos.maximum(:id)) }
    data_abertura { Faker::Time.between(from: Time.now.at_beginning_of_year, to: Time.now.end_of_year) }
    texto { Faker::Lorem.paragraph_by_chars }

    factory :atendimento_finalizado do
      data_finalizacao { Faker::Time.between(from: Time.now.at_beginning_of_year, to: Time.now.end_of_year) }
    end

    factory :atendimento_arquivado do
      data_arquivamento { Faker::Time.between(from: Time.now.at_beginning_of_year, to: Time.now.end_of_year) }
    end
  end
end
