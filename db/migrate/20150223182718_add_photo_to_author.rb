class AddPhotoToAuthor < ActiveRecord::Migration
  def self.up
    add_attachment :authors, :photo
  end

  def self.down

    remove_attachment :authors, :photo
  end
end
