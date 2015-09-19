class TopsController < ApplicationController
  def index
    @mouyamete = Category.first
    @fusegu = Category.second
    @kiite = Category.third
  end
end
