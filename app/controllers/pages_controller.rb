class PagesController < ApplicationController

  def home
  end

  def events
    @events = Event.all.reversed
  end

  def contact_us
  end

  def blog
  end
end
