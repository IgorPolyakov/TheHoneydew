# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TheHoneydew
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.fallbacks = true
    config.i18n.enforce_available_locales = false
    config.i18n.default_locale = :ru
    I18n.config.available_locales = [:en, :ru]
    config.generators.system_tests = nil
    config.generators do |g|
      g.test_framework :rspec
      g.integration_tool :rspec
      g.controller_specs false
      g.view_specs false
      g.helper_specs false
      g.model_specs false
    end
  end
end
