# frozen_string_literal: true

require_relative "./Tv_Shows/cli"
require_relative "./Tv_Shows/api"
require_relative "./Tv_Shows/tvshows"

require "pry"
require "httparty"

module TvShows
  class Error < StandardError; end
  # Your code goes here...
end


