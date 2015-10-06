json.array!(@thirukurals) do |thirukural|
  json.extract! thirukural, :id, :cont
  json.url thirukural_url(thirukural, format: :json)
end
