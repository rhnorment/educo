source 'https://rubygems.org'


gem 'rails', '4.1.0'
gem 'sass-rails', '~> 5.0.0'
gem 'font-awesome-sass'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc

gem 'devise'
gem 'activeadmin', github: 'gregbell/active_admin'

group :development do
	gem 'spring'
  gem 'faker'
  gem 'populator'
	gem 'sqlite3'
end

group :test do
  gem 'capybara'
end

group :test, :development do
  gem 'minitest'
  gem 'rspec-rails', '~> 2.14.0.rc1'
end

group :production do
# Use postgresql as the database for Active Record
  gem 'rails_12factor'
	gem 'pg'
end

