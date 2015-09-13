require 'sinatra/base'

#controllers
require './controllers/ApplicationController'
require './controllers/HomeController'

#models
require './models/ResponsesModel'

map('/') { run HomeController }
