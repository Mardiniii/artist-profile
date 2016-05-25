class ImagesController < ApplicationController
  before_action :authenticate_user!

  def create
    @gallery = Gallery.find(session[:gallery_id])
    @image = Image.new(image_params)
    @image.gallery = @gallery
    if @image.save
      render json: { message: "success", fileID: @image.id }, status: 200
    else
      render json: { error: @image.errors.full_messages.join(',')}, status: 400
    end
  end

  def index
    @gallery = Gallery.find(session[:gallery_id])
    @images = @gallery.images.order("id desc")
  end

  def destroy
    @image = Image.find(params[:id])
    @gallery = @image.gallery
    @image.destroy
    redirect_to @gallery
  end

  private
    def image_params
      params.require(:image).permit(:photo)
    end
end
