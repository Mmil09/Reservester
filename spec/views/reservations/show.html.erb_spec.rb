require 'rails_helper'

RSpec.describe "reservations/show", :type => :view do
  before(:each) do
    @reservation = assign(:reservation, Reservation.create!(
      :email => "Email",
      :date => "Date",
      :time => "Time",
      :message => "MyText",
      :restaurant_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Date/)
    expect(rendered).to match(/Time/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
