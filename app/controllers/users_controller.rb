class UsersController < ApplicationController
def show
  @user = current_user
  @image = Image.new
  @images = current_user.images

end
end
