def create_account
  visit '/sign-up'
  fill_in(:email, with: 'dariusdunkey@gmail.com')
  fill_in(:password, with: 'downrightdarius')
  fill_in(:password_confirmation, with: 'downrightdarius')
  fill_in(:name, with: 'Darius Dunkey')
  fill_in(:username, with: 'Dunkey')
  click_button 'Create account'
end
