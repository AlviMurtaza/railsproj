class PostsController < ApplicationController
  def index
     @posts = Post.all
  end

  def create
    Post.create params[:title][:body]
    redirect_to :back
  end
end
