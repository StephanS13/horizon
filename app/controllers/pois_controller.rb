class PoisController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @city = City.find(params[:city_id])
    @pois = @city.pois
    @restaurants = @pois.where(category: "Restaurants").or(@pois.where(category: "Bars/ Vie nocturne"))
    @activities = @pois.where(category: "Activités")
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

  def show
    @poi = Poi.find(params[:id])
    @reviews = @poi.reviews
  end

  def new
    @poi = Poi.new
    @city = City.find(params[:city_id])
    @category = ["Restaurants", "Bars / Vie Nocturne", "Incoutournables", "Activités"]
    @price_range = ["€", "€€", "€€€"]
  end

  def create
    @city = City.find(params[:city_id])
    @category = ["Restaurants", "Bars / Vie Nocturne", "Incoutournables", "Activités"]
    @price_range = ["€", "€€", "€€€"]
    @poi = Poi.new(poi_params)
    @poi.city = @city
    @poi.user = current_user
    @poi.save!
    redirect_to city_pois_path(@city)
  end

  private

  def poi_params
    params.require(:poi).permit(:title, :category, :description, :price_range, :address, photos: [])
  end
end
