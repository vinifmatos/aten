class CreateTipoAtendimentos < ActiveRecord::Migration[6.0]
  def change
    create_table :tipo_atendimentos do |t|
      t.string :descricao
      t.boolean :ativo

      t.timestamps
    end
  end
end
