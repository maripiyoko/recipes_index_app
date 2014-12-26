require 'rails_helper'

RSpec.describe "StaticPages", :type => :request do

  let(:base_title) { 'Recipes Index App' }

  describe "Home page" do
    before do
      visit static_pages_home_path
    end

    it "works! (now write some real specs)" do
      get static_pages_home_path
      expect(response).to have_http_status(200)
    end

    it "should have the app name" do
      expect(page).to have_content('Home')
    end

    it "should have the right title" do
      expect(page).to have_title("#{base_title}")
    end

    it "should not have a custom page title" do
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do
    before do
      visit static_pages_help_path
    end
    it "should have the content Help" do
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do
    before do
      visit static_pages_about_path
    end
    it "shuld have the content About Us" do
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
      expect(page).to have_title("#{base_title} | About Us")
    end
  end

  describe "Contact page" do
    before do
      visit static_pages_contact_path
    end
    it "should have the right title" do
      expect(page).to have_title("#{base_title} | Contact Us")
    end
  end
end
