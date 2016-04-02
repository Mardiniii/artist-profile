class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:notice] = "El evento ha sido guardado con éxito"
      redirect_to events_path
    else
      flash[:alert] = "Ha ocurrido un problema y el evento no ha sido almacenado"
      render :action => 'new'
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      flash[:notice] = "El evento ha sido editado con éxito"
      redirect_to events_path
    else
      flash[:alert] = 'Ha ocurrido un problema y el evento no ha sido almacenado'
      render 'edit'
    end
  end

  def index
    @event = Event.all.reversed
  end

  private
    def event_params
      params.require(:event).permit(:title, :event_date, :start_hour, :end_hour, :location, :description, :image)
    end
end