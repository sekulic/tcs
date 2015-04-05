class Country < ActiveRecord::Base
  has_many :articles, :foreign_key => "country_id" 
  validates_presence_of :name
end
