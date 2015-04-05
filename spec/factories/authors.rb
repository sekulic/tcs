FactoryGirl.define do
  factory :author do
    first_name "MyString"
    last_name "MyString"
    about "MyText"
    link_profile "MyText"
    photo { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'files', 'eu.jpg'), "image/jpeg") } 
  end

end
