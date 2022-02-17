# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.0'

gem 'action_policy'
gem 'appsignal'
gem 'authlogic'

gem 'bootsnap', require: false

gem 'cssbundling-rails'

gem 'jsbundling-rails'

gem 'friendly_id'

gem 'jetrockets-standard', '1.2.2'

gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'

gem 'rails', '~> 7.0.2', '>= 7.0.2.2'
gem 'rails-i18n'
gem 'redis', '~> 4.0'

gem 'sprockets-rails'
gem 'stimulus-rails'

gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'view_component'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]

  gem 'factory_bot_rails'

  gem 'isolator'

  gem 'rspec-rails'
  gem 'rubocop-rspec', require: false
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'capybara'

  gem 'selenium-webdriver'
  gem 'simplecov', require: false

  gem 'webdrivers'
end
