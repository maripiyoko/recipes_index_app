require 'rails_helper'

RSpec.describe "UserPages", :type => :request do
  let(:base_title) { 'Recipes Index App' }
  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_content('Sign up') }
    it { should have_title("#{base_title} | Sign up") }

  end
end
