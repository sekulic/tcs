require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ArticlesHelper. For example:
#
# describe ArticlesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ApplicationHelper, :type => :helper do
   describe "full title method" do
     it "provides full title if page title provided" do
       expect(helper.full_title("page title")).to eq("outstanding understanding | page title")
     end
     it "provides default title if page title is not provided" do
       expect(helper.full_title("")).to eq("outstanding understanding")
     end     
   end
end
