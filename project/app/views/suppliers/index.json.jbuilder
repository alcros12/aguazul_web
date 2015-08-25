json.array!(@suppliers) do |supplier|
  json.extract! supplier, :id, :name, :address, :phone, :Contact_name
  json.url supplier_url(supplier, format: :json)
end
