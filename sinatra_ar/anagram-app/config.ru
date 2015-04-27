require './app/controllers/index_controller'

require 'sinatra/base'
require 'sinatra'
require 'rake'



configure do
  set :views, File.join(Sinatra::Application.root, "app", "views")
end

run Sinatra::Application
