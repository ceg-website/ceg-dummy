json.array!(@dept_faculs) do |dept_facul|
  json.extract! dept_facul, :id, :name
  json.url dept_facul_url(dept_facul, format: :json)
end
