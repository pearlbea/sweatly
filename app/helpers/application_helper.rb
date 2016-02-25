module ApplicationHelper

	def tab_title(page_title = '')
		base_title = 'Sweatly'
		if page_title.empty?
			base_title
		else
			page_title + ' | ' + base_title
		end
	end
	
end
