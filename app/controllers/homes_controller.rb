class HomesController < ApplicationController
  def index
    @image = Image.new
    render :index
  end
end
