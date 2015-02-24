config_file './config/defaults.rb'
# Controllers module
module Controllers
  # Main Controller - all appliation endpoints.
  class MainController < Sinatra::Base
      configure do
        set :root, Proc.new { File.dirname(__FILE__) }
        set :views, Proc.new { File.join(root, '..', '..' '/views') }
        set :public_folder, Proc.new { File.join(root, '..', '..', '/public') }
        set :css_dir, Proc.new { File.join(public_folder, '/css') }
        set :img_dir, Proc.new { File.join(public_folder, 'img') }
        set :js_dir, Proc.new { File.join(public_folder, 'js') }
        set :raise_errors, true
        set :show_exceptions, true
      end

    get '/' do
      erb :index
    end
  end
end