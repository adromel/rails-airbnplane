class PagesController < ApplicationController
  def home
    @aircrafts = Aircraft.all
  end

  def test

  end

end
