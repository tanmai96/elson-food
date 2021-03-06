class CategoriesController < ApplicationController

  #action for loading category form
  def new
    @category = Category.new
  end

  def show
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = 'category is created successfully'
      redirect_to category_path(@category)
    else
      render 'new'
    end
  end


  private

  def category_params
    params.require(:category).permit(:name)
  end

end
