class ImagesController < ApplicationController
  def index
    @images = Image.all
    render :index
  end
  def create
    if current_user.images.create(image_params)
      redirect_to images_path
    else
      redirect_to root_path
    end
  end

  private
  def image_params
    params.require(:image).permit(:keyword, :image_file)
  end
end
