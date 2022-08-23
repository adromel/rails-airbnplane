class AircraftsController < ApplicationController

  def new
    @aircraft = Aircraft.new
    @airports = Airport.all
  end

  def create
    @aircraft = Aircraft.create(aircraft_params)
  end


  private

  def aircraft_params
    params.require(:aircraft).permit(:brand, :model, :daily_price, :owner_id, :airport_id, :photo)
  end
end
