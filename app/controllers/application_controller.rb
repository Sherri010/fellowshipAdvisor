class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  protect_from_forgery with: :null_session
  include SessionsHelper

  def authenticate
    if !session[:user_id]
      flash[:error]=" You need to login first!"
      redirect_to root_path
    end
  end

  private
   def allow_iframe
     response.headers.delete "X-Frame-Options"
   end
end
