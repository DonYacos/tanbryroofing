module ApplicationHelper

	def full_title(page_title)
		base_title = "Bryce Roofing and Contracting"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end

	def body_id(id)
		unless id.empty?
			"id=#{id}"
		end
	end

	def is_active(action)
		params[:action] == action ? "active" : nil
	end
end
