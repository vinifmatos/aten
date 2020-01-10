namespace :dev do
  desc "Cria o banco de dados e executa as migrations"
  task mkdb: :environment do
    `rails db:create db:migrate`
  end

  desc "Dropa o banco existente e cria novamente e executa as migrations"
  task rmkdb: :environment do
    `rails db:drop db:create db:migrate`
  end

  desc "TODO"
  task sdb: :environment do
  end

end
