json.array!(@studentnews) do |studentnews|
  json.extract! studentnews, :id, :stnews, :stid
  json.url studentnews_url(studentnews, format: :json)
end
