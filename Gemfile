source "https://rubygems.org"

ruby "3.2.0"

# tailwindcss-rails is a Rails engine for Tailwind CSS
gem 'tailwindcss-rails'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.1.1"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[windows jruby]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[mri windows]

  # Testing framework alternative to Minitest
  gem "rspec-rails", "~> 6.0.0"

  # dotenv loads environment variables from .env into ENV
  gem "dotenv-rails"

  # factory_bot_rails provides integration between
  # FactoryBot and Rails for creating database models
  gem "factory_bot_rails"

  # faker generates fake data for testing
  gem "faker"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # checks for inconsistencies and inefficiencies
  # between your models and database schema
  gem "database_consistency", require: false
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
end

# Brakeman analyzes our code
# for security vulnerabilities
gem "brakeman"

# bundler-audit enables bundle audit which analyzes our
# dependencies for known vulnerabilities
gem "bundler-audit"

# lograge changes Rails' logging to a more
# traditional one-line-per-event format
gem "lograge"

# rubocop is a static code analyzer that enforces
# the Ruby Style Guide
gem "rubocop"
gem "rubocop-rails"
gem "rubocop-rspec"
gem "rubocop-performance"

# Devise is a flexible authentication solution
# for Rails based on Warden
gem "devise", "~> 4.9"
