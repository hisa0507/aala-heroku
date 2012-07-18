class MainImagesController < ApplicationController
  # GET /main_images
  # GET /main_images.json
  def index
    @main_images = MainImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @main_images }
    end
  end

  # GET /main_images/1
  # GET /main_images/1.json
  def show
    @main_image = MainImage.find(params[:id])
    @product = MainImage.find(params[:id]).products.build

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @main_image }
    end
  end

  # GET /main_images/new
  # GET /main_images/new.json
  def new
    @main_image = MainImage.new
    @main_image.build_product

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @main_image }
    end
  end

  # GET /main_images/1/edit
  def edit
    @main_image = MainImage.find(params[:id])
    @main_image.build_product if @main_image.product.nil?
  end

  # POST /main_images
  # POST /main_images.json
  def create
    @main_image = MainImage.new(params[:main_image])

    respond_to do |format|
      if @main_image.save
        format.html { redirect_to @main_image, notice: 'Main image was successfully created.' }
        format.json { render json: @main_image, status: :created, location: @main_image }
      else
        format.html { render action: "new" }
        format.json { render json: @main_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /main_images/1
  # PUT /main_images/1.json
  def update
    @main_image = MainImage.find(params[:id])

    respond_to do |format|
      if @main_image.update_attributes(params[:main_image])
        format.html { redirect_to @main_image, notice: 'Main image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @main_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main_images/1
  # DELETE /main_images/1.json
  def destroy
    @main_image = MainImage.find(params[:id])
    @main_image.destroy
    render json: { main_image: @main_image}
  end
end
