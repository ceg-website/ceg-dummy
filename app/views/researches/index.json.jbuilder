json.array!(@researches) do |research|
  json.extract! research, :id, :rname, :rid, :rbody, :rextra, :rimage, :rlink, :slug, :rauthor
  json.url research_url(research, format: :json)
end
