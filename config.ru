require 'sinatra/base'

# controllers
require './controllers/application_controller'
require './controllers/cat_controller'
require './controllers/dog_controller'

# models
require './models/cat'
require './models/dog'

# mapping
map('/')      { run ApplicationController }
map('/cats')  { run CatController }
map('/dogs')  { run DogController }

# start the server
run Sinatra::Application