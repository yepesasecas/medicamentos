class Frequency < ActiveRecord::Base
	validates :frecuencia, :horas_frecuencia, presence: true
end
