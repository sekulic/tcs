require 'rails_helper'

RSpec.describe "ContactForms", :type => :request, :js => true do
  describe "GET /contact" do
    it "sends mail to admin" do
      visit contact_path
      within(".form-horizontal") do
      fill_in 'Email', :with => 'user@example.com'
      fill_in 'Question', :with => 'Some question'
      click_button 'Send'
      end
      expect(page).to have_content 'We will read and respond to your question.'  
    end  
  end
end
