require 'rails_helper'

RSpec.describe "Articles", :type => :request do
  let(:valid_attributes_category) { FactoryGirl.build(:category).attributes.symbolize_keys }
  let(:valid_attributes_author) { FactoryGirl.build(:author).attributes.symbolize_keys }
  let(:valid_attributes) { FactoryGirl.build(:article).attributes.symbolize_keys }
  before(:each) do
   category = Category.create! valid_attributes_category
   @author = Author.create! valid_attributes_author
   valid_attributes[:category_id] = category.id
   valid_attributes[:author_id] = @author.id
   @article = Article.create! valid_attributes
  end  
  describe "GET /articles" do
    it "works! (now write some real specs)" do
      get articles_path
      expect(response).to have_http_status(200)
    end
    it "displays title" do
      visit articles_path
      expect(page).to have_selector("h3", text: @article.title)   
    end  
  end
  describe "GET /articles" do
    it "displays link name with link" do
      visit articles_path(@article)
      expect(page).to have_selector("a", text: @author.first_name)   
    end  
    it "displays name without link" do
      @author = Author.update(@author.id, :link_profile => nil)
      visit articles_path(@article)
      expect(page).to have_selector("h3", text: @author.first_name)   
    end      
  end  
end
