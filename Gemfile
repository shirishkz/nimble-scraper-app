ruby '2.6.3'

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'rails'

gem 'pg'
gem 'puma'
gem 'sassc'
gem 'mini_racer'
gem 'uglifier'

gem 'best_in_place', github: 'bernat/best_in_place'
gem 'bootstrap-sass', github: 'twbs/bootstrap-sass'
gem 'dotenv-rails', groups: %i[development test]
gem 'jquery-datatables', github: 'mkhairi/jquery-datatables'
gem 'nokogiri'
gem 'omniauth-rails'
gem 'omniauth-github', github: 'intridea/omniauth-github'
gem 'omniauth-twitter', github: 'arunagw/omniauth-twitter'
gem 'rubocop-rails'
gem 'rubocop-performance'
gem 'will_paginate', github: 'mislav/will_paginate'

gem 'coffee-rails'
gem 'jbuilder'
gem 'jquery-rails'
gem 'turbolinks'

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
