require 'rails_helper'

RSpec.describe "StaticPages", :type => :request do
  describe "Home page" do
    it "works! (now write some real specs)" do
      get static_pages_home_path
      expect(response).to have_http_status(200)
    end

    it "should have the app name" do
      visit static_pages_home_path
      expect(page).to have_content('Recipes Index App')
    end
  end
end
