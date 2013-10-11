json.array!(@members) do |member|
  json.extract! member, :name, :info
  json.url member_url(member, format: :json)
end
