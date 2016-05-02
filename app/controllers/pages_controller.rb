class PagesController < ApplicationController

  def home
    @events = Event.all.order("event_date").limit(4)
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
