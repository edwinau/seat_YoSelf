class ReservationsController < ApplicationController
    before_action :ensure_logged_in, only: [:create, :destroy]
    before_action :load_restaurant

  def new
    @reservation = Reservation.new
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    # @reservation = Reservation.new(reservation_params)
    # @reservation.user_id = current_user.id
    @reservation = @restaurant.reservations.build(reservation_params)
    # @reservation = current_user.reservations.new(reservation_params)

    @reservation.user = current_user
    @restaurant = @reservation.restaurant
    if @reservation.save
      redirect_to user_path("current")
    else
      render :new
    end


    # if @reservation.save
    #   redirect_to user_url
    # else
    #   render :new
    # end

  end

  def update
    @reservation = Reservation.find(params[:id])

    if @reservation.update_attributes(reservation_params)
      redirect_to user_url
    else
      render :edit
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to restaurants_url
  end

  private

  def reservation_params
    params.require(:reservation).permit(:time, :number_of_guests, :user_id, :restaurant_id)
  end

  def load_restaurant
   @restaurant = Restaurant.find(params[:restaurant_id])
  end

end
