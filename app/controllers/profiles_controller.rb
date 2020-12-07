class ProfilesController < ApplicationController
  def show
    @user = current_user
    # @favorite_city = City.joins(:favorites_pois).where()
    @favorites_cities = current_user.favorite_cities
    @favorites_pois = current_user.favorite_pois
    @last_reviews = current_user.reviews.last(3)
    @my_pois = Poi.joins(:reviews).where(reviews: { user: current_user })
  end
end
