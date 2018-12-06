
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.

require_relative 'boot'

require 'rails/all'
require 'devise'
require 'stripe'
require 'simple_form'
require 'better_errors'
require 'paperclip'
require 'bulma-rails'
require 'jquery-rails'
require 'jquery-turbolinks'
require 'turbolinks'
require 'compass'
require 'acts-as-taggable-on'
module BookLibrary
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
  #  config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
