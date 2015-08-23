json.array!(@tipos) do |tipo|
  json.extract! tipo, :id, :tipo_name, :tipo_des
  json.url tipo_url(tipo, format: :json)
end
