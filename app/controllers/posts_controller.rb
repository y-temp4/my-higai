class PostsController < ApplicationController
  def index
    @posts = Post.all.order("id desc")
  end

  def new
    @categories = Category.all
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, notice: '投稿しました'
    else
      render :new
    end
  end

  def edit
  end

  def show
    @post = Post.includes(:category, :user).find_by(id: params[:id])
    @new_posts = Post.where.not(category_id: @post.category_id)
                     .limit(5)
                     .order("id DESC")

    # @comments = Comment.includes(:users).where(post_id: params[:id])
    # @comments = Comment.preload(:user).where(post_id: params[:id])
    @comments = Comment.where(post_id: params[:id])
    @comment = Comment.new
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :category_id, :user_id)
  end
end
