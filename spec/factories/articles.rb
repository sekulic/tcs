FactoryGirl.define do
  factory :article do
    title "MyString"
    text1 "MyText"
    description "Some description"
    photo1 { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'files', 'eu.jpg'), "image/jpeg") }        
    p1desescription "MyString"
    category_id 1
    author_id 1   
  end

end
