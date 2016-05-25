class ImagesController < ApplicationController
  before_action :authenticate_user!

  def create
    @image = Image.new(image_params)
    @image.gallery = Gallery.find(session[:gallery_id])
    if @image.save
      render json: { message: "success", fileID: @image.id }, status: 200
    else
      render json: { error: @image.errors.full_messages.join(',')}, status: 400
    end
  end

  def index
  end

  private
    def image_params
      params.require(:image).permit(:photo)
    end
end
