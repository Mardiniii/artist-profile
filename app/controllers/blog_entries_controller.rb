class BlogEntriesController < ApplicationController
  before_action :authenticate_user!, :except => [:show]

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

  def edit
    @blog_entry = BlogEntry.find(params[:id])
  end

  def update
    @blog_entry = BlogEntry.find(params[:id])
    if @blog_entry.update(blog_entry_params)
      flash[:notice] = "La entrada de blog ha sido editada con éxito"
      redirect_to blog_entries_path
    else
      flash[:alert] = 'Ha ocurrido un problema y la entrada de blog no ha sido editada'
      render 'edit'
    end
  end

  def show
    @blog_entry = BlogEntry.find(params[:id])
  end

  def index
    @blog_entries = BlogEntry.all.order(created_at: :desc)
  end

  def destroy
    @blog_entry = BlogEntry.find(params[:id])
    @blog_entry.destroy
    redirect_to blog_entries_path
  end

  private
    def blog_entry_params
      params.require(:blog_entry).permit(:title, :author, :image, :content)
    end
end
