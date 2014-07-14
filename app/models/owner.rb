class Owner < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    has_many :restaurants, dependent: :destroy

    #validates :name, presence: true
    validates :email, presence: true

	def owns?(restaurant)
		restaurant.owner_id == self.id #implied return of true or false
	end

end