class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
  	@category = Category.where(id: params[:id]).first
    @posts = Post.where(category_id: params[:id]).order("id DESC")
    @new_posts = Post.where.not(category_id: params[:id])
                     .limit(10)
                     .order("id DESC")
  end
end
