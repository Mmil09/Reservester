 require 'rails_helper'


describe RestaurantsController, :type => :controller do

	context "it makes sure the index returns list of restaurants" do

		let(:restaurant) {Restaurant.create(name: 'Test Cafe', phone_number:'42342')}

		it "it should return a list of all restaurants" do 
		get :index
		expect(assigns[:restaurants]).to eq []
		end
	end

	context "it gets a valid restaurant ID" do
		let(:someid) {1234}
		let(:rest_name) {"Best Pizza"}
		let(:description) {"123 fake st"}
		let(:full_address) {"781-521-1111"}
		let(:phone_number) {"123-456-7891"}

		let(:form_params) {}
		
		it "looks up restaurant by ID" do
			Restaurant.should_receive(:find).with(someid)
			RestaurantsController.update
		end
		it "updates restaurant object with params and redirects" do
			Restaurants.should_receive(:update).with(form_params)
			RestaurantsController.should_receive(:redirect_to).with(:form_params)
			expect(RestaurantsController.update).to be
		end
	#context "it gets and invalid restaurant ID"
	end
end



	

