class AddSomeFieldsToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :country_id, :integer
    add_column :articles, :p5description, :string
    add_column :articles, :p6description, :string 
  end
end
