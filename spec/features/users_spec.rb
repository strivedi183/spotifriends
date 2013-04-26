require 'spec_helper'
require 'features/shared/login_helper'
include LoginHelper

describe 'User' do
  describe 'GET /users/show' do
    let(:user) {FactoryGirl.create(:user0)}

    it 'displays a page with the users preferences and groups' do
      login_to_system(user)
      visit user_path(user)
      page.should have_link('Update settings')
    end
  end
end