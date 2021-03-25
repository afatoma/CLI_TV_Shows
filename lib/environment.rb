# frozen_string_literal: true

require "./lib/Tv_Shows/cli"
require "./lib/Tv_Shows/api"
require "./lib/Tv_Shows/tvshows"

require "pry"
require "httparty"

module TvShows
  class Error < StandardError; end
  # Your code goes here...
end
