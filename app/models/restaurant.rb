class Restaurant < ActiveRecord::Base
	validates_uniqueness_of :name
	# validates_presence_of :phone_number
	
end
