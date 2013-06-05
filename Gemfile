source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0.rc1'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0.rc1'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.0.1'

# Using mongodb instead of SQL or Postgres
#gem "mongoid", "~> 3.1.4"
gem 'mongoid', github: 'mongoid/mongoid' 

gem "devise", "~> 3.0.0.rc"

gem "puma", "~> 2.0.1"

group :test do
	gem "rspec-rails", ">= 2.11.0"
	gem "capybara", ">= 1.1.2"
	gem "database_cleaner", ">= 0.8.0"
	gem "mongoid-rspec", ">= 1.4.6"
	gem "email_spec", ">= 1.2.1"
	gem "cucumber-rails", ">= 1.3.0", :require => false
	gem "launchy", ">= 2.1.2"
	gem "factory_girl_rails", ">= 4.0.0"
end

group :development do
	gem "rspec-rails", ">= 2.11.0", :group => [:development, :test]
	gem "factory_girl_rails", ">= 4.0.0", :group => [:development, :test]
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]