json.array!(@amounts) do |amount|
  json.extract! amount, :cantidad, :unidad
  json.url amount_url(amount, format: :json)
end
