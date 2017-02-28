class UserController < ApplicationController

  def all
    @users = User.all
    render json: @users
  end

  def create
    user = User.new(
      username: params[:user][:username],
      email:    params[:user][:email],
      bio:      params[:user][:bio]
      )
    if user.save
      render json: user
    else
      render json: user.errors.full_messages
    end
  end

end
