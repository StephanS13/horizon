class PoisController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @city = City.find(params[:city_id])
    @pois = @city.pois
    @restaurants = @pois.where(category: "Restaurants").or(@pois.where(category: "Bars/ Vie nocturne")).first(3)
    @activities = @pois.where(category: "Activités").first(3)
    @unmissables = @pois.where(category: "Incontournables").first(3)

    # if params[:category].present?
    #   @pois = @pois.where(category: params[:category])
    # end

    @markers = @pois.geocoded.map do |poi|
      {
        lat: poi.latitude,
        lng: poi.longitude,
        image_url: helpers.asset_url('paper-plane.png')
      }
    end
  end

  # def show
  #   @poi = Poi.find(params[:id])
  # end
end
