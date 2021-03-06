# frozen_string_literal: true

source 'https://rubygems.org'
ruby '2.5.3'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'bcrypt'
gem 'bootsnap'
gem 'bootstrap'
gem 'devise'
gem 'font-awesome-rails'
gem 'ipstack'
gem 'jbuilder'
gem 'jquery-rails'
gem 'listen'
gem 'pg'
gem 'prawn'
gem 'puma'
gem 'pundit'
gem 'rails'
gem 'rails-i18n'
gem 'ransack', github: 'activerecord-hackery/ransack'
gem 'sass-rails'
gem 'simple_form'
gem 'turbolinks'
gem 'tzinfo-data'
gem 'uglifier'
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'ffaker'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  # gem 'bullet'
  gem 'mina'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'i18n-tasks'
  gem 'rubocop'
  gem 'rubycritic'
  gem 'spring'
  gem 'spring-watcher-listen'
end

group :test do
  gem 'capybara'
  gem 'codeclimate-test-reporter'
  gem 'coveralls', require: false
  gem 'factory_bot_rails'
  gem 'rspec-rails'
end
