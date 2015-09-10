class ListumSerializer < ActiveModel::Serializer
  attributes  :id, :nome, :telefone, :preco, :operadora, :data

    def data
      object.created_at
    end

    def nome
      object.nomeOp
    end
    
    def operadora
		object.operadora.nome
    end

    def preco
    	object.operadora.preco
    end
end
