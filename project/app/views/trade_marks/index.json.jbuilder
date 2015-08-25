json.array!(@trade_marks) do |trade_mark|
  json.extract! trade_mark, :id, :name
  json.url trade_mark_url(trade_mark, format: :json)
end
