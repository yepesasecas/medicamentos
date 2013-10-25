class Patient < ActiveRecord::Base

	validates :nombre_uno, :apellido_uno, :documento_identidad, :fecha_nacimiento, :telefono, presence: true
	validates :documento_identidad, uniqueness: true
	validates :documento_identidad, :telefono, :celular, numericality: true

	def nombre_completo
		self.nombre_uno + " " + self.nombre_dos + " " + self.apellido_uno + " " + self.apellido_dos
	end
end
