source 'https://rubygems.org'

ruby '2.2.0'

gem 'bootstrap-sass', '~> 3.3.1'
gem 'clearance'
gem 'geo-distance'
gem 'jquery-rails'
gem 'nokogiri'
gem 'rails', '4.1.8'
gem 'sass-rails', '~> 4.0.3'
gem 'skylight'
gem 'uglifier', '>= 1.3.0'
gem 'unicorn'
gem 'validate_url', '~> 1.0'

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development do
  gem 'spring'
  gem 'letter_opener'
end

group :development, :test do
  gem 'capybara', '~> 2.4'
  gem 'factory_girl_rails'
  gem 'dotenv-rails'
  gem 'rspec-rails', '~> 3.0'
  gem 'sqlite3'
end

group :test do
  gem 'shoulda-matchers', require: false
end
