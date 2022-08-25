class AircraftsController < ApplicationController

  before_action :set_aircrafts, only: [:show]

  def new
    @aircraft = Aircraft.new
    @airports = Airport.all
  end

  def index
    @aircrafts = Aircraft.where("owner_id = #{current_user.id}")
    @booking = Booking.new(aircraft: @aircraft)
    @dates = [5.days.from_now, 10.days.from_now]
  end

  def show
    # preparer un booking
    @booking = Booking.new(aircraft: @aircraft)
    # Je veux desactiver tous les jours qui se trouvent dans l'interval start_on end_on
    # @dates = [@start.days.from_now, @end.days.from_now]
    @disabled_dates = @aircraft.bookings.map { |b| (b.start_on..b.end_on).to_a }.flatten.uniq
  end

  def create
    @aircraft = current_user.aircrafts.create!(aircraft_params)

    redirect_to user_aircrafts_path(current_user)
  end

  private

  def set_aircrafts
    @aircraft = Aircraft.find(params[:id])
  end

  def aircraft_params
    params.require(:aircraft).permit(:brand, :model, :daily_price, :owner_id, :airport_id, :photo)
  end
end
