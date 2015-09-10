class Listum < ActiveRecord::Base
	belongs_to :operadora, foreign_key: :operadora_id
end
