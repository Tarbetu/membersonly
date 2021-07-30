class PostsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]

  def index
    @posts = Post.all.order 'created_at DESC'
    @the_new = Post.new if user_signed_in?
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(new_post_params)

    if @post.save
      redirect_to @post, notice: 'Your post has been created'
    else
      render :new, alert: 'Your post did NOT created'
    end
  end

  def new_post_params
    params.require(:post).permit(:name, :content)
  end
end
