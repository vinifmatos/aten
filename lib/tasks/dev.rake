namespace :dev do
  desc "Cria dados para teste"
  task gendata: :environment do
    FactoryBot.create_list(:assunto, 10)
    FactoryBot.create_list(:atendimento, 10)
  end
end
