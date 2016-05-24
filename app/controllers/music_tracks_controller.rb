class MusicTracksController < ApplicationController
  before_action :authenticate_user!

  def new
    @music_track = MusicTrack.new
    @music_track.tracks.build
  end

  def create
    @music_track = MusicTrack.new(music_track_params)
    if @music_track.save
      flash[:notice] = "La canción ha sido guardada con éxito"
      redirect_to music_tracks_path
    else
      @music_track.track.build
      flash[:alert] = "Ha ocurrido un problema y la canción no ha sido almacenada"
      render :action => 'new'
    end
  end

  def edit
    @music_track = MusicTrack.find(params[:id])
  end

  def update
    @music_track = MusicTrack.find(params[:id])
    if @music_track.update(music_track_params)
      flash[:notice] = "La canción ha sido editada con éxito"
      redirect_to music_tracks_path
    else
      flash[:alert] = 'Ha ocurrido un problema y la canción no ha sido editada'
      render 'edit'
    end
  end

  def index
    @music_tracks = MusicTrack.all
  end

  def destroy
    @music_track = MusicTrack.find(params[:id])
    @music_track.destroy
    redirect_to music_tracks_path
  end

  private
    def music_track_params
      params.require(:music_track).permit(:name, :author, :image, tracks_attributes: [:id, :audio])
    end
end
