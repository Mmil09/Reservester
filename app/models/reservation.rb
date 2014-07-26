class Reservation < ActiveRecord::Base 
	belongs_to :restaurant#, inverse_of: :reservations
	validates_presence_of :time
	validates_presence_of :email
	validates_presence_of :date
end
