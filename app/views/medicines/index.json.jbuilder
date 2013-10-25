json.array!(@medicines) do |medicine|
  json.extract! medicine, :name
  json.url medicine_url(medicine, format: :json)
end
