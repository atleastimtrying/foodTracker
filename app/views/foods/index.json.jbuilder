json.array!(@foods) do |food|
  json.extract! food, :name, :points, :weight
  json.url food_url(food, format: :json)
end
