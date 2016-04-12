# read more @ http://bundler.io/gemfile.html
source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '4.1.2'
gem 'pg'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'spring', group: :development

gem 'sidekiq'
gem 'twilio-ruby'
gem 'dotenv-rails'
gem 'nokogiri'

#gem 'haml-rails'
#gem 'rails'      , '~> 4.0.3'  #  4.0.3 <= version < 4.1
#gem 'nokogiri' # ,    '1.5.6'  # specific version
#gem 'gemname'  # , '>= 2.0'
#gem 'deep_merge', git: 'git://github.com/peritor/deep_merge.git'
#gem 'radavis_last_fm', path: ~/Dropbox/launch/echo/last_fm'

group :test, :development do
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'launchy'
  gem 'pry-rails'
  gem 'quiet_assets'
  gem 'rspec-rails'
  gem 'shoulda'
  gem 'valid_attribute'
  gem 'coveralls', require: false
end

group :test do
  gem 'database_cleaner'
  gem 'webmock'
  gem 'vcr'
end
