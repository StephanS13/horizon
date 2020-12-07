class FavoritePoisController < ApplicationController

  def create
    @poi = Poi.find(params[:poi_id])
    @favorite_poi = FavoritePoi.new
    @favorite_poi.user = current_user
    @favorite_poi.poi = @poi

    @favorite_poi.save

    redirect_to poi_path(@poi)
  end
end
