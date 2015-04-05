class AddTextFieldsToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :text5, :text
    add_column :articles, :text6, :text 
  end
end
