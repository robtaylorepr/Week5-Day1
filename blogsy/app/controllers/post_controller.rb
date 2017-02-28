class PostController < ApplicationController
  
  def root
  end

  def index
    @posts = Post.all
    render json: @posts
  end

  def show
    @post = Post.find(params[:id])
    render json: @post
  end

  #return a JSON representation of the comments left on the post with an ID of params[:id]
  def showcomments
    @comments = Post.find(params[:id]).comments
    render json: @comments
  end

end
