module ApplicationHelper

	# return the logo:
	def logo
		image_tag(
			"logo.png", 
			:alt => "Sample Application", 
			:class => "round")
	end

	# Return a title on a per-page basis:
	def title

		base_title = "Sample Application"

		if @title.nil?
			base_title
		else
			"#{base_title} | #{@title}"
		end

	end

end
