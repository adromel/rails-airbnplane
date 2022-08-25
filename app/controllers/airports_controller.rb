class AirportsController < ApplicationController
  def index
    @airports = Airport.all
  end

  def show
    @airport = Airport.find(params[:id])
    @aircrafts = Aircraft.where(airport_id: @airport.id)
  end

  def search
    @airports = Airport.where("name ILIKE ?", "%#{params[:query]}%")

    if  params[:query].present? && @airports.exists?
      render :search, layout: false
    else
      render plain: ''
    end
  end
end
