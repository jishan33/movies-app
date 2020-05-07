require 'rails_helper'
require 'support/controller_helpers'
require 'features/user_sign_up_helper'

RSpec.feature "User sign up" do
  scenario 'they see the root homepage' do
    user_sign_up

    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end
end

# As a User
# When I visit the home page
# And I click "Sign up"
# And I fill in email, password and password confirmation
# Then I should see 'Welcome! You have signed up successfully.' on the page