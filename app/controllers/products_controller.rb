class ProductsController < ApplicationController
  def create
    @main_image = MainImage.find(params[:main_image_id])
    @product = MainImage.find(params[:main_image_id]).products.new(params[:product])
    if @product.save
      redirect_to main_image_path(@main_image)
    else
      render :template => "main_images/show"  
    end    
  end
  def edit
    @product = Product.find(params[:id])
  end
  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    
    render json: { product: @product}
  end
end
