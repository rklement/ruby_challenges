require './app/controllers/index_controller'

require 'sinatra/base'
require 'sinatra'
require 'rake'



configure do
 set :views, Sinatra::Application.root.join("app", "views")
end