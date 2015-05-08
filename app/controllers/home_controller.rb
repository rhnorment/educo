class HomeController < ApplicationController

	def index
		@page_title = 'Home'
		@contact = Contact.new
	end

end
