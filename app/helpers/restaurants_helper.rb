module RestaurantsHelper
  def owned?(restaurant)
    owner_signed_in? && current_owner.id == restaurant.owner_id
  end
	
end
