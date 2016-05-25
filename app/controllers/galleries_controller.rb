class GalleriesController < ApplicationController
  before_action :authenticate_user!

  def new
    @gallery = Gallery.new
  end

  def create
    @gallery = Gallery.create(gallery_params)
    if @gallery.save
      flash[:notice] = "La galería ha sido guardada con éxito"
      redirect_to galleries_path
    else
      flash[:alert] = "Ha ocurrido un problema y la galería no ha sido almacenado"
      render :action => 'new'
    end
  end

  def index
    @galleries = Gallery.all
  end

  def show
    @gallery = Gallery.find(params[:id])
    @image = Image.new
    session[:gallery_id] = @gallery.id
  end

  def destroy
    @gallery = Gallery.find(params[:id])
    @gallery.destroy
    redirect_to galleries_path
  end

  private
    def gallery_params
      params.require(:gallery).permit(:title, :description, :avatar)
    end
end
