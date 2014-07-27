class RestaurantsController < ApplicationController
 before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
 before_action :authenticate_owner!, except: [:index, :show]

  # GET /restaurants
  # GET /restaurants.json
  def index
    @restaurants = Restaurant.all
  end

  # GET /restaurants/1
  # GET /restaurants/1.json
  def show
    
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
    #@restaurant.reservations = Reservation.new
  end

  # GET /restaurants/1/edit
  def edit
      @restaurant.reservations.build
  end

  # POST /restaurants
  # POST /restaurants.json
  def create
    @restaurant = Restaurant.new(restaurant_params)

    @restaurant.owner = current_owner

    respond_to do |format|
      
      if @restaurant.save
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant }
      else
        format.html { render :new }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurants/1
  # PATCH/PUT /restaurants/1.json
  def update
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        
        ReservationMailer.reservation_notification(@restaurant).deliver
        
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant }
      else
        format.html { render :edit }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurants/1
  # DELETE /restaurants/1.json
  def destroy
    @restaurant.destroy
    respond_to do |format|
      format.html { redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_params
      params.require(:restaurant).permit(:name, :description, :full_address, :phone_number, :image, :remove_image, reservations_attributes: [:email, :time, :date, :message, :restaurant_id, :_destroy])
    end
end
