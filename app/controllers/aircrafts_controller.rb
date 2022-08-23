class AircraftsController < ApplicationController
  before_action :set_aircrafts, only: [:show]
  def new
    @aircraft = Aircraft.new
    @airports = Airport.all
  end

  def show
    @dates = [5.days.from_now, 10.days.from_now]
  end

  def create
    @aircraft = Aircraft.create(aircraft_params)
  end

  def index
    @aircrafts = Aircraft.all
  end

  private

  def set_aircrafts
    @aircraft = Aircraft.find(params[:id])
  end

  def aircraft_params
    params.require(:aircraft).permit(:brand, :model, :daily_price, :owner_id, :airport_id, :photo)
  end
end
