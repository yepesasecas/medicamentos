json.array!(@frequencies) do |frequency|
  json.extract! frequency, :frecuencia, :horas_frecuencia
  json.url frequency_url(frequency, format: :json)
end
