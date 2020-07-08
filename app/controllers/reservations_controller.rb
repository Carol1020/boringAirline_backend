class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    reservation = Reservation.create reservation_params
    redirect_to reservation
  end


  def show
    @reservation = Reservation.find params[:id]
  end

  private
  def resercation_params
  end
end
