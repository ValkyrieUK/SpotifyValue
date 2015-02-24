require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/config_file'
require 'json'
require './config/defaults'
require './app/helpers/helpers'
require './app/controllers/main_controller'
helpers Sinatra::Helpers
include Controllers

if ENV['RACK_ENV'] == 'production'
  require 'newrelic_rpm'
  require 'rack/ssl'
  use Rack::SSL
end
