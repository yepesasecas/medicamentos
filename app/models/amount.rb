class Amount < ActiveRecord::Base
	validates :cantidad, :unidad, presence: true
end
