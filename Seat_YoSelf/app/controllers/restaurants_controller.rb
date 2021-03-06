class RestaurantsController < ApplicationController
  before_action :ensure_logged_in, only: [:create, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new

    @all_cuisines = Cuisine.all #used to generate the cuisines list in _form

    @cuisines_name_id = []
    Cuisine.all.each do |cuisine|
      @cuisines_name_id << [cuisine.cuisine_type, cuisine.id]
    end
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.owner_id = current_user.id
    # @restaurant = current_user.restaurants.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurants_path
    else
      render :new
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
    @cuisines_name_id = []
    Cuisine.all.each do |cuisine|
      @cuisines_name_id << [cuisine.cuisine_type, cuisine.id]
    end
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update_attributes(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path
    else
      render :edit
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :capacity, :first_seating, :last_seating, :city, :address, :phone_number, :url_for_photo, :cuisine_id)
  end

end
