# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TheHoneydew
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.time_zone = 'Krasnoyarsk'
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.fallbacks = true
    config.i18n.enforce_available_locales = false
    config.i18n.default_locale = :ru
    I18n.config.available_locales = %i[en ru]
    config.generators.system_tests = nil
    config.generators do |config|
      config.test_framework :rspec
      config.integration_tool :rspec
      config.controller_specs false
      config.view_specs false
      config.helper_specs false
      config.model_specs false
    end
  end
end
