class PoisController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @city = City.find(params[:city_id])
    @pois = @city.pois

    if params[:category].present?
      @pois = @pois.where(category: params[:category])
    end

    @markers = @pois.geocoded.map do |poi|
      {
        lat: poi.latitude,
        lng: poi.longitude
      }
    end
  end

  def show
    @poi = Poi.find(params[:id])
    @reviews = @poi.reviews
  end
end
