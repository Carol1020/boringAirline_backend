class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    render :json => @flights
  end

  def new
    @flight = Flight.new
  end

  def search
    render :json =>
  end
end
