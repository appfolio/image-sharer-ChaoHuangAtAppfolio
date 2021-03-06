class ImagesController < ApplicationController
  before_action :set_image, only: %i[show edit update destroy]

  # GET /images
  def index
    @images = Image.order(created_at: :desc)
  end

  # GET /images/1
  def show; end

  # GET /images/new
  def new
    @image = Image.new
  end

  # GET /images/1/edit
  def edit; end

  # POST /images
  def create
    image_params['url'] = image_params['url'].strip
    @image = Image.new(image_params)
    if duplicate?(image_params[:url])
      redirect_to images_url, notice: 'Duplicate image url.'
      return
    end

    if @image.save
      redirect_to @image, notice: 'Image was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /images/1
  def update
    if @image.update(image_params)
      redirect_to @image, notice: 'Image was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /images/1
  def destroy
    @image.destroy
    redirect_to images_url, notice: 'Image was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_image
    @image = Image.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def image_params
    params.require(:image).permit(:url)
  end

  def duplicate?(url)
    @images = Image.all
    @images.each do |image|
      return true if image.url == url
    end
    false
  end
end
