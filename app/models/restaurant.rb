class Restaurant < ActiveRecord::Base
	

	validates_uniqueness_of :name
	# validates_presence_of :phone_number
	mount_uploader :image, ImageUploader

	belongs_to :owner
	has_many :reservations, dependent: :destroy#, inverse_of: :restaurants

	validates_presence_of :name
	# validates_presence_of :owner_id

	accepts_nested_attributes_for :reservations, reject_if: :all_blank

end
