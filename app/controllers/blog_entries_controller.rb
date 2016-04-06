class BlogEntriesController < ApplicationController
  before_action :authenticate_user!

  def new
    @blog_entry = BlogEntry.new
  end
end
