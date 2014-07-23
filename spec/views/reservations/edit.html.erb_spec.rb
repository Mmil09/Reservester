require 'rails_helper'

RSpec.describe "reservations/edit", :type => :view do
  before(:each) do
    @reservation = assign(:reservation, Reservation.create!(
      :email => "MyString",
      :date => "MyString",
      :time => "MyString",
      :message => "MyText",
      :restaurant_id => 1
    ))
  end

  it "renders the edit reservation form" do
    render

    assert_select "form[action=?][method=?]", reservation_path(@reservation), "post" do

      assert_select "input#reservation_email[name=?]", "reservation[email]"

      assert_select "input#reservation_date[name=?]", "reservation[date]"

      assert_select "input#reservation_time[name=?]", "reservation[time]"

      assert_select "textarea#reservation_message[name=?]", "reservation[message]"

      assert_select "input#reservation_restaurant_id[name=?]", "reservation[restaurant_id]"
    end
  end
end
