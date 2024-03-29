class PagesController < ApplicationController

  def home
    @events = Event.all.order("event_date desc").limit(5)
    @music_tracks = MusicTrack.where('id != ?', @last_track.id).order("RANDOM()").limit(3)
    @background_images = BackgroundImage.order("RANDOM()").limit(40)
    @home_pics = Image.order("RANDOM()").limit(10)
    @slides = Slide.where(id: [1,2,3])
  end

  def events
    @events = Event.all.order("event_date desc")
  end

  def contact_us
  end

  def blog
    @blog_entries = BlogEntry.order("created_at DESC")
    @blog_pics = Image.order("RANDOM()").limit(6)
  end

  def gallery
    @galleries = Gallery.all
  end

  def show_gallery
    @gallery = Gallery.find(params[:gallery_id])
    @images = @gallery.images
  end

  def about_me
  end
end
