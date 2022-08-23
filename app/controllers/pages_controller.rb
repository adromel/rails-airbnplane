class PagesController < ApplicationController

  def home
    @aircrafts = Aircraft.all
  end

end
