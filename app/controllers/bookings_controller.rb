class BookingsController < ApplicationController
  before_action :set_booking, only: %i[accept decline]

  def create
    @booking = Booking.new(booking_params.merge(user: current_user, end_on: end_on))

    # if Booking.where(start_on: @booking.start_on, end_on: @booking.end_on).exists?
    #   Flash.now[:alert] = "Cet avion est déjà réservé"
    # else
      if @booking.save
        redirect_to root_path, status: :see_other
      else
        @error_booking = @booking.errors.full_messages
        render 'aircrafts/show'
      end
    # end
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

  def edit
    @booking = Booking.find(params[:id])
  end

  def accept
    @booking.update!(confirmed: true)
    redirect_to user_aircrafts_path(current_user)
  end

  def decline
    @booking.update!(confirmed: false)
    redirect_to user_aircrafts_path(current_user)
  end

  private

  def end_on
    booking_params[:start_on].split(' ').last
  end

  def set_aircraft
    @aircraft = Aircraft.find(params[:aircraft_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :aircraft_id, :start_on, :end_on, :confirmed)
  end
end
