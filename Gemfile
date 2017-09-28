# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'bcrypt'
gem 'bootstrap-sass'
gem 'coffee-rails', '~> 4.2'
gem 'devise'
gem 'ffaker'
gem 'font-awesome-rails'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'listen'
gem 'pg'
gem 'puma'
gem 'rails', '~> 5.1'
gem 'rails-i18n'
gem 'sass-rails'
gem 'simple_form'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  # gem 'bullet'
  gem 'mina'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara'
  gem 'codeclimate-test-reporter', '~> 1.0.0'
  gem 'coveralls', require: false
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end
