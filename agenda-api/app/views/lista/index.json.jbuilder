json.array!(@lista) do |listum|
  json.extract! listum, :id, :nomeOp, :telefone, :operadora, :preco
  json.url listum_url(listum, format: :json)
end
