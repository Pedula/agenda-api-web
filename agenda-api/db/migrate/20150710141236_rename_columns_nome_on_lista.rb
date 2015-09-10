class RenameColumnsNomeOnLista < ActiveRecord::Migration
  def change
    rename_column :lista, :nome, :nomeOp
  end
end
