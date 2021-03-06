require 'spec_helper'
require 'features/shared/login_helper'
include LoginHelper

describe 'Contest' do
  describe 'GET /contests/new' do

    it 'allows logged in user to see new contest form' do
      user = FactoryGirl.create(:user0)
      login_to_system(user)
      click_link('New contest')
      page.should have_button('Create contest')
    end
  end
end