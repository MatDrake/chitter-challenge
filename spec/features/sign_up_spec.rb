feature 'Signing up' do
  scenario 'can sign up with a unqiue account' do
    visit '/sign-up'
    fill_in(:email, with: 'dariusdunkey@gmail.com')
    fill_in(:password, with: 'downrightdarius')
    fill_in(:name, with: 'Darius Dunkey')
    fill_in(:username, with: 'Dunkey')
    click_button 'Create account'

    user = User.first
    expect(user.email).to include 'dariusdunkey@gmail.com'
    expect(user.password).to include 'downrightdarius'
    expect(user.name).to include 'Darius Dunkey'
    expect(user.username).to include 'Dunkey'
  end
end
