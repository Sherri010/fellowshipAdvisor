class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def new
    @city = City.new
  end

  def create
    @city = City.create(city_params)
  end

  def show
    @city = City.friendly.find(params[:id])
    @post = Post.new
  end

  private

  def city_params
    params.require(:city).permit(:name, :country, :picture)
  end
end
