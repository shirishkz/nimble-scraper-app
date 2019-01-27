ruby '2.6.0'

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'rails'

gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'mini_racer'
gem 'uglifier', '>= 1.3.0'

gem 'best_in_place', github: 'bernat/best_in_place'
gem 'bootstrap-sass', github: 'twbs/bootstrap-sass'
gem 'dotenv-rails', groups: %i[development test]
gem 'jquery-datatables', github: 'mkhairi/jquery-datatables'
gem 'nokogiri'
gem 'omniauth-github', github: 'intridea/omniauth-github'
gem 'omniauth-twitter', github: 'arunagw/omniauth-twitter'
gem 'rubocop', github: 'bbatsov/rubocop'
gem 'will_paginate', github: 'mislav/will_paginate'

gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
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
