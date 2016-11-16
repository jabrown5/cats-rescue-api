class CatController < ApplicationController

  get '/' do
    Cat.all.to_json

    # @model = Cat.all
    # @model.to_json
  end

  get '/:id' do
    @id = params[:id]
    Cat.find(@id).to_json

    # @model = Cat.find(params[:id])
    # @model.to_json
  end

  post '/' do
    # @model = Cat.new
    # @model.name = params[:name]
    # @model.note = params[:note]
    # @model.img = params[:img]
    # @model.save
    # @model.to_json

    @name = params[:name]
    @note = params[:note]
    @img = params[:img]

    @new_row = Cat.new
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

    @new_row = Cat.find(@id)
    @new_row.name = @name
    @new_row.note = @note
    @new_row.img = @img
    @new_row.save

    @new_row.to_json

    @model = Post.find(params[:id])
    @model.title = params[:title]
    @model.content = params[:content]
    @model.tags = params[:tags]
    @model.save
    @model.to_json

  end

  delete '/:id' do
    @id = params[:id]
    @model = Cat.find(@id)
    @model.destroy
    "Adopted!!!!"
  end

end