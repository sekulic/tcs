require 'rails_helper'

RSpec.describe Article, :type => :model do
  
 it "has a valid factory" do 
   FactoryGirl.build(:article).should be_valid 
 end
 it "is invalid without a photo1" do
   FactoryGirl.build(:article, photo1: nil).should_not be_valid 
 end 
end
