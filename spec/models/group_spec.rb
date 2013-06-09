# == Schema Information
#
# Table name: groups
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Group do
  describe '.create' do
    it 'is able to create a new group' do
      group = Group.create(:name => 'Group 1', :description => 'This is group 1')
      expect(group.present?).to be true
    end
  end
end
