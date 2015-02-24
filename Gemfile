source 'https://rubygems.org'

ruby '2.2.0'

gem 'thin'
gem 'sinatra'
gem 'sinatra-contrib'
gem 'spotify-client'

group :production do
  gem 'rack-ssl'
  gem 'newrelic_rpm'
end

group :test do
  gem 'rspec'
end

group :development do
  gem 'foreman'  
end