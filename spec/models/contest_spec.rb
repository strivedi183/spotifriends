# == Schema Information
#
# Table name: contests
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  start_date  :date
#  start_time  :time             default(2000-01-01 12:00:00 UTC)
#  end_date    :date
#  end_time    :time             default(2000-01-01 20:00:00 UTC)
#  group_id    :integer
#  admin_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Contest do
  describe '.create' do
    it 'needs an admin_id to exist' do
      contest = Contest.create(:name => 'Poop')
      expect(contest.id).to be nil
    end

    it 'creates an instance of the contest' do
      contest = FactoryGirl.create(:contest)
      expect(contest.present?).to be true
    end

  end
end
