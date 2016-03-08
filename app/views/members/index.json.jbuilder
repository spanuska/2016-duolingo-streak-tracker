json.array!(@members) do |member|
  json.extract! member, :id, :username
  json.url member_url(member, format: :json)
end
