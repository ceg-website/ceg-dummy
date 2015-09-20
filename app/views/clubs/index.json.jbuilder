json.array!(@clubs) do |club|
  json.extract! club, :id, :cname, :cid, :cbody, :extra, :cimage, :clink, :slug
  json.url club_url(club, format: :json)
end
