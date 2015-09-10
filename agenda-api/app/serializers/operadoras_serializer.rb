class OperadorasSerializer < ActiveModel::Serializer
  attributes  :id, :nomeOp, :categoria, :preco

    def nomeOp
      object.nome
    end
end
