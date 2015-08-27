json.array!(@categories) do |category|
  json.extract! category, :id, :name, :Category_description
  json.url category_url(category, format: :json)
end
