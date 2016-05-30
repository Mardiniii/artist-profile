class SlidesController < ApplicationController
  before_action :authenticate_user!

  def edit
    @slide = Slide.find(params[:id])
  end

  def index
    @slides = Slide.all
  end

  def update
    @slide = Slide.find(params[:id])
    if @slide.update(slide_params)
      flash[:notice] = "El slide ha sido editado con éxito"
      redirect_to slides_path
    else
      flash[:alert] = 'Ha ocurrido un problema y el slide no ha sido almacenado'
      render 'edit'
    end
  end

  private
    def slide_params
      params.require(:slide).permit(:first_text, :second_text, :button_content, :button_link, :image)
    end
end
