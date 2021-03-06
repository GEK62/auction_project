source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.5', '>= 4.5.1'
# Use Active Model has_secure_password
gem 'bcrypt', '~> 3.1.7'
# Use Devise for authentication
gem 'devise', '~> 4.2'
# Use jQuery for JavaScript
gem 'jquery-rails'
# Use file-validator gem for validating files
gem 'file_validators', '~> 2.0', '>= 2.0.2'
# Use pundit for authorization
gem 'pundit', '~> 2.1', '>= 2.1.1'
# Use kaminari gem for pagination
gem 'kaminari', '~> 1.2', '>= 1.2.1'
# Use rails-i18n gem for internationalization
gem 'rails-i18n', '~> 6.0'
# Use draper gem for view decorators
gem 'draper', '~> 4.0.2'
# Use omniauth gem for authentication
gem 'omniauth', '~> 2.0', '>= 2.0.4'
# Use omniauth-google-oauth2 gem for authentication with Google
gem 'omniauth-google-oauth2', '~> 1.0'
# Use omniauth-rails_csrf_protection gem for protect authentication
gem 'omniauth-rails_csrf_protection', '~> 1.0'
# Use omniauth-github gem for authentication with GitHub
gem 'omniauth-github', github: 'omniauth/omniauth-github', branch: 'master'
# Use omniauth-linkedin gem for authentication with LinkedIn
gem 'omniauth-linkedin-oauth2', '~> 1.0'
# Use ActiveRecord Sessions
gem 'activerecord-session_store', '~> 2.0'
# Use bullet gem for performance
gem 'bullet', '~> 6.1', '>= 6.1.4'
# Use aasm gem for state machine
gem 'aasm', '~> 5.2'
# Use after_commit_everywhere gem for after_commit
gem 'after_commit_everywhere', '~> 1.1'
# Use sidekiq gem for background jobs
gem 'sidekiq', '~> 6.3', '>= 6.3.1'
# Use sidekiq-cron gem for background jobs
gem 'sidekiq-cron', '~> 1.2'
# Use ransack gem for search
gem 'ransack', '~> 2.5'
# Use date_validator gem for validating dates
gem 'date_validator', '~> 0.12.0'

# Use Active Storage variant
gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Use Faker for random data
  gem 'faker', '~> 2.19'
  gem 'rubocop-faker', '~> 1.1'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # Use rubocop for code-style
  gem 'rubocop', '~> 1.24'
  gem 'rubocop-rails', '~> 2.12', '>= 2.12.4', require: false
  gem 'rubocop-performance', '~> 1.13', require: false
  # Use letter_opener gem for email delivery
  gem "letter_opener", group: :development
  # Use dotenv-rails gem for .env file
  gem 'dotenv-rails', '~> 2.7', '>= 2.7.6'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
