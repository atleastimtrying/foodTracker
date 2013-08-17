json.array!(@weights) do |weight|
  json.extract! weight, :person_id, :weight
  json.url weight_url(weight, format: :json)
end
