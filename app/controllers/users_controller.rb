class UsersController < ApplicationController
     before_action :authenticate , only: [:show, :edit,:update]
     before_action :set_user, only: [:show, :edit, :update]
     before_action :authorize!, only: [:show, :edit, :update]
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
     @user.picture != "" ? @user.picture : @user.picture = "http://www.collecttolkien.com/images/Stickers/Sticker%20LOTR%20Middle-Earth.jpg"
    if @user.save
    login(@user)
    redirect_to @user
    else
      flash[:error] = "Invalid user information."
      redirect_to new_user_path
    end
  end

  def show
    if current_user.id == params[:id]
       @user = User.friendly.find(params[:id])
       @posts = Post.where(user_id: current_user.id).order(created_at: :desc)
     else
       @user = User.friendly.find(current_user.id)
       @posts = Post.where(user_id: current_user.id).order(created_at: :desc)
     end
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      @user.save
      redirect_to @user
    else
     flash[:error] = "invalid information"
     redirect_to edit_user_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :current_city, :email, :password, :picture)
  end
  def set_user
     @user = User.friendly.find(params[:id])
  end

  def authorize!
    redirect_to user_path(current_user.id) unless current_user == @user
   end

end
