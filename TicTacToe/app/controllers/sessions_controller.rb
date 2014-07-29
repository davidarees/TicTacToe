class SessionsController  < ApplicationController
  def index
    
  end

  def show

  end

  def new
    
  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Logged in"
    else
      flash.now.alert = "invalid login credentials"
      render "new"
    end
  end

  def edit
    
  end

  def update
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "logged out!"
  end
end