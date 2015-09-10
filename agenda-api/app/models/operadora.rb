class Operadora < ActiveRecord::Base
	self.primary_key = 'id' 
	has_one :listum, foreign_key: :id
end
