json.array!(@galleries) do |gallery|
  json.extract! gallery, :id, :title, :image
  json.url gallery_url(gallery, format: :json)
end
