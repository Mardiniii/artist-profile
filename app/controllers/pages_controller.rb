class PagesController < ApplicationController

  def home
    @events = Event.all.order("event_date").limit(4)
    @music_tracks = MusicTrack.where('id != ?', @last_track.id).order("RANDOM()").limit(3)
  end

  def events
    @events = Event.all.order(created_at: :desc)
  end

  def contact_us
  end

  def blog
    @blog_entries = BlogEntry.order("created_at DESC")
  end
end
