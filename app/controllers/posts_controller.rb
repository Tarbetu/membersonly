class PostsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]

  def index
    @posts = Post.all.order 'created_at DESC'
    @the_new = current_user.posts.new if user_signed_in?
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    flash[:notice] = "Your secret has been removed"
    redirect_to root_path
  end

  def create
    @post = current_user.posts.new(new_post_params)

    if @post.save
      flash[:notice] = 'Your secret has been published.'
      redirect_to post_path(@post)
    else
      flash[:alert] = @post.errors.full_messages.join("\n")
      render :new
    end
  end

  private

  def new_post_params
    params.require(:post).permit(:name, :content, :user_id)
  end
end
