class PagesController < ApplicationController
  def home
    @aircrafts = Aircraft.all
  end

  def test
    if params[:query].present?
      @aircrafts = Aircraft.where(airport: params[:query])
    else
      @movies = Movie.all
    end
  end

end
