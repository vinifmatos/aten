class CreateDepartamentos < ActiveRecord::Migration[6.0]
  def change
    create_table :departamentos do |t|
      t.string :descricao
      t.references :sudordinacao_adm, foreign_key: { to_table: 'departamentos' }
      t.boolean :ativo

      t.timestamps
    end
  end
end
