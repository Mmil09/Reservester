class OwnersController < ApplicationController

	helper :content

	def dashboard
		@restaurants = current_owner.restaurants
	end
	
end
