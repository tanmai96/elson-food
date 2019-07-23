class ProductsController < ApplicationController

  def new
    @product = Product.new
  end
  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = 'Variant of the product is created successfully.'
      redirect_to product_url(@product)
    else
      render 'new'
    end
  end

  def show

  end

  #Give permission of the attributes to store in products table
  private
  def product_params
    params.require(:product).permit(:name, :description, :category_id)
  end

end
