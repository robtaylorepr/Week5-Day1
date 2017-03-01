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

  # should return a JSON representation
  # of the posts written by a user with
  # an username of params[:id]
  def showposts
    user = User.find(params[:id]).posts
    binding.pry
    if user
      render json: user
    else
      render json: user.errors.full_messages
    end
  end

end
