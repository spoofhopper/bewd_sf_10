json.array!(@whatevers) do |whatever|
  json.extract! whatever, :id, :title, :year, :available
  json.url whatever_url(whatever, format: :json)
end
