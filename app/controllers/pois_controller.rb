class PoisController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @city = City.find(params[:city_id])
    @pois = @city.pois
    @restaurants = @pois.where(category: "Restaurants").or(@pois.where(category: "Bars/ Vie nocturne"))
    @activities = @pois.where(category: "Activités")
    @unmissables = @pois.where(category: "Incontournables")

    # if params[:category].present?
    #   @pois = @pois.where(category: params[:category])
    # end

    @markers = @pois.geocoded.map do |poi|
      {
        lat: poi.latitude,
        lng: poi.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { poi: poi }),
        image_url: helpers.asset_url('paper-plane.png')
      }
    end
  end

  def show
    @poi = Poi.find(params[:id])
    @reviews = @poi.reviews

    if user_signed_in?
      @favorite_poi = current_user.favorite_pois.find_by(poi_id: @poi.id)
    end
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
