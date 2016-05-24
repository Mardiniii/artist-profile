class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :footer_items

  def footer_items
    @last_track = MusicTrack.order("RANDOM()").first
    @last_track_audio = @last_track.tracks.first
    @footer_events = Event.order(created_at: :desc).limit(5)
    @footer_blog_entries = BlogEntry.order(created_at: :desc).limit(5)
    @footer_images = BackgroundImage.order("RANDOM()").limit(32)
  end
end