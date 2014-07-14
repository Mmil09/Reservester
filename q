
[1mFrom:[0m /home/admin/Downloads/Github/Reservester/app/controllers/restaurants_controller.rb @ line 30 RestaurantsController#create:

    26: [32mdef[0m [1;34mcreate[0m
    27:   @restaurant = [1;34;4mRestaurant[0m.new(restaurant_params)
    28: 
    29:   respond_to [32mdo[0m |format|
 => 30:     binding.pry
    31:     [32mif[0m @restaurant.save
    32:       format.html { redirect_to @restaurant, [35mnotice[0m: [31m[1;31m'[0m[31mRestaurant was successfully created.[1;31m'[0m[31m[0m }
    33:       format.json { render [33m:show[0m, [35mstatus[0m: [33m:created[0m, [35mlocation[0m: @restaurant }
    34:     [32melse[0m
    35:       format.html { render [33m:new[0m }
    36:       format.json { render [35mjson[0m: @restaurant.errors, [35mstatus[0m: [33m:unprocessable_entity[0m }
    37:     [32mend[0m
    38:   [32mend[0m
    39: [32mend[0m

