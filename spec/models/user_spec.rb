require 'rails_helper'

RSpec.describe User, :type => :model do

	let(:user) {User.create(email_address: 'test@test.com')}

	it "should not allow duplicate email addresses" do 
	user_2 = User.new(email_address: user.email_address)

	expect(user_2.save).to be false
	expect(user_2.errors[:email_address]).not_to be_nil
	end

end


