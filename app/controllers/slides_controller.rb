class SlidesController < ApplicationController
  before_action :authenticate_user!

  def edit
  end

  def index
    @slides = Slide.all
  end
end
