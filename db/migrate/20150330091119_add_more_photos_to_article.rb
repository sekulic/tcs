class AddMorePhotosToArticle < ActiveRecord::Migration
  def self.up
    add_attachment :articles, :photo5
    add_attachment :articles, :photo6
  end

  def self.down
    remove_attachment :articles, :photo5
    remove_attachment :articles, :photo6
  end
end
