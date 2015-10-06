json.array!(@quotes) do |quote|
  json.extract! quote, :id, :cont
  json.url quote_url(quote, format: :json)
end
