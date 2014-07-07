class Restaurant < ActiveRecord::Base
	validates_uniqueness_of :name
	validates_presence_of :phone_number
	belongs_to :user

	before_validation do
		self.phone_number = "1-555-555-5555"
	end
end
