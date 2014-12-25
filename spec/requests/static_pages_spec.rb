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

    it "should have the right title" do
      visit static_pages_home_path
      expect(page).to have_title('Recipes Index App | Home')
    end
  end

  describe "Help page" do
    it "should have the content Help" do
      visit static_pages_help_path
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
      visit static_pages_help_path
      expect(page).to have_title('Recipes Index App | Help')
    end
  end

  describe "About page" do
    it "shuld have the content About Us" do
      visit static_pages_about_path
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
      visit static_pages_about_path
      expect(page).to have_title('Recipes Index App | About Us')
    end
  end
end
