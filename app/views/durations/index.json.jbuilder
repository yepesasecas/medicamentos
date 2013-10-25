json.array!(@durations) do |duration|
  json.extract! duration, :duracion, :dias_duracion
  json.url duration_url(duration, format: :json)
end
