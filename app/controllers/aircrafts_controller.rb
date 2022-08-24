class AircraftsController < ApplicationController

  before_action :set_aircrafts, only: [:show]

  def new
    @aircraft = Aircraft.new
    @airports = Airport.all
  end

  def index
    @aircrafts = Aircraft.where("owner_id = #{params[:user_id]}")
    @booking = Booking.new(aircraft: @aircraft)
    @dates = [5.days.from_now, 10.days.from_now]
  end

  def show
    # preparer un booking
    @booking = Booking.new(aircraft: @aircraft)
    @dates = [5.days.from_now, 10.days.from_now]
  end

  def create
    @aircraft = Aircraft.create(aircraft_params)
  end

  private

  def set_aircrafts
    @aircraft = Aircraft.find(params[:id])
  end

  def aircraft_params
    params.require(:aircraft).permit(:brand, :model, :daily_price, :owner_id, :airport_id, :photo)
  end
end
