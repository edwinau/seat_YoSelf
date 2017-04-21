class ReservationsController < ApplicationController
    before_action :ensure_logged_in, only: [:create, :destroy]

  def new
    @reservation = Reservation.new
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def show
    @reservation = Resveration.find(params[:id])
  end

  def create
    # @reservation = Reservation.new(reservation_params)
    # @reservation.user_id = current_user.id
    @reservation = current_user.reservations.new(reservation_params)

    if @reservation.save
      redirect_to user_url
    else
      render :new
    end

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
    params.require(:reservation).permit(:time, :date, :number_of_guests, :user_id, :restaurant_id)
  end

end
