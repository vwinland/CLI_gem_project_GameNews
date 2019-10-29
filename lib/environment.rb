require_relative "GameNews/version"
require_relative "GameNews/cli"
require_relative "GameNews/scraper"
require_relative "GameNews/headlines"
require 'pry'
require 'open-uri'
require 'nokogiri'

module GameNews
  class Error < StandardError; end
  # Your code goes here...
end
