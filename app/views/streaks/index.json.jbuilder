json.array!(@streaks) do |streak|
  json.extract! streak, :id, :number_of_days, :lang_id
  json.url streak_url(streak, format: :json)
end
