class AircraftsController < ApplicationController

  before_action :set_aircrafts, only: [:show]

  def new
    @aircraft = Aircraft.new
    @airports = Airport.all
  end

  def index
    @aircrafts = Aircraft.where("owner_id = #{params[:user_id]}")
  end


  def show
    # preparer un booking
    @booking = Booking.new(aircraft: @aircraft)
    # Je veux desactiver tous les jours qui se trouvent dans l'interval start_on end_on
    # @dates = [@start.days.from_now, @end.days.from_now]
    @disabled_dates = @aircraft.bookings.map {|b| (b.start_on..b.end_on).to_a }.flatten.uniq
  end

  def index
    @aircrafts = Aircraft.where("owner_id = #{params[:user_id]}")
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
