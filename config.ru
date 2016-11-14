require 'sinatra/base'

# controllers
require './controllers/application_controller'
require './controllers/cat_controller'

# models
require './models/cat'

# mapping
map('/')      { run ApplicationController }
map('/cats')  { run CatController }

# start the server
run Sinatra::Application