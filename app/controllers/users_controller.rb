class UsersController < ApplicationController
def show
  @user = current_user
  @image = Image.new
  @user.images.create(params[:image])

end
end
