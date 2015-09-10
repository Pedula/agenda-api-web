class CreateContatos < ActiveRecord::Migration
  def change
    create_table :contatos do |t|
      t.string :nome
      t.string :telefone
      t.string :cor

      t.timestamps null: false
    end
  end
end
