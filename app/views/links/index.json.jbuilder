json.array!(@links) do |link|
  json.extract! link, :title, :url, :band_id, :member_id
  json.url link_url(link, format: :json)
end
