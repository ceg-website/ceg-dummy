json.array!(@departments) do |department|
  json.extract! department, :id, :dname, :did, :body, :extra1, :dimage, :dlink, :slug
  json.url department_url(department, format: :json)
end
