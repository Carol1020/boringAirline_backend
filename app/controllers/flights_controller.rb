class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    render :json => @flights
  end

  def new
    @flight = Flight.new
  end

  def search
    @searches =[Flight.where("from=#{params[:origin]}")]
    render :json => @searches
  end
end
