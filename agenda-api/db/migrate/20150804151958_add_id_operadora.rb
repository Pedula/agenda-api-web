class AddIdOperadora < ActiveRecord::Migration
  def change
  	add_column :lista, :operadora_id, :integer
  end
end
