class UsersController < ApplicationController
  def welcome
  end

  def register
     @user = User.new
     @user.username = params[:username]
     @user.password = params[:password]
     params.required(:username)
     params.required(:password)
     params.permit(:full_name, :street_address, :city, :state, :country, :email)
     if @user.save
      cookies[:username] = @user.username
      cookies[:password] = @user.password
      redirect_to '/log_in'
    else
      redirect_to '/'
    end
  end

  def log_in
      if params[:login_username] == params[:username] && params[:login_password] == params[:password]
          redirect_to '/show'
      else
          redirect_to '/log_in'
      end
  end

  def show
  end
end
