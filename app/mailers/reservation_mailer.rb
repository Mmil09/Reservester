class ReservationMailer < ActionMailer::Base
  default from: "michael@michael-miller.us"

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def reservation_notification(restaurant, reservation)
  	#break if restaurant.owner_id.blank?
  	#binding.pry
    @restaurant = restaurant
    @reservation = reservation
   	@user = Owner.find_by_id(restaurant.owner_id)
    @url  = 'http://www.google.com'
    mail( :to => @user.email,
    :subject => 'New Reservation' )
  end
end
