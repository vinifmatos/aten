class CreateAtendimentos < ActiveRecord::Migration[6.0]
  def change
    create_table :atendimentos do |t|
      t.integer :numero
      t.integer :ano
      t.references :assunto, null: false, foreign_key: true
      t.datetime :data_abertura
      t.datetime :data_finalizacao
      t.datetime :data_arquivamento
      t.text :texto

      t.timestamps
    end
  end
end
