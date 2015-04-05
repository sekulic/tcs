class Article < ActiveRecord::Base
  acts_as_url :title
  def to_param
    url
  end  
  belongs_to :category
  belongs_to :country, :class_name => Country  
  belongs_to :author   
  validates_presence_of :title, :text1, :photo1,  :p1desescription, :category_id, :author_id
  has_attached_file :photo6, :styles => { :medium => "800x600>", :thumb => "300x300>" }
  validates_attachment_content_type :photo6, :content_type => /\Aimage\/.*\Z/ 
  has_attached_file :photo5, :styles => { :medium => "800x600>", :thumb => "300x300>" }
  validates_attachment_content_type :photo5, :content_type => /\Aimage\/.*\Z/ 
  has_attached_file :photo4, :styles => { :medium => "800x600>", :thumb => "300x300>" }
  validates_attachment_content_type :photo4, :content_type => /\Aimage\/.*\Z/ 
  has_attached_file :photo3, :styles => { :medium => "800x600>", :thumb => "300x300>" }
  validates_attachment_content_type :photo3, :content_type => /\Aimage\/.*\Z/ 
  has_attached_file :photo2, :styles => { :medium => "800x600>", :thumb => "300x300>" }
  validates_attachment_content_type :photo2, :content_type => /\Aimage\/.*\Z/ 
  has_attached_file :photo1, :styles => { :medium => "800x600>", :thumb => "300x300>" }
  validates_attachment_content_type :photo1, :content_type => /\Aimage\/.*\Z/ 
end
