class BookingsController < ApplicationController
  before_action :set_aircraft, only: %i[new create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.aircraft = @aircraft
    @booking.save
  end

  def index
    @bookings = Booking.where("user_id = #{params[:user_id]}")
    # if b.aircraft.owner_id == params(user_id) then display ?
    # @reservations = Booking.where("aircraft_id = #{Aircraft.where("owner_id = #{params[:user_id]}").ids}")
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def set_aircraft
    @aircraft = Aircraft.find(params[:aircraft_id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :airport_id, :aircraft_id, :start_on, :end_on)
  end
end
