# frozen_string_literal: true

# DashboardController - show current info
class DashboardController < ApplicationController
  def report; end

  def index
    @check_count = Check.count
    @report_count = Report.count
    @organization_count = Organization.count
    @inspector_count = Inspector.count
  end

  def info
    @app = APP_VERSION
    @rails = Rails::VERSION::STRING
    @ruby = RUBY_VERSION
    @bundler = ENV['BUNDLER_VERSION']
  end
end
