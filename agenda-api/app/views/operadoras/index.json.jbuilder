json.array!(@operadoras) do |operadora|
  json.extract! operadora, :id, :nome, :categoria, :codigo, :preco
  json.url operadora_url(operadora, format: :json)
end
