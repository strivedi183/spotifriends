require 'spec_helper'

describe Group do
  describe '.create' do
    it 'is able to create a new group' do
      group = Group.create(:name => 'Group 1', :description => 'This is group 1')
      expect(group.present?).to be true
    end
  end
end