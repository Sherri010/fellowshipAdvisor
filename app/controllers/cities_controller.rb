class CitiesController < ApplicationController

  def index
    @cities = City.all
  end

  def new
    @city = City.new
  end

  def create
    @city = City.create(city_params)
    if @city.save
      flash[:success] ="new city added"
      redirect_to cities_path
    else
      flash[:error] = "something went wrong. please try again"
      redirect_to :back
    end
  end

  def show
    @city = City.friendly.find(params[:id])
    @post = Post.new
    @posts = City.friendly.find(params[:id]).posts.order(created_at: :desc)
  end

  def edit
    @city = City.friendly.find(params[:id])
  end

  def update
     @city = City.friendly.find(params[:id])
     @city.update_attributes(city_params)
      if @city.save
        redirect_to @city
     else
       flash[:error] = "invalid information"
       redirect_to edit_city_path
     end
  end

  def destroy
    City.friendly.find(params[:id]).destroy
    redirect_to cities_path
  end

  private

  def city_params
    params.require(:city).permit(:name, :country, :picture)
  end
end
