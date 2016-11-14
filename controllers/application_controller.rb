class ApplicationController < Sinatra::Base

  require 'bundler'
  Bundler.require

  set :views, File.dirname(__FILE__) + '/../views'
  set :public_folder, File.dirname(__FILE__) + '/../public'

  ActiveRecord::Base.establish_connection(
    :adapter => 'mysql2',
    :database => 'cat_rescue'
  )

  not_found do
    { :message => 'not found'}.to_json
  end

end