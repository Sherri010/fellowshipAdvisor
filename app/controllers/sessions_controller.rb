class SessionsController < ApplicationController
  after_filter :allow_iframe
  def new
    @user = User.new
  end

  def create
    @user = User.confirm(user_params)
    p @user
    p user_params
    if @user
      login(@user)
      redirect_to @user
    else
      flash[:error] = "Wrong username or password."
      redirect_to login_path
    end
  end

  def destroy
    logout
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
