module LeadsHelper

	def address_for_google_maps(lead)
		@lead = lead
		address = "#{lead.streetnumber} #{lead.street}, #{lead.city}, #{lead.state} #{lead.zip}"
		address.split.map { |e| "+" + e }.join
	end
end
