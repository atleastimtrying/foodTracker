json.array!(@food_records) do |food_record|
  json.extract! food_record, :name, :points, :weight
  json.url food_record_url(food_record, format: :json)
end
