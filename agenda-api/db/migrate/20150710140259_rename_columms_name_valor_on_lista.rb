class RenameColummsNameValorOnLista < ActiveRecord::Migration
  def change
    rename_column :lista, :name, :nome
    rename_column :lista, :valor, :preco
      # rename_column :users, :password, :password_digest
  end
end
