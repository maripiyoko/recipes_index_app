require 'rails_helper'

RSpec.describe "UserPages", :type => :request do
  let(:base_title) { 'Recipes Index App' }
  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_content('Sign up') }
    it { should have_title("#{base_title} | Sign up") }
  end

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_content(user.name) }
    it { should have_title("#{base_title} | #{user.name}") }
  end
end
