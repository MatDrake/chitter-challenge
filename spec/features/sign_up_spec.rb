feature 'Signing up' do
  scenario 'can sign up with an account' do
    expect {create_account}.to change(User, :count).by 1
  end

  scenario "can't sign up when password and confirmation don't match" do
    def incorrect_signup
      visit '/sign-up'
      fill_in(:email, with: 'dariusdunkey@gmail.com')
      fill_in(:password, with: 'downrightdarius')
      fill_in(:password_confirmation, with: 'uprightdarius')
      fill_in(:name, with: 'Darius Dunkey')
      fill_in(:username, with: 'Dunkey')
      click_button 'Create account'
    end

    expect{incorrect_signup}.not_to change(User, :count)
  end
end
