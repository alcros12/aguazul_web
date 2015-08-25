json.array!(@categories) do |category|
  json.extract! category, :id, :Category_name, :Category_description
  json.url category_url(category, format: :json)
end
