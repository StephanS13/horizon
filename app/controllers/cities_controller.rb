class CitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index, :search]

  def index

    if params[:query].present?
      @city = City.where("name ILIKE ?", "%#{params[:query]}%").first
      if @city
        return redirect_to city_path(@city)
      else
        flash[:alert] = "Impossible de trouver ta ville"
        return redirect_to root_path
      end

    end

    @price_range = params[:price_range]
    @activity    = params[:activity]
    @weather     = params[:weather]
    @environment = params[:environment]
    query_select = <<~SQL
      *,

      CASE WHEN price_range = #{@price_range} THEN 10 ELSE 0 END +
      CASE WHEN activity = '#{@activity}' THEN 1 ELSE 0 END +
      CASE WHEN weather = '#{@weather}' THEN 1 ELSE 0 END +
      CASE WHEN environment = '#{@environment}' THEN 10 ELSE 0 END

      AS score
    SQL
    @cities = City.select(query_select).order('score DESC').limit(3)
  end

  def show
    @city = City.find(params[:id])
    @pois = @city.pois

    if user_signed_in?
      @favorite_city = current_user.favorite_cities.find_by(city_id: @city.id)
    end
  end

  def search
    # if params[:query].present?
    #   @cities = City.where("name ILIKE ?", "%#{params[:query]}%")
    # else
    @cities = City.all
    # end
  end
end
