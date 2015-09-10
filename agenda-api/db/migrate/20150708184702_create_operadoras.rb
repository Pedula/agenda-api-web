class CreateOperadoras < ActiveRecord::Migration
  def change
    create_table :operadoras do |t|
      t.string :nome
      t.string :categoria
      t.integer :codigo
      t.float :preco

      t.timestamps null: false
    end
  end
end
