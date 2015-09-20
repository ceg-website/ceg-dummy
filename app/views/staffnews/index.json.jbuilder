json.array!(@staffnews) do |staffnews|
  json.extract! staffnews, :id, :stnews, :stid
  json.url staffnews_url(staffnews, format: :json)
end
