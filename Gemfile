# frozen_string_literal: true
source 'https://rubygems.org'
ruby "2.5.0"
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'bcrypt'
gem 'bootstrap-sass'
gem 'coffee-rails'
gem 'devise'
gem 'font-awesome-rails'
gem 'jbuilder'
gem 'jquery-rails'
gem 'listen'
gem 'tzinfo-data'
gem 'pg'
gem 'puma'
gem 'rails'
gem 'rails-i18n'
gem 'sass-rails'
gem 'simple_form'
gem 'turbolinks'
gem 'uglifier'
gem 'ransack', github: 'activerecord-hackery/ransack'
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  # gem 'bullet'
  gem 'mina'
  gem 'web-console'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen'
end

group :test do
  gem 'capybara'
  gem 'codeclimate-test-reporter'
  gem 'coveralls', require: false
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end
