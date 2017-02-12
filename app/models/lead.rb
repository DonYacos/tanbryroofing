class Lead < ActiveRecord::Base
	has_many :estimates

	def full_name
		"#{firstName.capitalize} #{lastName.capitalize}"
	end

	def address
		"#{streetnumber} #{street}, #{city}, #{state}  #{zip}" 
	end
end
