class Blogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |table|
      table.string :title
      table.string :contents
      table.string :tags
    end
  end
end
