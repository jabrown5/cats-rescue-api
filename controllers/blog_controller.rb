class BlogController < ApplicationController

  get '/' do
    Blog.all.to_json

    # @model = Blog.all
    # @model.to_json
  end

  get '/:id' do
    @id = params[:id]
    Blog.find(@id).to_json

    # @model = Blog.find(params[:id])
    # @model.to_json
  end

  post '/' do
    @model = Blog.new
    @model.title = params[:title]
    @model.contents = params[:contents]
    @model.tags = params[:tags]
    @model.save
    @model.to_json
  end

  patch '/:id' do

    @id = params[:id]
    @title = params[:title]
    @contents = params[:contents]
    @tags = params[:tags]

    @new_row = Blog.find(@id)
    @new_row.title = @title
    @new_row.contents = @contents
    @new_row.tags = @tags
    @new_row.save

    @new_row.to_json
  end

  delete '/:id' do
    @id = params[:id]
    @model = Blog.find(@id)
    @model.destroy
    "You've deleted this posting."
  end

end