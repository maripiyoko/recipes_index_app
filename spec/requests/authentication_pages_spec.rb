require 'rails_helper'

RSpec.describe "AuthenticationPages", :type => :request do
  subject { page }

  describe "signin page" do
    before { visit signin_path }

    it { should have_content('Sign in') }
    it { should have_title('Sign in') }

    describe "with invalid information" do
      before { click_button "Sign in" }

      it { should have_content('Sign in') }
      it { should have_selector('div.alert.alert-danger', text: 'Invalid') }

      describe "after visiting another page" do
        before { click_link "Home" }
        it { should_not have_selector('div.alert.alert-danger', text: 'Invalid') }
      end
    end

  end
end
