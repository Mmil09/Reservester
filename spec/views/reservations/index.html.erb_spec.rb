require 'rails_helper'

RSpec.describe "reservations/index", :type => :view do
  before(:each) do
    assign(:reservations, [
      Reservation.create!(
        :email => "Email",
        :date => "Date",
        :time => "Time",
        :message => "MyText",
        :restaurant_id => 1
      ),
      Reservation.create!(
        :email => "Email",
        :date => "Date",
        :time => "Time",
        :message => "MyText",
        :restaurant_id => 1
      )
    ])
  end

  it "renders a list of reservations" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "Time".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
