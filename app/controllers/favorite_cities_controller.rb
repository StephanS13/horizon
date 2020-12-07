class FavoriteCitiesController < ApplicationController

  def create
    @city = City.find(params[:city_id])
    @favorite_city = FavoriteCities.new
    @favorite_city.user = current_user
    @favorite_city.city = @city

    @favorite_city.save

    redirect_to city_path(@city)
  end
end
