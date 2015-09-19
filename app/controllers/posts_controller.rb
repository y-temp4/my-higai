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
  end

  private
    def post_params
      params.require(:post).permit(:title, :body, :category_id, :user_id)
    end
end
