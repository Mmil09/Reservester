class Reservation < ActiveRecord::Base 
	belongs_to :restaurant#, inverse_of: :reservations
end
