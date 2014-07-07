require 'rails_helper'

RSpec.describe RestaurantsController, :type => :controller do

	let(:restaurant) {Restaurant.create(name: 'Test Cafe', phone_number:'42342')}

	it "it should return a list of all restaurants" do 
	get :index

	expect(assigns[:restaurants]).to eq []
	end

end


