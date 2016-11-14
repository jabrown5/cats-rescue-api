class DogController < ApplicationController

  get '/' do
    Dog.all.to_json

    # @model = Dog.all
    # @model.to_json
  end

  get '/:id' do
    @id = params[:id]
    Dog.find(@id).to_json

    # @model = Dog.find(params[:id])
    # @model.to_json
  end

  post '/' do
    # @model = Dog.new
    # @model.name = params[:name]
    # @model.note = params[:note]
    # @model.img = params[:img]
    # @mode.save
    # @model.to_json

    @name = params[:name]
    @note = params[:note]
    @img = params[:img]

    @new_row = Dog.new
    @new_row.name = @name
    @new_row.note = @note
    @new_row.img = @img
    @new_row.save

    @new_row.to_json
  end

  patch '/:id' do
    @id = params[:id]
    @name = params[:name]
    @note = params[:note]
    @img = params[:img]

    @new_row = Dog.find(@id)
    @new_row.name = @name
    @new_row.note = @note
    @new_row.img = @img
    @new_row.save

    @new_row.to_json
  end

  delete '/:id' do
    @id = params[:id]
    @model = Dog.find(@id)
    @model.destroy
    "Adopted!!!!"
  end

end