require 'sinatra/base'

# controllers
require './controllers/application_controller'
require './controllers/cat_controller'
require './controllers/dog_controller'
require './controllers/blog_controller'

# models
require './models/cat'
require './models/dog'
require './models/blog'

# mapping
map('/')      { run ApplicationController }
map('/cats')  { run CatController }
map('/dogs')  { run DogController }
map('/blogs') { run BlogController }

# start the server
run Sinatra::Application