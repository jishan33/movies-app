def user_sign_up
    email = 'test-user1@restaurant.com'
    password = 'password'

    # Capybara instructions
    visit root_path
    click_on 'Sign up' 
    fill_in 'Email', with: email
    fill_in 'Password', with: password
    fill_in 'Password confirmation', with: password
    click_on 'Sign up'
end