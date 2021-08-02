class LikesController < ApplicationController
  before_action :authenticate_user!, :find_post
  before_action :find_like, only: %i[destroy]

  def create
    @post.likes.create(user_id: current_user.id) unless already_liked?
    redirect_to post_path(@post)
  end

  def destroy
    @like.destroy if already_liked?
    redirect_to post_path(@post)
  end

  private

  def already_liked?
    Like.where(user_id: current_user.id, post_id: params[:post_id]).exists?
  end

  def find_post
    @post = Post.find(params[:post_id])
  end

  def find_like
    @like = @post.likes.find(params[:id])
  end
end
