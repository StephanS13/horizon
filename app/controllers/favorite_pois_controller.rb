class FavoritePoisController < ApplicationController
  def index
    @city = City.find(params[:city_id])
    @favorite_pois = FavoritePoi.joins(:poi).where(pois: { city: @city }).where(user: current_user)
    @pois = Poi.where(id: @favorite_pois.pluck(:poi_id))

    @markers = @pois.geocoded.map do |poi|
      {
        lat: poi.latitude,
        lng: poi.longitude,
        image_url: helpers.asset_url('paper-plane.png')
      }
    end
  end

  def create
    @poi = Poi.find(params[:poi_id])
    @favorite_poi = FavoritePoi.new
    @favorite_poi.user = current_user
    @favorite_poi.poi = @poi

    @favorite_poi.save

    if params[:source] == "pois_listing"
      redirect_to city_pois_path(@poi.city)
    else
      redirect_to poi_path(@poi)
    end
  end
end
