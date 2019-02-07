class PostsController < ApplicationController

  def show
    @post = Post.find(id_params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to user_path(@post.user_id)
    else
      redirect_to new_post_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
    post = Post.find(id_params[:id])
    post.destroy
    redirect_to user_path(post.user_id)
  end


  private

  def post_params
    params.require(:post).permit(:title, :studied_at, :study_time, :content, :study_method, :reflection, :next_study, :other, :study_minutes).merge(user_id: current_user.id)
  end

  def id_params
    params.permit(:id)
  end
end


