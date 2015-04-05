require 'rails_helper'

RSpec.describe ArticlesController, :type => :controller do
  before(:each) do
    sign_in FactoryGirl.create(:user, admin: true)
  end
  let(:valid_attributes) { FactoryGirl.build(:article).attributes.symbolize_keys }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }


  describe "GET show" do
    it "assigns the requested article as article" do
      article = Article.create! valid_attributes
      get :show, {:id => article.to_param}
      controller.article.should eq(article)
    end
  end

  describe "GET new" do
    it "assigns a new article as article for admin" do
      
      get :new
      controller.article.should be_a_new(Article)
    end
  end

  describe "GET edit" do
    it "assigns the requested article as article" do
      
      article = Article.create! valid_attributes
      get :edit, {:id => article.to_param}
      controller.article.should eq(article)
    end
  end
end

