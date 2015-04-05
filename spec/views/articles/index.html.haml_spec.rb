require 'rails_helper'

RSpec.describe "articles/index", :type => :view do
  let(:valid_attributes_category) { FactoryGirl.build(:category).attributes.symbolize_keys }
  let(:valid_attributes_author) { FactoryGirl.build(:author).attributes.symbolize_keys }
  before(:each) do
    allow(view).to receive_messages(:will_paginate => nil)
    category = Category.create! valid_attributes_category
    author = Author.create! valid_attributes_author
    assign(:articles, [
      Article.create!(
        :title => "Title",
        :description => "description",
        :photo1 => Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'files', 'eu.jpg'), "image/jpeg"),
        :text1 => "MyText",
        :text2 => "MyText",
        :text3 => "MyText",
        :text4 => "MyText",
        :embed1 => "MyText",
        :embed2 => "MyText",
        :embed3 => "MyText",
        :embed4 => "MyText",
        :p1desescription => "P1desescription",
        :p2description => "P2description",
        :p3description => "P3description",
        :p4description => "P4description",
        :category_id => category.id,
        :author_id => author.id  
      ),
      Article.create!(
        :title => "Title",
        :description => "description",
        :photo1 => Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'files', 'eu.jpg'), "image/jpeg"),
        :text1 => "MyText",
        :text2 => "MyText",
        :text3 => "MyText",
        :text4 => "MyText",
        :embed1 => "MyText",
        :embed2 => "MyText",
        :embed3 => "MyText",
        :embed4 => "MyText",
        :p1desescription => "P1desescription",
        :p2description => "P2description",
        :p3description => "P3description",
        :p4description => "P4description",
        :category_id => category.id,
        :author_id => author.id        
      )
    ])
  end

  it "renders a list of articles" do
    render
    assert_select "h3", :text => "Title".to_s, :count => 2
  end
end
