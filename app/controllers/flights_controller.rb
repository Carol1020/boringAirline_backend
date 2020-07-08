class FlightsController < ApplicationController
  def index
    @flights = Flight.all
  end

  def new
    @flight = Flight.new
  end
end
