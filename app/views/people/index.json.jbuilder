json.array!(@people) do |person|
  json.extract! person, :points_per_day, :name, :weight
  json.url person_url(person, format: :json)
end
