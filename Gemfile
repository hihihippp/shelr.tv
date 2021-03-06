source 'http://rubygems.org'

gem 'rake', '0.9.2' # https://twitter.com/#!/dhh/status/71966528744071169
gem 'unicorn'

gem 'rails', '= 3.2.11'
gem 'haml-rails'
gem 'rdiscount'
gem 'kaminari'

gem 'draper'
gem 'simple_form'

gem 'omniauth'
gem 'omniauth-github'
gem 'omniauth-twitter'
gem 'omniauth-google-oauth2'
gem 'omniauth-openid'

gem 'mongoid', '~> 2.0'
gem 'mongoid_rails_migrations'
gem 'bson_ext'

gem 'sitemap_generator'

# Search
gem 'sunspot_rails'
gem 'sunspot_solr'
gem 'sunspot_mongo', git: 'https://github.com/derekharmel/sunspot_mongo.git'
gem 'progress_bar'

gem 'sass-rails', '~> 3.2.3'
gem 'uglifier', '>= 1.0.3'

gem 'airbrake'

# Markdown + Syntax highlighting
gem 'redcarpet'
gem 'albino'
gem 'rails_markitup', github: 'Gonzih/rails_markitup', branch: 'rails31'

# Gems used only for assets and not required
group :assets do
  gem 'rails-backbone'
  gem 'underscore-rails'
  gem 'jquery-rails'
  gem 'coffee-rails',  '~> 3.2.1'
  gem 'compass-rails', '>= 1.0.0.rc.1'
  gem 'compass_twitter_bootstrap', '>= 2.0.1'
end

group :linux do
  gem 'libnotify'
end

group :development, :test do
  gem 'fivemat'

  gem 'factory_girl_rails'
  gem 'guard-spork'
  gem 'guard-rspec'
  gem 'guard-bundler'
  gem 'guard-ctags-bundler'

  gem 'pry'
  gem 'pry-nav'

  gem 'turnip'
  gem 'capybara'
  gem 'database_cleaner'

  gem 'rspec'
  gem 'rspec-rails'
  gem 'mongoid-rspec'
  gem 'shoulda-matchers'
  gem 'sunspot_matchers'
end

group :development do
  gem 'foreman'
  gem 'capistrano'
end
