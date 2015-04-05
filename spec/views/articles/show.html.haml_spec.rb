require 'rails_helper'

RSpec.describe "articles/show", :type => :view do
  let(:valid_attributes) { FactoryGirl.build(:article).attributes.symbolize_keys }
  before(:each) do
   article = Article.create! valid_attributes
  end

  it "renders attributes" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/P1desescription/)
    expect(rendered).to match(/P2description/)
    expect(rendered).to match(/P3description/)
    expect(rendered).to match(/P4description/)
  end
end
