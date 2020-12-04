class PoisController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @city = City.find(params[:city_id])
    @pois = @city.pois

  #   @markers = @pois.geocoded.map do |poi|
  #     {
  #       lat: poi.latitude,
  #       lng: poi.longitude
  #     }
  #   end
  end

  def show
    # @pois = Poi.find(params[:id])
    # @reviews = @poi.review
  end
end
