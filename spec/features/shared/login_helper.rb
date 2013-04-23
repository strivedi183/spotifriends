module LoginHelper
  def login_to_system(user)
    visit root_path
    click_link('Beta login')
    fill_in('Email', :with => user.email)
    fill_in('Password', :with => user.password)
    click_button('Login to Spotifriends')
  end
end
