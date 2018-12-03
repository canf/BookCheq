# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'
require 'mini_magick'
run Rails.application
