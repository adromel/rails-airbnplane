class BookingsController < ApplicationController
<<<<<<< HEAD
  # def index
  #   @bookings = Booking.all
  # end
  before_action :booking_params, only [:create]
  before_action :set_aircraft, only: %i[new create]

  def create
    @booking = Booking.new
    @booking.aircraft = @booking
    @booking.create

    redirect_to root_path, status: :see_other
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.aircraft = @aircraft
    @booking.save
  end

  private

  def booking_params
    params.require(:booking).permit(:start_on, :end_on)
  def set_aircraft
    @aircraft = Aircraft.find(params[:aircraft_id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :airport_id, :aircraft_id, :start_on, :end_on)
  end
end
