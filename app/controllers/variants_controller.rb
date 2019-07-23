class VariantsController < ApplicationController

  def new
    @variant = Variant.new
  end
  def create
    @variant = Variant.new(variant_params)
    if @variant.save
      flash[:notice] = 'Variant of the product is created successfully.'
      redirect_to variant_path(@variant)
    else
      render 'new'
    end
  end

  def show

  end

  private
  def variant_params
    params.require(:variant).permit(:name, :mode, :pieces, :box_size, :MRP,:product_id)
  end
end
