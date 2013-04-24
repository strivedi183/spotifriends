require 'spec_helper'

describe 'Request' do
  describe 'GET /requests/new' do
    it 'Lets user enter an email for beta announcements' do
      visit root_path
      click_link('Request account')
      fill_in('request_email', :with => 'tony.contreras@gmail.com')
      click_button('Request account')
      page.should have_text('Thank you.')
    end
  end
end
