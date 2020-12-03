class CitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    price_range = params[:price_range]
    activity    = params[:activity]
    weather     = params[:weather]
    environment = params[:environment]
    query_select = <<~SQL
      *,
      CASE WHEN price_range = #{price_range} THEN 10 ELSE 0 END +
      CASE WHEN activity = '#{activity}' THEN 1 ELSE 0 END +
      CASE WHEN weather = '#{weather}' THEN 1 ELSE 0 END +
      CASE WHEN environment = '#{environment}' THEN 10 ELSE 0 END
      AS score
    SQL
    @cities = City.select(query_select).order('score DESC').limit(3)
  end

  def show
    # @city = City.find(params[:id])
  end
end
