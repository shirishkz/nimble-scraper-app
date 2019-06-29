ruby '2.6.3'

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'best_in_place', github: 'bernat/best_in_place'
gem 'bootstrap-sass', github: 'twbs/bootstrap-sass'
gem 'bundler'
gem 'coffee-rails'
gem 'dotenv-rails', groups: %i[development test]
gem 'jbuilder'
gem 'jquery-datatables', github: 'mkhairi/jquery-datatables'
gem 'jquery-rails'
gem 'mini_racer'
gem 'nokogiri'
gem 'omniauth-github', github: 'omniauth/omniauth-github'
gem 'omniauth-google-oauth2', github: 'zquestz/omniauth-google-oauth2'
gem 'omniauth-rails', github: 'omniauth/omniauth-rails'
gem 'omniauth-rails_csrf_protection', github: 'cookpad/omniauth-rails_csrf_protection'
gem 'omniauth-twitter', github: 'arunagw/omniauth-twitter'
gem 'pg'
gem 'puma'
gem 'rails'
gem 'rubocop-performance'
gem 'rubocop-rails'
gem 'sassc-rails'
gem 'turbolinks'
gem 'uglifier'
gem 'will_paginate', github: 'mislav/will_paginate'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara'
  gem 'webdrivers'
end

group :development do
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'web-console'
end

group :test do
  gem 'database_cleaner'
  gem 'rails-controller-testing'
  gem 'rspec-expectations'
  gem 'rspec-rails'
  gem 'simplecov', require: false
  gem 'simplecov-json', require: false
  gem 'simplecov-rcov', require: false
end
