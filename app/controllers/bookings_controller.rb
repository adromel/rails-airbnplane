class BookingsController < ApplicationController
  # def index
  #   @bookings = Booking.all
  # end
  before_action :set_aircraft
  def create
    @booking = Booking.new(booking_params.merge(user: current_user, airport: @aircraft.airport, end_on: end_on))

    if @error = Booking.where(start_on: @booking.start_on, end_on: @booking.end_on).exists?
      return
    else
      if @booking.save
        redirect_to root_path, status: :see_other
      else
        render 'aircrafts/show'
      end
    end
  end

  def new
    @booking = Booking.new
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

  def end_on
    booking_params[:start_on].split(' ').last
  end

  def set_aircraft
    @aircraft = Aircraft.find(booking_params[:aircraft_id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :airport_id, :aircraft_id, :start_on, :end_on)
  end
end
