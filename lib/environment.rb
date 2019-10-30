require_relative "GameNews/version"
require_relative "GameNews/cli"
require_relative "GameNews/headline"
require_relative "GameNews/scraper"

require 'pry'
require 'open-uri'
require 'nokogiri'

module GameNews
  class Error < StandardError;  
   # Your code goes here...
  end
end
