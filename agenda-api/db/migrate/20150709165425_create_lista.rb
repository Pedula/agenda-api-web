class CreateLista < ActiveRecord::Migration
  def change
    create_table :lista do |t|
      t.string :name
      t.string :telefone
      t.string :operadora
      t.float :valor

      t.timestamps null: false
    end
  end
end
