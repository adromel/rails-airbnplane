class AirportsController < ApplicationController
  def index
    @airports = Airport.all
  end

  def show
    @airport = Airport.find(params[:id])
    @aircrafts = Aircraft.where(airport_id: @airport.id)
  end
end
