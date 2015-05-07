require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Servco2
  class Application < Rails::Application

    console do
      ActiveRecord::Base.connection
    end

    config.autoload_paths << Rails.root.join('lib')

    config.exceptions_app =  self.routes

  end
end
