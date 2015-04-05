class Author < ActiveRecord::Base
  has_many :articles
  validates_presence_of :first_name, :last_name, :about, :photo
  has_attached_file :photo, :styles => { :thumb => "200x200>" }
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
  
  def fullname
    self.first_name << " " << self.last_name
  end          
end
