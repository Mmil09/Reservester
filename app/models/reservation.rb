class Reservation < ActiveRecord::Base 
	belongs_to :restaurant#, inverse_of: :reservations
	validates_presence_of :time, :date, :email
	validates :message, length: { maximum: 200,
    too_long: "%{count} characters is the maximum allowed" }
end
