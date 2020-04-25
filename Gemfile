source 'https://rubygems.org'

ruby '2.6.5'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.2.4.2'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

#user input gemfiles
gem "bootstrap-sass", ">= 3.4.1"
gem 'jquery-rails'
gem 'simple_form'
gem 'devise'
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'
gem 'prawn'
gem 'pdf-writer'
gem 'receipts'
gem 'pdfkit'
gem 'render_anywhere'
gem 'codecov', :require => false, :group => :test

#User gem 2
gem "simple_calendar", "~> 2.0"
gem 'jquery-ui-rails','5.0.5'
gem 'country_select', github: 'alibabajan/country_select'
gem 'paper_trail'
gem 'paper_trail-association_tracking'
gem 'cocoon'
gem "nested_form"
gem 'nested_form_fields'
gem 'momentjs-rails', '~> 2.9',  :github => 'derekprior/momentjs-rails'
gem "font-awesome-rails"
gem 'font-awesome-sass', '~> 5.0.6'
gem 'bootstrap-datepicker-rails'
gem 'carrierwave', '>= 2.0.0.rc', '< 3.0'
gem "mini_magick"
gem 'rails_admin', :github => 'sferik/rails_admin', branch: "1.x-stable"

#Gitlab gem
gem 'execjs'
gem 'therubyracer', :platforms => :ruby

#Devel Gem
gem 'rubocop', require: false
gem 'pronto'
gem 'pronto-rubocop', require: false
gem 'pronto-flay', require: false

group :production do
  gem 'pg', '~> 0.2'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'sqlite3'
  gem 'rspec-rails', '~> 3.7'
  gem 'pry'
  gem 'annotate'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :development do
  gem 'capistrano',         require: false
  gem 'capistrano-rvm',     require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano3-puma',   require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
