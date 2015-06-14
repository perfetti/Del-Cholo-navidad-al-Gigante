class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]


  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(set_category)
    @title = @category.name
    @posts = @category.posts
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name)
    end
end
