require 'rails_helper'
require 'support/controller_helpers'
require 'features/user_sign_up_helper'

RSpec.feature "User log in" do
  scenario 'they log in on homepage' do
    user_sign_up
    click_on 'Login' 
    fill_in 'Email', with: email
    fill_in 'Password', with: password
    click_on 'Log in'
    expect(page).to have_content 'Welcome to Movie lovers club!'
  end
end

# As a User
# When I visit the home page
# And I click "Login"
# And I fill in email, password
# And I click "Log in"
# Then I should see 'Welcome to Movie lovers club!' on the page