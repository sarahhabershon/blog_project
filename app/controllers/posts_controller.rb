class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
  end

  def create
  @this_post = Post.new(post_params)

    if @this_post.save
      redirect_to @this_post
      else
      render "new"
    end
  end

  def show
    @this_post = Post.find(params[:id])
  end

private
  def post_params
    params.require(:post).permit(:title, :body, :category)
  end

end
