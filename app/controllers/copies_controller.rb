class CopiesController < ApplicationController
  before_action :authenticate_user!

  def edit
    @copy = Copy.find(params[:id])
  end

  def update
    @copy = Copy.find(params[:id])
    if @copy.update(copy_params)
      redirect_to root_path
    else
      flash[:alert] = 'ERROR'
      render 'edit'
    end
  end

  private
    def copy_params
      params.require(:copy).permit(:home_title_1, :home_text, :home_service_title_1, :home_service_text_1, :home_service_link_1, :home_service_title_2, :home_service_text_2, :home_service_link_2, :home_service_title_3, :home_service_text_3, :home_service_link_3, :footer_title_1, :footer_text_1, :footer_title_2, :footer_text_2, :footer_title_3, :footer_text_3, :contact_title, :contact_text , :contact_phone_1, :contact_phone_2)
    end
end


