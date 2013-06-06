json.array!(@gymdays) do |gymday|
  json.extract! gymday, :location
  json.url gymday_url(gymday, format: :json)
end