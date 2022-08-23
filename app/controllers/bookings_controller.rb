class BookingsController < ApplicationController
  # def index
  #   @bookings = Booking.all
  # end
  before_action :booking_params, only [:create]

  def create
    @booking = Booking.new
    @booking.aircraft = @booking
    @booking.create

    redirect_to root_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:start_on, :end_on)
  end
end
