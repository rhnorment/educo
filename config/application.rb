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

    config.nav_lynx.selected_class = 'active'

    config.action_controller.page_cache_directory = "#{Rails.root.to_s}/public/deploy"
  end
end
