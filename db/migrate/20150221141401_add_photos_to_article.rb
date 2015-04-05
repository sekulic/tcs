class AddPhotosToArticle < ActiveRecord::Migration
  def self.up
    add_attachment :articles, :photo4
    add_attachment :articles, :photo3
    add_attachment :articles, :photo2
    add_attachment :articles, :photo1 
  end

  def self.down
    remove_attachment :articles, :photo4
    remove_attachment :articles, :photo3
    remove_attachment :articles, :photo2
    remove_attachment :articles, :photo1
  end
end
