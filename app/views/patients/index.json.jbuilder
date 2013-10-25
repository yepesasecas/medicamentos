json.array!(@patients) do |patient|
  json.extract! patient, :nombre_uno, :nombre_dos, :apellido_uno, :apellido_dos, :documento_identidad, :fecha_nacimiento, :edad, :telefono, :celular, :email, :direccion
  json.url patient_url(patient, format: :json)
end
