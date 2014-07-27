class Owner < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :restaurants, dependent: :destroy
  has_many :reservations, through: :restaurants

  validates_uniqueness_of :email

  # (is not needed b/c restaurant attr. are not needed on sign up page) accepts_nested_attributes_for :restaurants
end
