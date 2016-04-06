class BlogEntriesController < ApplicationController
  before_action :authenticate_user!

  def new
    @blog_entry = BlogEntry.new
  end

  def create
    @blog_entry = BlogEntry.new(blog_entry_params)
    if @blog_entry.save
      flash[:notice] = "La entrada de blog ha sido guardada con éxito"
      redirect_to blog_entries_path
    else
      flash[:alert] = "Ha ocurrido un problema y la entrada de blog no ha sido almacenada"
      render :action => 'new'
    end
  end

  def index
    @blog_entries = BlogEntry.all
  end

  private
    def blog_entry_params
      params.require(:blog_entry).permit(:title, :author, :image, :content)
    end
end
