class User < ActiveRecord::Base
	validates_uniqueness_of :email_address
	has_many :restaurants

	scope :alphabetical, -> {where('first_name ASC')} 
	scope :admin, -> {where(admin: true)} #passes where into the scope function
end
