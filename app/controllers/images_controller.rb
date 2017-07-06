class ImagesController < ApplicationController
  def index
    @images = Image.all
    render :index
  end
  def create
    # image_params.stuff.keywords = this.split("")
    if current_user.images.create(image_params)
      redirect_to images_path
    else
      redirect_to root_path
    end
  end
  def show
    @user = current_user
    @image = Image.find(params[:id])
    @keywords = Keyword.all
  end
  def update
    @image= Image.find(params[:id])
    if @image.keywords.create(keyword_params)
      redirect_to images_path
    else
      render :edit
    end
  end
  def destroy
   @user = current_user
   @image = Image.find(params[:id])
   @image.destroy
   redirect_to user_path
 end

  private
  def image_params
    params.require(:image).permit(:keywords, :image_file)
  end
  def keyword_params
    params.require(:keyword).permit(:keyword_id)
  end
end
