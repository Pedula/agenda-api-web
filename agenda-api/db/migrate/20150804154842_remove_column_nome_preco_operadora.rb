class RemoveColumnNomePrecoOperadora < ActiveRecord::Migration
  def change
  	remove_column :lista, :operadora
  	remove_column :lista, :preco
  end
end
