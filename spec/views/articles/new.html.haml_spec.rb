require 'rails_helper'

RSpec.describe "articles/new", :type => :view do
  before(:each) do
    assign(:article, Article.new(
      :title => "MyString",
      :text1 => "MyText",
      :text2 => "MyText",
      :text3 => "MyText",
      :text4 => "MyText",
      :embed1 => "MyText",
      :embed2 => "MyText",
      :embed3 => "MyText",
      :embed4 => "MyText",
      :p1desescription => "MyString",
      :p2description => "MyString",
      :p3description => "MyString",
      :p4description => "MyString"
    ))
  end

  it "renders new article form" do
    render

    assert_select "form[action=?][method=?]", articles_path, "post" do

      assert_select "input#article_title[name=?]", "article[title]"

      assert_select "textarea#article_text1[name=?]", "article[text1]"

      assert_select "textarea#article_text2[name=?]", "article[text2]"

      assert_select "textarea#article_text3[name=?]", "article[text3]"

      assert_select "textarea#article_text4[name=?]", "article[text4]"

      assert_select "textarea#article_embed1[name=?]", "article[embed1]"

      assert_select "textarea#article_embed2[name=?]", "article[embed2]"

      assert_select "textarea#article_embed3[name=?]", "article[embed3]"

      assert_select "textarea#article_embed4[name=?]", "article[embed4]"

      assert_select "input#article_p1desescription[name=?]", "article[p1desescription]"

      assert_select "input#article_p2description[name=?]", "article[p2description]"

      assert_select "input#article_p3description[name=?]", "article[p3description]"

      assert_select "input#article_p4description[name=?]", "article[p4description]"
    end
  end
end
