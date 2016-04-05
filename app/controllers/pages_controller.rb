class PagesController < ApplicationController

  def home
    @events = Event.all.reversed.limit(4)

    # Event.where(event_date.month: "#{Date.today}")
  end

  def events
    @events = Event.all.reversed
  end

  def contact_us
  end

  def blog
  end
end
