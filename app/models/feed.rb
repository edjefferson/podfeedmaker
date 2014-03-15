class Feed < ActiveRecord::Base
  require 'nokogiri'
  require 'open-uri'
  def self.get_links
    dir_listing = Nokogiri::HTML(open("http://somefoolnotion.com/private/"))
    raw_links = dir_listing.xpath '//a'

    links = raw_links.map { |link| link.attributes['href'].value}

    links.select { |link| link.include? "mp3"}.reverse

  end
end
