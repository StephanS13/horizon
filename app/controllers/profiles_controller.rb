class ProfilesController < ApplicationController
  def show
    @user = current_user
    # @favorite_city = City.joins(:favorites_pois).where()
    @favorite_cities = current_user.favorite_cities
    @favorites_pois = current_user.pois
    @last_reviews = current_user.reviews.last(3)
    @my_pois = Poi.joins(:reviews).where(reviews: { user: current_user })

    @markers = @favorites_pois.geocoded.map do |poi|
      {
        lat: poi.latitude,
        lng: poi.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { poi: poi }),
        image_url: helpers.asset_url('logo.png')
      }
    end
  end
end
