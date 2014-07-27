class ReservationMailer < ActionMailer::Base
  default from: "michael@michael-miller.us"

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def reservation_notification(restaurant)
  	#break if restaurant.owner_id.blank?
  	#binding.pry
   	#@user = Owner.where(id: restaurant.owner_id)
    @url  = 'http://www.google.com'
    mail( :to => 'Mmil09@gmail.com',
    :subject => 'New Reservation' )
  end
end
