def create_account(email: 'dariusdunkey@gmail.com', password_confirmation: 'downrightdarius', username: 'Dunkey')
  visit '/sign-up'
  fill_in :email, with: email
  fill_in(:password, with: 'downrightdarius')
  fill_in(:password_confirmation, with: 'downrightdarius')
  fill_in(:name, with: 'Darius Dunkey')
  fill_in(:username, with: 'Dunkey')
  click_button 'Create account'
end
