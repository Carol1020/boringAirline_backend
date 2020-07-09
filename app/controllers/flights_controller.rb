class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    render :json => @flights
  end

  def new
    @flight = Flight.new
  end

  def search
    @searches = Flight.where(origin: params[:origin]).where(destination: params[:destination])#, Flight.where("destination = #{params[:destination]}")]
    render :json => @searches
  end
end
  