class ImagesController < ApplicationController
  def index
    @images = Image.all
    render :index
  end
  def create
    @image = Image.create(image_params)
  end

  private
  def image_params
    params.require(:image).permit(:keyword, :image_file)
  end
end
