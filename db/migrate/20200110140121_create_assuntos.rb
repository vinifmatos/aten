class CreateAssuntos < ActiveRecord::Migration[6.0]
  def change
    create_table :assuntos do |t|
      t.string :descricao
      t.references :tipo_atendimento, null: false, foreign_key: true
      t.boolean :ativo

      t.timestamps
    end
  end
end
