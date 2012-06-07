#!/usr/bin/evn ruby
require 'net/http'
require 'open-uri'
require 'nokogiri'

# The main random wiki driver
module Quoth
  FILE_NAME = File.dirname(__FILE__)+'/data/data.html'
  URL = 'http://en.wikiquote.org/wiki/Wikiquote:Quote_of_the_Day'

  # Get a random quote of the day from wikiquotes
  #
  # Example:
  #   >> RandomWikiQuote.get
  #   => "Ruby rocks"
  def self.get
    quotes.sample
  end

  def self.get_first
    quotes.first
  end

  def self.refresh_quotes
    File.open(FILE_NAME, 'w') do |file|
      open(URL) do |uri|
        file.write(uri.read)
      end
    end
    "Successfully refreshed quotes from #{URL}."
  end

  private

  def self.quotes
    refresh_quotes unless File.exist? FILE_NAME
    Nokogiri::HTML(File.read(FILE_NAME)).css('dd,li').map &:text
  end

end