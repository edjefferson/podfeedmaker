class FeedController < ApplicationController

  def index
    @links = Feed.get_links
  end
end
