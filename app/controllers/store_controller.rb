class StoreController < ApplicationController
  def index
    @main_images = MainImage.order(:main_image)
  end
end
