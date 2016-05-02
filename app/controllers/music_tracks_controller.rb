class MusicTracksController < ApplicationController
  before_action :authenticate_user!

  def new
    @music_track = MusicTrack.new
  end

  def edit
  end

  def index
    @music_tracks = MusicTrack.all
  end
end
